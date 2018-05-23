/*
 * Copyright 2017 Hyperkernel Authors
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "PyEmitter.hh"
#include "PyLLVMEmitter.hh"
#include "llvm/IR/Operator.h"

#include <sstream>

using kwargs_t = llvm::SmallVector<std::tuple<std::string, std::string>, 5>;
using args_t = llvm::SmallVector<std::string, 8>;

template <typename T> std::string print(const T *val)
{
    std::string res;
    llvm::raw_string_ostream stream{res};
    val->print(stream);
    return stream.str();
}

static std::string quote(const std::string &s)
{
    return "'" + s + "'";
}

static std::string nameType(const llvm::Value *val)
{
    return quote(print(val->getType()));
}

static std::string getPrintingName(const llvm::Value &val, bool strip, const llvm::Module &mod)
{
    std::string res;
    llvm::raw_string_ostream stream{res};
    val.printAsOperand(stream, /* PrintType = */ false, &mod);
    stream.str();

    /* Really hacky way to remove characters that can't be used as function names in pyton */
    if (strip && res.length() > 0 && (res[0] == '%' || res[0] == '@')) {
        res = res.substr(1);
    }
    if (res.length() == 0) {
        llvm::report_fatal_error("Printing name has length zero");
    }

    // . is not valid in python identifier
    std::replace(res.begin(), res.end(), '.', '_');

    /* - is not valid */
    std::replace(res.begin(), res.end(), '-', '_');

    return res;
}

class PyInstVisitor : public llvm::InstVisitor<PyInstVisitor>
{
  private:
    PyEmitter &emitter_;
    llvm::Module &module_;

  public:
    PyInstVisitor(PyEmitter &emitter, llvm::Module &module) : emitter_(emitter), module_(module)
    {
    }

    template <typename T> void genPyCallFromInstruction(bool hasReturn, const std::string &fname, T &i, kwargs_t kwargs = {})
    {
        args_t args;
        args.push_back(nameType(&i));
        for (ssize_t j = 0; j < i.getNumOperands(); j++) {
            args.push_back('(' + nameType(i.getOperand(j)) + ", " + get(i.getOperand(j)) + ")");
        }

        auto s = genPyCall(fname, args, kwargs);

        if (hasReturn) {
            emitter_.line("blk.add_equal(" + get(&i) + ", " + s + ", " + quote(print(&i.getDebugLoc())) + ")");
        } else {
            emitter_.line("blk.add_event(" + s + ", " + quote(print(&i.getDebugLoc()))  + ")");
        }
    }

    std::string genPyCall(std::string fname, const args_t &args,
                          const kwargs_t &kwargs = {})
    {
        /* these are  python keyword */
        if (fname == "and") {
            fname = "and_";
        } else if (fname == "or") {
            fname = "or_";
        }

        args_t ctx = {};
        ctx.insert(ctx.end(), args.begin(), args.end());

        return _genPyCall("prover.ops." + fname, ctx, kwargs);
    }

    std::string _genPyCall(const std::string &fname, const args_t &args,
                           const kwargs_t &kwargs)
    {
        std::ostringstream call;
        call << fname << "(";
        for (const auto &a : args)
            call << a << ",";
        for (const auto &a : kwargs)
            call << std::get<0>(a) << "=" << std::get<1>(a) << ",";
        call << ")";
        return call.str();
    }

    std::string name(const llvm::Value *val)
    {
        return getPrintingName(*val, false, this->module_);
    }

    std::string get(const llvm::Value *val)
    {
        if (const llvm::Instruction *i = llvm::dyn_cast<llvm::Instruction>(val)) {
            return quote(name(i));
        } else if (const llvm::Constant *c = llvm::dyn_cast<llvm::Constant>(val)) {
            return this->visitConstant(c);
        } else if (const llvm::Argument *a = llvm::dyn_cast<llvm::Argument>(val)) {
            return quote(name(a));
        } else if (const llvm::BasicBlock *bb = llvm::dyn_cast<llvm::BasicBlock>(val)) {
            return quote("bb_" + getPrintingName(*bb, true, this->module_));
        }
        llvm::report_fatal_error("Unhandled value");
    }

