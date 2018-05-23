import re
from prover.cfg import ControlFlowGraph

class Block:
    def __init__(self, name):
        self.name = name
        self.insts = []
        self.ret = False

    def add_event(self, exp, dbg_loc):
        self.insts.append((exp, dbg_loc))

    def add_equal(self, sym, exp, dbg_loc):
        self.insts.append((sym, exp, dbg_loc))

    def set_return(self, exp, dbg_loc):
        self.ret = (exp, dbg_loc)

class Function:
    def __init__(self, name):
        self.name = name
        self.args = []
        self.blocks = {}
        self.entry = None
        self.edges = {}

    def add_arg(self, sym):
        self.args.append(sym)

    def add_block(self, blk):
        self.blocks[blk.name] = blk

    def set_entry(self, entry):
        self.entry = entry

    def add_cond_edge(self, from_blk, cond, true_blk, false_blk, dbg_loc):
        self.edges.setdefault(from_blk, [])
        self.edges[from_blk].append((cond, true_blk, false_blk, dbg_loc))

    def add_edge(self, from_blk, to_blk, dbg_loc):
        self.edges.setdefault(from_blk, [])
        self.edges[from_blk].append((to_blk, dbg_loc))

class Module:
    def __init__(self):
        self.funcs = {}
        self.types = {}
        self.types['i8'] = None

    def add_function(self, func):
        self.funcs[func.name] = func

    def add_type(self, type_name, type_struct):
        if type_name in self.types:
            return
        struct = []
        for ele in type_struct:
            rec = re.match( r"%(.*) = type { (.*) }", ele, re.M|re.I)
            if rec is not None:
                ele = rec.group(1)
            pointer = False
            if ele[-1] == "*":
                pointer = True
                ele = ele[:-1]
            if ele[0] == "%":
                ele = ele[1:]
            if pointer:
                struct.append(('ptr', ele))
            else:
                struct.append(ele)
        self.types[type_name] = tuple(struct)

    def get_obj_from_ptr(self, mem, ptr, idx):
        if ptr not in mem:
            mem[ptr] = {}
        if idx not in mem[ptr]:
            mem[ptr][idx] = ptr + "_" + str(idx)
        return mem[ptr][idx]

    def ptr_assign(self, mem, dst, src):
        if src not in mem:
            mem[src] = {}
        mem[dst] = mem[src]

    def build_cfg(self, func):

        if func not in self.funcs:
            return None
        func = self.funcs[func]

        cfg = ControlFlowGraph()
        cfg.var_info = {}
        cfg.edges = {}
        cfg.nodes = set()

        mem = {}

        for (t, sym) in func.args:
            cfg.var_info[sym] = {0: None, 'type': t, 'loc': None}

        first_edge = ('__start__', func.entry + "_s")
        cfg.edges[first_edge] = []

        if func.name in ["empty_Vec2d", "size_Vec2d", "empty_LineSegment2d", "size_LineSegment2d",
                         "GetProjection", "GetSmoothPoint", "RightBoundaryType", "RightNeighborWaypoint"]:
            (t0, sym0) = func.args[0]
            cfg.edges[first_edge].append(('cons', [((1, sym0, 0, '', 0), 'gt')]))

        for blk in sorted(func.blocks.values(), key=lambda b:int(b.name[3:])):
            for inst in blk.insts:
                if len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    cfg.var_info[sym] = {0: None, 'type': expr[1], 'loc': dbg_loc}

                    if expr[0] not in ['gt', 'lt', 'eq', 'ne', 'and', 'or']:
                        continue

                    (tx, x), (ty, y) = expr[2], expr[3]
                    _a, _x, _b, _y, _c = 0, '', 0, '', 0
                    if isinstance(x, str):
                        _a, _x = 1, x
                    else:
                        _c += x
                    if isinstance(y, str):
                        _b, _y = -1, y
                    else:
                        _c -= y #if y is not None else 0
                    if expr[0] == 'gt':
                        cfg.var_info[sym][0] = ('cons', [((_a, _x, _b, _y, _c), 'gt')])
                    elif expr[0] == 'lt':
                        cfg.var_info[sym][0] = ('cons', [((-_a, _x, -_b, _y, -_c), 'gt')])
                    elif expr[0] == 'eq':
                        cfg.var_info[sym][0] = ('cons', [((_a, _x, _b, _y, _c), 'eq')])
                    elif expr[0] == 'ne':
                        cfg.var_info[sym][0] = ('cons', [((_a, _x, _b, _y, _c), 'ne')])
                    elif expr[0] == 'or':
                        cfg.var_info[sym][0] = ('or', x, y)
                    elif expr[0] == 'and':
                        cfg.var_info[sym][0] = ('and', x, y)

        for blk in sorted(func.blocks.values(), key=lambda b:int(b.name[3:])):
            internal = (blk.name + "_s", blk.name + "_e")
            cur_node = blk.name + "_s"
            cur_inode = 0
            cfg.edges.setdefault(internal, [])

            for inst in blk.insts:
                if len(inst) == 2:
                    inst, dbg_loc = inst
                    if inst[0] == 'store':
                        (tx, x), (tp, p) = inst[2], inst[3]
                        dst = self.get_obj_from_ptr(mem, p, 0)
                        if isinstance(x, str):
                            cfg.edges[internal].append(('assign', dst, (1, x, 0, '', 0)))
                        else:
                            cfg.edges[internal].append(('assign', dst, (0, '', 0, '', x)))
                        cfg.check.setdefault(internal[1], [])
                        cfg.check[internal[1]].append(('buffer_overflow', p, dbg_loc))
                elif len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    if expr[0] == 'identity':
                        (tx, x) = expr[2]
                        cfg.edges[internal].append(('assign', sym, (1, x, 0, '', 0)))
                        self.ptr_assign(mem, sym, x)
                    elif expr[0] == 'phi':
                        for b, e in expr[1].items():
                            edge = (b + "_" + blk.name, blk.name + "_s")
                            cfg.edges.setdefault(edge, [])
                            if isinstance(e, str):
                                cfg.edges[edge].append(('assign', sym, (1, e, 0, '', 0)))
                            else:
                                cfg.edges[edge].append(('assign', sym, (0, '', 0, '', e)))
                    elif expr[0] == 'alloca':
                        tn, n = expr[2]
                        if isinstance(n, str):
                            cfg.var_info[sym][0] = ('array', n)
                            cfg.edges[internal].append(('cons', [((1, n, 0, '', 0), 'gt')]))
                        else:
                            cfg.var_info[sym][0] = ('array', n)
                        cfg.edges[internal].append(('cons', [((1, sym, 0, '', 0), 'gt')]))
                    elif expr[0] == 'add':
                        (tx, x), (ty, y) = expr[2], expr[3]
                        _a, _x, _b, _y, _c = 0, '', 0, '', 0
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x
                        if isinstance(y, str):
                            _b, _y = 1, y
                        else:
                            _c += y #if y is not None else 0
                        cfg.edges[internal].append(('assign', sym, (_a, _x, _b, _y, _c)))
                    elif expr[0] == 'sub':
                        (tx, x), (ty, y) = expr[2], expr[3]
                        _a, _x, _b, _y, _c = 0, '', 0, '', 0
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x #if x is not None else 0
                        if isinstance(y, str):
                            _b, _y = -1, y
                        else:
                            _c -= y
                        cfg.edges[internal].append(('assign', sym, (_a, _x, _b, _y, _c)))
                    elif expr[0] == 'shl':
                        (tx, x), (tn, n) = expr[2], expr[3]
                        if n == 32:
                            cfg.var_info[sym][0] = ('shl', x, n)
                    elif expr[0] == 'shr':
                        (tx, x), (tn, n) = expr[2], expr[3]
                        if n == 32 and cfg.var_info[x][0] is not None and \
                                cfg.var_info[x][0][0] == 'shl' and cfg.var_info[x][0][2] == 32:
                            x0 = cfg.var_info[x][0][1]
                            if isinstance(x0, str):
                                cfg.edges[internal].append(('assign', sym, (1, x0, 0, '', 0)))
                            else:
                                cfg.edges[internal].append(('assign', sym, (0, '', 0, '', x0)))
                    elif expr[0] == 'select':
                        (tc, cond), (tx, x), (ty, y) = expr[2], expr[3], expr[4]
                        new_n = blk.name + "_" + str(cur_inode)
                        cur_inode += 1
                        cfg.edges[(cur_node, new_n + "_s")] = cfg.edges.pop(internal)
                        true_conds = cfg.solve_cond(cond)
                        false_conds = cfg.solve_not_cond(cond)
                        e_num = 0
                        for c in true_conds:
                            edge = (new_n + "_s", new_n + "_true_" + str(e_num))
                            cfg.edges[edge] = [('cons', c)]
                            edge = (new_n + "_true_" + str(e_num), new_n + "_e")
                            if isinstance(x, str):
                                cfg.edges[edge] = [('assign', sym, (1, x, 0, '', 0))]
                            else:
                                cfg.edges[edge] = [('assign', sym, (0, '', 0, '', x))]
                            e_num += 1
                        e_num = 0
                        for c in false_conds:
                            edge = (new_n + "_s", new_n + "_false_" + str(e_num))
                            cfg.edges[edge] = [('cons', c)]
                            edge = (new_n + "_false_" + str(e_num), new_n + "_e")
                            if isinstance(y, str):
                                cfg.edges[edge] = [('assign', sym, (1, y, 0, '', 0))]
                            else:
                                cfg.edges[edge] = [('assign', sym, (0, '', 0, '', y))]
                            e_num += 1
                        cur_node = new_n + "_e"
                        internal = (cur_node, blk.name + "_e")
                        cfg.edges[internal] = []
                    elif expr[0] == 'get_ptr':
                        t, (tb, base) = expr[1], expr[2]
                        for tidx, idx in expr[3:]:
                            obj = self.get_obj_from_ptr(mem, base, idx)
                            if tb[-1] == '*':
                                tb = tb[:-1]
                            else:
                                if tb[0] == '%':
                                    tb = tb[1:]
                                if tb in ['struct.Vector_Vec2d', 'struct.Vector_LineSegment2d', 'struct.Vector_double',
                                          'struct.Vector_LaneBoundaryType', 'struct.Vector_int']:
                                    begin = self.get_obj_from_ptr(mem, base, 0)
                                    end = self.get_obj_from_ptr(mem, base, 1)
                                    cfg.edges[internal].append(('cons', [((1, begin, 0, '', 0), 'gt'), ((1, end, -1, begin, 0), 'ge')]))
                                    cfg.var_info.setdefault(begin, {})
                                    cfg.var_info[begin][0] = ('array_ptr', end)
                                tb = self.types[tb][idx]
                            base = obj
                        mem.setdefault(sym, {})
                        if sym in mem and 0 in mem[sym] and mem[sym][0] != base:
                            cfg.edges[internal].append(('assign', mem[sym][0], (1, base, 0, '', 0)))
                        else:
                            mem[sym][0] = base
                            cfg.edges[internal].append(('cons', [((1, sym, 0, '', 0), 'gt')]))
                    elif expr[0] == 'load':
                        (tp, p) = expr[2]
                        src = self.get_obj_from_ptr(mem, p, 0)
                        cfg.edges[internal].append(('assign', sym, (1, src, 0, '', 0)))
                        cfg.check.setdefault(internal[1], [])
                        cfg.check[internal[1]].append(('buffer_overflow', p, dbg_loc))
                    elif expr[0] == 'extract_value':
                        (t, src), idx = expr[1], expr[2]
                        src = self.get_obj_from_ptr(mem, src, idx)
                        cfg.edges[internal].append(('assign', sym, (1, src, 0, '', 0)))
                    elif expr[0] == 'insert_value':
                        pass
                    elif expr[0] == 'call':
                        ftype, fname = expr[1]
                        if fname[1].startswith("@empty_"):
                            vec_p = expr[3][1]
                            vec = self.get_obj_from_ptr(mem, vec_p, 0)
                            begin = self.get_obj_from_ptr(mem, vec, 0)
                            end = self.get_obj_from_ptr(mem, vec, 1)
                            cfg.edges[internal].append(('cons', [((1, begin, 0, '', 0), 'gt'), ((1, end, -1, begin, 0), 'ge')]))
                            cfg.var_info[sym][0] = ('cons', [((1, end, -1, begin, 0), 'eq')])
                        elif fname[1].startswith("@size"):
                            vec_p = expr[3][1]
                            vec = self.get_obj_from_ptr(mem, vec_p, 0)
                            begin = self.get_obj_from_ptr(mem, vec, 0)
                            end = self.get_obj_from_ptr(mem, vec, 1)
                            cfg.edges[internal].append(('cons', [((1, begin, 0, '', 0), 'gt'), ((1, end, -1, begin, 0), 'ge')]))
                            cfg.edges[internal].append(('assign', sym, (1, end, -1, begin, 0)))
                        elif fname[1] == "@malloc":
                            cfg.edges[internal].append(('cons', [((1, sym, 0, '', 0), 'gt')]))
                            cfg.var_info[sym][0] = ('array', expr[3][1])
                        elif fname[1] == "lower_bound_double":
                            begin = expr[3][1]
                            end = expr[4][1]
                            cfg.edges[internal].append(('cons', [((1, sym, -1, begin, 0), 'ge'), ((1, end, -1, sym, 0), 'ge')]))
                        elif fname[1].startswith("LaneWaypoint"):
                            cfg.edges[internal].append(('cons', [((1, sym, 0, '', 0), 'gt')]))
        for blk, edges in func.edges.items():
            for edge in edges:
                if len(edge) == 4:
                    cond, true_blk, false_blk, dbg_loc = edge
                    true_conds = cfg.solve_cond(cond)
                    false_conds = cfg.solve_not_cond(cond)
                    e_num = 0
                    for c in true_conds:
                        edge = (blk + "_e", blk + "_true_" + str(e_num))
                        cfg.edges[edge] = [('cons', c)]
                        edge = (blk + "_true_" + str(e_num), blk + "_" + true_blk)
                        cfg.edges[edge] = []
                        edge = (blk + "_" + true_blk, true_blk + "_s")
                        cfg.edges.setdefault(edge, [])
                        e_num += 1
                    e_num = 0
                    for c in false_conds:
                        edge = (blk + "_e", blk + "_false_" + str(e_num))
                        cfg.edges[edge] = [('cons', c)]
                        edge = (blk + "_false_" + str(e_num), blk + "_" + false_blk)
                        cfg.edges[edge] = []
                        edge = (blk + "_" + false_blk, false_blk + "_s")
                        cfg.edges.setdefault(edge, [])
                        e_num += 1
                else:
                    target, dbg_loc = edge
                    edge = (blk + "_e", blk + "_" + target)
                    cfg.edges[edge] = []
                    edge = (blk + "_" + target, target + "_s")
                    cfg.edges.setdefault(edge, [])
        edges = cfg.edges
        cfg.edges = {}
        for (s, t), e in edges.items():
            cfg.nodes.add(s)
            cfg.nodes.add(t)
            cfg.edges.setdefault(s, [])
            cfg.edges[s].append((t, e))
        cfg.inv_edges = {}
        for s, edges in cfg.edges.items():
            for t, edge in edges:
                cfg.inv_edges.setdefault(t, [])
                cfg.inv_edges[t].append((s, edge))
        cfg.nodes = list(cfg.nodes)
        cfg.vars = set(cfg.var_info.keys()) | set(mem.keys())
        for k, v in mem.items():
            cfg.vars = cfg.vars | set(v.values())
        cfg.vars = list(cfg.vars) + ["undef"]

        return cfg
