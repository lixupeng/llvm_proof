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
        self.useful_fields = {}

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
            if ele[0] == "%":
                ele = ele[1:]
            struct.append(ele)
        self.types[type_name] = tuple(struct)
        self.useful_fields[type_name] = set()

    def build_child_objs(self, cfg, mem, t, var):
        constrains = []
        mem[var] = {}
        if t[-1] == '*':
            sub_t = t[:-1]
            sub_v = var + "_0"
            mem[var][0] = sub_v
            cfg.valid_range.append((var,))
            constrains += self.build_child_objs(cfg, mem, sub_t, sub_v)
        else:
            if t[0] == '{':
                struct = t[1:-1].split(",")
                for i, sub_t in enumerate(struct):
                    sub_v = var + "_" + str(i)
                    sub_t = struct[i]
                    mem[var][i] = sub_v
                    if i == 0:
                        constrains.append(([(1, var), (-1, sub_v)], 'eq'))
                    constrains += self.build_child_objs(cfg, mem, sub_t, sub_v)
            else:
                if t[0] == '%':
                    t = t[1:]
                if t in self.types:
                    for i, sub_t in enumerate(self.types[t]):
                        if not t.startswith('struct.Vector_') and i not in self.useful_fields[t]:
                            continue
                        sub_v = var + "_" + str(i)
                        mem[var][i] = sub_v
                        if i == 0:
                            constrains.append(([(1, var), (-1, sub_v)], 'eq'))
                        constrains += self.build_child_objs(cfg, mem, sub_t, sub_v)
                    if t in ['struct.Vector_Vec2d', 'struct.Vector_LineSegment2d', 'struct.Vector_double',
                             'struct.Vector_LaneBoundaryType', 'struct.Vector_int']:
                        begin = var + "_0"
                        end = var + "_1"
                        cfg.valid_range.append((begin, end))
                        constrains.append(([(1, begin)], 'gt'))
                        constrains.append(([(1, end), (-1, begin)], 'ge'))

        return constrains

    def obj_assign(self, cfg, mem, edge, t, dst, src):
        if src == 'undef':
            return []
        cfg.edges[edge].append(('assign', dst, [(1, src)]))
        if src not in mem:
            constrains = self.build_child_objs(cfg, mem, t, src)
            if len(constrains) > 0:
                cfg.edges[edge].append(('cons', constrains))
        if dst in mem:
            for i in mem[dst]:
                self.obj_assign(cfg, mem, edge, t, mem[dst][i], mem[src][i])
        else:
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

        first_edge = ('__start__', func.entry + "_s")
        cfg.edges[first_edge] = []

        for blk in func.blocks.values():
            for inst in blk.insts:
                if len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    if expr[0] == 'get_ptr':
                        t, (tb, base), idxs = expr[1], expr[2], expr[3:]
                        for tidx, idx in idxs:
                            if tb[-1] == '*':
                                tb = tb[:-1]
                            else:
                                if tb[0] == '%':
                                    tb = tb[1:]
                                if tb in self.types:
                                    self.useful_fields[tb].add(idx)
                                    tb = self.types[tb][idx]

        for (t, sym) in func.args:
            cfg.var_info[sym] = {0: None, 'type': t, 'loc': None}
            constrains = self.build_child_objs(cfg, mem, t, sym)
            cfg.edges[first_edge].append(('cons', constrains))


        if func.name in ["empty_Vec2d", "size_Vec2d", "empty_LineSegment2d", "size_LineSegment2d",
                         "empty_double", "size_double",
                         "GetProjection", "GetSmoothPoint", "RightBoundaryType", "RightNeighborWaypoint"]:
            (t0, sym0) = func.args[0]
            cfg.edges[first_edge].append(('cons', [([(1, sym0)], 'gt')]))
            cfg.valid_range.append((sym0,))

        if func.name == 'lower_bound_double':
            (tb, begin), (te, end) = func.args[0], func.args[1]
            cfg.valid_range.append((begin, end))

        for blk in sorted(func.blocks.values(), key=lambda b:int(b.name[3:])):
            for inst in blk.insts:
                if len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    if expr[0] == 'call':
                        cfg.var_info[sym] = {0: None, 'type': expr[2], 'loc': dbg_loc}
                        cfg.var_info[sym]['cons'] = self.build_child_objs(cfg, mem, expr[2], sym)
                    elif expr[0] in ['phi', 'alloca']:
                        cfg.var_info[sym] = {0: None, 'type': expr[1], 'loc': dbg_loc}
                        cfg.var_info[sym]['cons'] = self.build_child_objs(cfg, mem, expr[1], sym)
                    else:
                        cfg.var_info[sym] = {0: None, 'type': expr[1], 'loc': dbg_loc}

                    if expr[0] not in ['gt', 'ge', 'lt', 'le', 'eq', 'ne', 'and', 'or']:
                        continue

                    (tx, x), (ty, y) = expr[2], expr[3]
                    cons = [(1, x), (-1, y)]
                    if expr[0] == 'gt':
                        cfg.var_info[sym][0] = ('cons', [(cons, 'gt')])
                    elif expr[0] == 'ge':
                        cfg.var_info[sym][0] = ('cons', [(cons, 'ge')])
                    elif expr[0] == 'lt':
                        cfg.var_info[sym][0] = ('cons', [(cons, 'lt')])
                    elif expr[0] == 'le':
                        cfg.var_info[sym][0] = ('cons', [(cons, 'le')])
                    elif expr[0] == 'eq':
                        if tx[-1] == '*' and y == 0:
                            cfg.var_info[sym][0] = ('cons', [(cons, 'le')])
                        else:
                            cfg.var_info[sym][0] = ('cons', [(cons, 'eq')])
                    elif expr[0] == 'ne':
                        if tx[-1] == '*' and y == 0:
                            cfg.var_info[sym][0] = ('cons', [(cons, 'gt')])
                        else:
                         cfg.var_info[sym][0] = ('or', ('cons', [(cons, 'gt')]),
                                                 ('cons', [(cons, 'lt')]))
                    elif expr[0] == 'and':
                        cfg.var_info[sym][0] = ('and', x, y)
                    elif expr[0] == 'or':
                        cfg.var_info[sym][0] = ('or', x, y)

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
                        dst = mem[p][0]
                        cfg.edges[internal].append(('assign', dst, [(1, x)]))
                        cfg.check.setdefault(internal[1], [])
                        cfg.check[internal[1]].append(('buffer_overflow', (tp, p), dbg_loc))
                elif len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    if 'cons' in cfg.var_info[sym]:
                        cfg.edges[internal].append(('cons', cfg.var_info[sym]['cons']))
                    if expr[0] == 'identity':
                        (tx, x) = expr[2]
                        if isinstance(x, str):
                            self.obj_assign(cfg, mem, internal, expr[1], sym, x)
                        else:
                            cfg.edges[internal].append(('assign', sym, [(1, x)]))
                    elif expr[0] == 'phi':
                        t = expr[1]
                        for b, v in expr[2].items():
                            edge = (b + "_" + blk.name, blk.name + "_s")
                            cfg.edges.setdefault(edge, [])
                            if isinstance(v, str):
                                self.obj_assign(cfg, mem, edge, t, sym, v)
                            else:
                                cfg.edges[edge].append(('assign', sym, [(1, v)]))
                    elif expr[0] == 'alloca':
                        tn, n = expr[2]
                        cfg.valid_range.append((sym, ("+", n)))
                        cfg.edges[internal].append(('cons', [([(1, sym)], 'gt')]))
                        if isinstance(n, str):
                            cfg.edges[internal].append(('cons', [([(1, n)], 'gt')]))
                    elif expr[0] == 'add':
                        (tx, x), (ty, y) = expr[2], expr[3]
                        cfg.edges[internal].append(('assign', sym, [(1, x), (1, y)]))
                    elif expr[0] == 'sub':
                        (tx, x), (ty, y) = expr[2], expr[3]
                        cfg.edges[internal].append(('assign', sym, [(1, x), (-1, y)]))
                    elif expr[0] == 'shl':
                        pass
                    elif expr[0] == 'shr':
                        pass
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
                                cfg.edges[edge] = []
                                self.obj_assign(cfg, mem, edge, expr[1], sym, x)
                            else:
                                cfg.edges[edge] = [('assign', sym, [(1, x)])]
                            e_num += 1
                        e_num = 0
                        for c in false_conds:
                            edge = (new_n + "_s", new_n + "_false_" + str(e_num))
                            cfg.edges[edge] = [('cons', c)]
                            edge = (new_n + "_false_" + str(e_num), new_n + "_e")
                            if isinstance(y, str):
                                cfg.edges[edge] = []
                                self.obj_assign(cfg, mem, edge, expr[1], sym, y)
                            else:
                                cfg.edges[edge] = [('assign', sym, [(1, y)])]
                            e_num += 1
                        cur_node = new_n + "_e"
                        internal = (cur_node, blk.name + "_e")
                        cfg.edges[internal] = []
                    elif expr[0] == 'get_ptr':
                        t, (tb, base), idxs = expr[1], expr[2], expr[3:]
                        if base not in mem:
                            cfg.var_info[base]['cons'] = self.build_child_objs(cfg, mem, tb, base)
                        assigned = False
                        for i, (tidx, idx) in enumerate(idxs):
                            if tb[-1] == '*':
                                if i == len(idxs) - 1:
                                    cfg.edges[internal].append(('assign', sym, [(1, base), (1, idx)]))
                                    assigned = True
                                else:
                                    cfg.check.setdefault(internal[1], [])
                                    cfg.check[internal[1]].append(('buffer_overflow', (tb, (base, idx)), dbg_loc))
                                tb = tb[:-1]
                                obj = mem[base][0]
                            else:
                                if tb[0] == '%':
                                    tb = tb[1:]
                                tb = self.types[tb][idx]
                                obj = mem[base][idx]
                            base = obj
                        if not assigned:
                            cfg.valid_range.append((sym,))
                        cfg.edges[internal].append(('cons', [([(1, sym)], 'gt')]))
                        if sym not in mem:
                            mem[sym] = { 0 : base }
                        else:
                            self.obj_assign(cfg, mem, internal, t, mem[sym][0], base)
                    elif expr[0] == 'load':
                        (tp, p) = expr[2]
                        cfg.check.setdefault(internal[1], [])
                        cfg.check[internal[1]].append(('buffer_overflow', (tp, p), dbg_loc))
                        self.obj_assign(cfg, mem, internal, expr[1], sym, mem[p][0])
                    elif expr[0] == 'extract_value':
                        pass
                    elif expr[0] == 'insert_value':
                        pass
                    elif expr[0] == 'call':
                        ftype, fname = expr[1]
                        if fname[1].startswith("@empty_"):
                            vec_t, vec_p = expr[3]
                            cfg.check.setdefault(internal[1], [])
                            cfg.check[internal[1]].append(('buffer_overflow', (vec_t, vec_p), dbg_loc))
                            vec = mem[vec_p][0]
                            begin = mem[vec][0]
                            end = mem[vec][1]
                            cfg.var_info[sym][0] = ('cons', [([(1, end), (-1, begin)], 'eq')])
                        elif fname[1].startswith("@size"):
                            vec_t, vec_p = expr[3]
                            cfg.check.setdefault(internal[1], [])
                            cfg.check[internal[1]].append(('buffer_overflow', (vec_t, vec_p), dbg_loc))
                            vec = mem[vec_p][0]
                            begin = mem[vec][0]
                            end = mem[vec][1]
                            cfg.edges[internal].append(('assign', sym, [(1, end), (-1, begin)]))
                        elif fname[1] == "@malloc":
                            t, n = expr[1], expr[3][1]
                            cfg.valid_range.append((sym, ("+", n)))
                            cfg.edges[internal].append(('cons', [([(1, sym)], 'gt')]))
                            if isinstance(n, str):
                                cfg.edges[internal].append(('cons', [([(1, n)], 'gt')]))
                        elif fname[1] == "@lower_bound_double":
                            (tb, begin) = expr[3]
                            (te, end) = expr[4]
                            cfg.check.setdefault(internal[1], [])
                            cfg.check[internal[1]].append(('buffer_overflow', (tb, begin, end), dbg_loc))
                            cfg.edges[internal].append(('cons', [([(1, sym), (-1, begin)], 'ge'), ([(1, end), (-1, sym)], 'ge')]))
                        elif fname[1].startswith("@LaneWaypoint"):
                            t = expr[1]
                            cfg.valid_range.append((sym,))
                            cfg.edges[internal].append(('cons', [([(1, sym)], 'gt')]))
                        elif fname[1] == "@DistanceTo":
                            (t3, p3), (t4, p4) = expr[3], expr[4]
                            cfg.check.setdefault(internal[1], [])
                            cfg.check[internal[1]].append(('buffer_overflow', (t3, p3), dbg_loc))
                            cfg.check[internal[1]].append(('buffer_overflow', (t4, p4), dbg_loc))



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

        return cfg