    std::string visitConstant(const llvm::Constant *c)
    {
        if (auto ci = llvm::dyn_cast<llvm::ConstantInt>(c)) {
            return visitConstantInt(*ci);
        } else if (auto cf = llvm::dyn_cast<llvm::ConstantFP>(c)) {
            return visitConstantFP(*cf);
        } else if (auto ce = llvm::dyn_cast<llvm::ConstantExpr>(c)) {
            return visitConstantExpr(ce);
        } else if (auto undef = llvm::dyn_cast<llvm::UndefValue>(c)) {
            return genPyCall("undef", {nameType(undef)});
        } else if (auto null = llvm::dyn_cast<llvm::ConstantPointerNull>(c)) {
            return genPyCall("constant_pointer_null", {nameType(null)});
        } else if (auto gv = llvm::dyn_cast<llvm::GlobalValue>(c)) {
            return genPyCall("global_value", {nameType(gv), quote(name(gv))});
        } else if (auto ca = llvm::dyn_cast<llvm::ConstantDataArray>(c)) {
            return genPyCall("constant_data_array", {nameType(ca), quote(name(ca))});
        } else if (auto ca = llvm::dyn_cast<llvm::ConstantArray>(c)) {
            return genPyCall("constant_array", {nameType(ca), quote(name(ca))});
        } else if (auto ca = llvm::dyn_cast<llvm::ConstantAggregateZero>(c)) {
            return genPyCall("constant_aggregate_zero", {nameType(ca), quote(name(ca))});
        } else {
            return genPyCall("unknown", {});
        }
    }

    std::string visitConstantInt(const llvm::ConstantInt &c)
    {
        return genPyCall("constant_int",
                         {c.getValue().toString(10, false)});
    }

    std::string visitConstantFP(const llvm::ConstantFP &cf)
    {
        return genPyCall("constant_double",
                         {quote(print(&cf))});
    }

    std::string visitConstantExpr(const llvm::ConstantExpr *e)
    {
        std::string opstring;
        args_t args;
        args.push_back(nameType(e));
        for (ssize_t i = 0; i < e->getNumOperands(); i++) {
            args.push_back("(" + nameType(e->getOperand(i)) + ", " + get(e->getOperand(i)) + ")");
        }

        opstring = e->getOpcodeName();

        if (opstring == "icmp") {
            switch (e->getPredicate()) {
            case llvm::CmpInst::Predicate::ICMP_EQ:
                opstring = "eq";
                break;
            case llvm::CmpInst::Predicate::ICMP_NE:
                opstring = "ne";
                break;
            case llvm::CmpInst::Predicate::ICMP_SLT:
                opstring = "slt";
                break;
            case llvm::CmpInst::Predicate::ICMP_SLE:
                opstring = "sle";
                break;
            case llvm::CmpInst::Predicate::ICMP_SGT:
                opstring = "sgt";
                break;
            case llvm::CmpInst::Predicate::ICMP_SGE:
                opstring = "sge";
                break;
            case llvm::CmpInst::Predicate::ICMP_ULT:
                opstring = "ult";
                break;
            case llvm::CmpInst::Predicate::ICMP_ULE:
                opstring = "ule";
                break;
            case llvm::CmpInst::Predicate::ICMP_UGT:
                opstring = "ugt";
                break;
            case llvm::CmpInst::Predicate::ICMP_UGE:
                opstring = "uge";
                break;
            default:
                llvm::report_fatal_error("Unknown icmp predicate");
            }
        }

        return genPyCall(opstring, args);
    }

    void visitReturnInst(const llvm::ReturnInst &i)
    {
        switch (i.getNumOperands()) {
        case 0:
            emitter_.line("blk.set_return(True, " + quote(print(&i.getDebugLoc())) + ")");
            break;
        case 1:
            emitter_.line("blk.set_return(" + get(i.getOperand(0)) + ", " + quote(print(&i.getDebugLoc()))  + ")");
            break;
        default:
            llvm::report_fatal_error(">= 2 return operands");
        }
    }

