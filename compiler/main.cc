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
#include "PyLLVMEmitter.hh"
#include <ctime>

int main(int argc, char **argv)
{

    llvm::LLVMContext ctx;
    llvm::SMDiagnostic err;

    const std::string filename = (argc < 2) ? "-" : std::string{argv[1]};

    auto module = llvm::parseIRFile(filename, err, ctx);
    if (!module) {
        err.print("irpy", llvm::errs());
        return 3;
    }

    PyLLVMEmitter emitter{std::cout, module.get()};

    emitter.emitModule();

    return 0;
}