    void visitBinaryOperator(const llvm::BinaryOperator &i)
    {
        std::string opstring, optype, op1, op2, dst;

        dst = get(&i);
        optype = nameType(&i);
        op1 = "(" + nameType(i.getOperand(0)) + ", " + get(i.getOperand(0)) + ")";
        op2 = "(" + nameType(i.getOperand(1)) + ", " + get(i.getOperand(1)) + ")";

        opstring = i.getOpcodeName();

        kwargs_t kwargs;

        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall(opstring, { optype, op1, op2, }, kwargs) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitICmpInst(const llvm::ICmpInst &i)
    {
        std::string opstring, optype, op1, op2, dst;

        dst = get(&i);
        optype = nameType(&i);
        op1 = "(" + nameType(i.getOperand(0)) + ", " + get(i.getOperand(0)) + ")";
        op2 = "(" + nameType(i.getOperand(1)) + ", " + get(i.getOperand(1)) + ")";

        switch (i.getPredicate()) {
        case llvm::CmpInst::Predicate::ICMP_EQ:
            opstring = "eq";
            break;
        case llvm::CmpInst::Predicate::ICMP_NE:
            opstring = "ne";
            break;
        case llvm::CmpInst::Predicate::ICMP_SLT:
            opstring = "slt";
            break;
        case llvm::CmpInst::Predicate::ICMP_SLE:
            opstring = "sle";
            break;
        case llvm::CmpInst::Predicate::ICMP_SGT:
            opstring = "sgt";
            break;
        case llvm::CmpInst::Predicate::ICMP_SGE:
            opstring = "sge";
            break;
        case llvm::CmpInst::Predicate::ICMP_ULT:
            opstring = "ult";
            break;
        case llvm::CmpInst::Predicate::ICMP_ULE:
            opstring = "ule";
            break;
        case llvm::CmpInst::Predicate::ICMP_UGT:
            opstring = "ugt";
            break;
        case llvm::CmpInst::Predicate::ICMP_UGE:
            opstring = "uge";
            break;
        default:
            llvm::report_fatal_error("Unhandled predicate");
        }

        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall(opstring, { optype, op1, op2, }) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitSelectInst(const llvm::SelectInst &i)
    {
        std::string dst, type, cond, trueval, falseval;
        dst = get(&i);
        type = nameType(&i);
        cond = "(" + nameType(i.getCondition()) + ", " + get(i.getCondition()) + ")";
        trueval = "(" + nameType(i.getTrueValue()) + ", " + get(i.getTrueValue()) + ")";
        falseval = "(" + nameType(i.getFalseValue()) + ", " + get(i.getFalseValue()) + ")";

        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall("select", { type, cond, trueval, falseval }) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitBranchInst(const llvm::BranchInst &i)
    {
        auto curr_bb = "bb_" + name(i.getParent()).substr(1);
        if (i.isConditional()) {

            auto cond = get(i.getCondition());
            auto true_target =
                "bb_" + getPrintingName(*i.getSuccessor(0), true, this->module_);
            auto false_target =
                "bb_" + getPrintingName(*i.getSuccessor(1), true, this->module_);

            emitter_.line("func.add_cond_edge(" + quote(curr_bb) + ", " + cond + ", " +
                            quote(true_target) + ", " + quote(false_target) + ", " + quote(print(&i.getDebugLoc()))  + ")");
        } else {
            auto bb_target = "bb_" + getPrintingName(*i.getSuccessor(0), true, this->module_);
            emitter_.line("func.add_edge(" + quote(curr_bb) + ", " + quote(bb_target) + ", " + quote(print(&i.getDebugLoc()))  + ")");
        }
    }

    void visitPHINode(const llvm::PHINode &i)
    {
        std::ostringstream phimap;
        std::string dst = get(&i);

        phimap << "{";
        for (unsigned j = 0; j < i.getNumIncomingValues(); ++j) {
            auto bb = i.getIncomingBlock(j);
            auto val = i.getIncomingValue(j);
            phimap << quote("bb_" + name(bb).substr(1)) + " : " + get(val) + ",";
        }
        phimap << "}";

        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall("phi", { phimap.str() }) + ", " + quote(print(&i.getDebugLoc()))  + ")");
    }

    void visitTruncInst(const llvm::TruncInst &i)
    {
        std::string operand, dst;
        dst = get(&i);
        operand = get(i.getOperand(0));
        genPyCallFromInstruction(true, "trunc", i);
    }

    void visitZExtInst(const llvm::ZExtInst &i)
    {
        std::string dst, operand;
        dst = get(&i);
        operand = get(i.getOperand(0));
        genPyCallFromInstruction(true, "zext", i);
    }

    void visitSExtInst(const llvm::SExtInst &i)
    {
        std::string dst, operand;
        dst = get(&i);
        operand = get(i.getOperand(0));
        genPyCallFromInstruction(true, "sext", i);
    }

    void visitLoadInst(const llvm::LoadInst &i)
    {
        genPyCallFromInstruction(true, "load", i);
    }

    void visitStoreInst(const llvm::StoreInst &i)
    {
        genPyCallFromInstruction(false, "store", i);
    }

    void visitAllocaInst(const llvm::AllocaInst &i)
    {
        genPyCallFromInstruction(true, "alloca", i);
    }

    void visitPtrToIntInst(const llvm::PtrToIntInst &i)
    {
        genPyCallFromInstruction(true, "ptr_to_int", i);
    }

    void visitIntToPtrInst(const llvm::IntToPtrInst &i)
    {
        genPyCallFromInstruction(true, "int_to_ptr", i);
    }

    void visitBitCastInst(const llvm::BitCastInst &i)
    {
        genPyCallFromInstruction(true, "bitcast", i);
    }

    void visitGetElementPtrInst(const llvm::GetElementPtrInst &i)
    {
        kwargs_t kwargs;
        genPyCallFromInstruction(true, "get_element_ptr", i, kwargs);
    }

    void visitSwitchInst(const llvm::SwitchInst &i)
    {
        args_t args;
        auto curr_bb = "(\"" + name(i.getParent()) + "\")";

        args.push_back(get(i.getCondition()));
        args.push_back(nameType(i.getCondition()));
        args.push_back("lambda: bb_" + getPrintingName(*i.getDefaultDest(), true, this->module_) +
                       curr_bb);

        for (const auto &c : i.cases()) {
            auto arg = "(" + get(c.getCaseValue()) + ",";
            arg += nameType(c.getCaseValue());
            arg += ", lambda: bb_" + getPrintingName(*c.getCaseSuccessor(), true, this->module_);
            arg += curr_bb + ")";
            args.push_back(arg);
        }

        emitter_.line("return " + genPyCall("switch", args));
    }

    void visitCallInst(const llvm::CallInst &i)
    {
        bool has_return = i.getType()->getTypeID() != llvm::Type::TypeID::VoidTyID;
        genPyCallFromInstruction(has_return, "call", i);
    }

    void visitFCmpInst(const llvm::FCmpInst &i)
    {
        std::string opstring, optype, op1, op2, dst;

        dst = get(&i);
        optype = nameType(&i);
        op1 = "(" + nameType(i.getOperand(0)) + ", " + get(i.getOperand(0)) + ")";
        op2 = "(" + nameType(i.getOperand(1)) + ", " + get(i.getOperand(1)) + ")";

        switch (i.getPredicate()) {
            case llvm::CmpInst::Predicate::FCMP_UGT:
            case llvm::CmpInst::Predicate::FCMP_OGT:
                opstring = "gt";
                break;
            case llvm::CmpInst::Predicate::FCMP_UGE:
            case llvm::CmpInst::Predicate::FCMP_OGE:
                opstring = "ge";
                break;
            case llvm::CmpInst::Predicate::FCMP_ULT:
            case llvm::CmpInst::Predicate::FCMP_OLT:
                opstring = "lt";
                break;
            default:
                llvm::report_fatal_error("Unhandled predicate");
        }

        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall(opstring, { optype, op1, op2, }) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitExtractValueInst(const llvm::ExtractValueInst &i)
    {
        std::string dst = get(&i);
        std::string target = "(" + nameType(i.getAggregateOperand()) + ", " + get(i.getAggregateOperand()) + ")";

        std::ostringstream args;
        auto indices = i.getIndices().data();
        for (unsigned j = 0; j < i.getNumIndices(); ++j) {
            if (j > 0) args << ", ";
            args << indices[j];
        }
        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall("extract_value", { target, args.str() }) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitInsertValueInst(const llvm::InsertValueInst &i)
    {
        std::string dst = get(&i);
        std::string target = "(" + nameType(i.getAggregateOperand()) + ", " + get(i.getAggregateOperand()) + ")";
        std::string val = "(" + nameType(i.getInsertedValueOperand()) + ", " + get(i.getInsertedValueOperand()) + ")";

        std::ostringstream args;
        auto indices = i.getIndices().data();
        for (unsigned j = 0; j < i.getNumIndices(); ++j) {
            if (j > 0) args << ", ";
            args << indices[j];
        }
        emitter_.line("blk.add_equal(" + dst + ", " + genPyCall("insert_value", { target, args.str(), val }) + ", " + quote(print(&i.getDebugLoc())) + ")");
    }

    void visitInstruction(const llvm::Instruction &i)
    {
        llvm::report_fatal_error("Unhandled instruction class");
    }

    void visit(llvm::Instruction &i)
    {
        if (llvm::dyn_cast<llvm::DbgDeclareInst>(&i) || llvm::dyn_cast<llvm::DbgValueInst>(&i) ||
            llvm::dyn_cast<llvm::DbgInfoIntrinsic>(&i)) {
            return;
        }

        llvm::InstVisitor<PyInstVisitor>::visit(i);
    }
};

void PyLLVMEmitter::emitBasicBlock(llvm::BasicBlock &bb)
{
    this->line("blk = prover.Block(\"bb_" + getPrintingName(bb, true, *module_) + "\")");
    this->line("func.add_block(blk)");
    PyInstVisitor pv{*this, *module_};
    for (auto &instr : bb.getInstList()) {
        pv.visit(instr);
    }
    this->line();
}

void PyLLVMEmitter::emitStructType(const llvm::StructType &type)
{
    std::string res;
    llvm::raw_string_ostream stream{res};
    this->line("new_type_name = " + quote(type.getName()));
    stream << "new_type_struct = ";
    stream << "(";
    for (const auto &element : type.elements()) {
        stream << "'";
        element->print(stream, false);
        stream << "',";
    }
    stream << ")";
    this->line(stream.str());
    this->line("module.add_type(new_type_name, new_type_struct)");
    this->line();
}

void PyLLVMEmitter::emitGlobalVariable(const llvm::GlobalVariable &global)
{
    std::string res;
    llvm::raw_string_ostream stream{res};

    std::string name = "(" + quote(getPrintingName(global, false, *module_)) + ", " + nameType(&global) + ")";
    std::string val = "None";

    PyInstVisitor pv{*this, *module_};
    if (global.hasInitializer()) {
        val = pv.visitConstant(global.getInitializer());
    }
    this->line("var_name = " + name);
    this->line("var_value = " + val);
    this->line("module.add_global_variable(var_name, var_value)");
    this->line();
}

void PyLLVMEmitter::emitFunction(llvm::Function &function)
{
    if (function.isDeclaration()) {
        return;
    }

    const std::string function_name = getPrintingName(function, true, *module_);

    this->line("func = prover.Function(\"" + function_name + "\")");
    this->line("module.add_function(func)");

    int i = 0;
    for (auto &arg : function.args()) {
        this->line("func.add_arg((" + nameType(&arg) + ", " + quote(getPrintingName(arg, false, *module_)) + "))");
        ++i;
    }
    this->line("func.set_entry(\"bb_" + getPrintingName(function.getEntryBlock(), true, *module_) + "\")");

    this->line();

    for (auto &bb : function.getBasicBlockList()) {
        this->emitBasicBlock(bb);
    }

    this->line();
}

void PyLLVMEmitter::emitModule(void)
{
    this->line("import prover");
    this->line("import prover.ops");
    this->genBlock("def get(module)", [&]() {
        for (const auto &type : module_->getIdentifiedStructTypes())
            this->emitStructType(*type);
        for (const auto &global : module_->getGlobalList())
            this->emitGlobalVariable(global);
        for (auto &function : module_->getFunctionList()) {
            this->emitFunction(function);
        }
    });
}
