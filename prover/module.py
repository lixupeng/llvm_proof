import queue
from prover.state import debug, State

class Module:
    def __init__(self):
        self.funcs = {}

    def add_function(self, func):
        self.funcs[func.name] = func

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

class ControlFlowGraph:
    def __init__(self):
        self.vars = []
        self.var_info = {}
        self.edges = {}
        self.inv_edges = {}
        self.nodes = set()
        self.widening_nodes = set()
        self.check = {}
        self.fixpoints = {}

    def build_from_function(self, func):
        self.var_info = {}
        self.edges = {}
        self.nodes = set()
        for sym in func.args:
            self.var_info[sym] = {0: None, 'loc': None}
        first_edge = ('__start__', func.entry + "_s")
        self.edges[first_edge] = []
        for blk in func.blocks.values():
            internal = (blk.name + "_s", blk.name + "_e")
            self.edges.setdefault(internal, [])
            for inst in blk.insts:
                if len(inst) == 2:
                    inst, dbg_loc = inst
                    if inst[0] == 'store':
                        x, p = inst[1], inst[2]
                        self.check.setdefault(internal[1], [])
                        self.check[internal[1]].append(('buffer_overflow', p, dbg_loc))
                elif len(inst) == 3:
                    sym, expr, dbg_loc = inst
                    self.var_info[sym] = {0: None, 'loc': dbg_loc}
                    if isinstance(expr, str):
                        self.edges[internal].append(('assign', sym, (1, expr, 0, '', 0)))
                    elif expr[0] == 'phi':
                        for b, e in expr[1].items():
                            edge = (b + "_" + blk.name, blk.name + "_s")
                            self.edges.setdefault(edge, [])
                            if isinstance(e, str):
                                self.edges[edge].append(('assign', sym, (1, e, 0, '', 0)))
                            else:
                                self.edges[edge].append(('assign', sym, (0, '', 0, '', e)))
                    elif expr[0] == 'alloca':
                        n = expr[1]
                        self.var_info[sym][0] = ('array', n)
                        if isinstance(n, str):
                            self.edges[internal].append(('cons', [(1, n, 0, '', -1)]))
                    elif expr[0] == 'add':
                        x, y = expr[1], expr[2]
                        _a, _x, _b, _y, _c = 0, '', 0, '', 0
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x
                        if isinstance(y, str):
                            _b, _y = 1, y
                        else:
                            _c += y
                        self.edges[internal].append(('assign', sym, (_a, _x, _b, _y, _c)))
                    elif expr[0] == 'sub':
                        x, y = expr[1], expr[2]
                        _a, _x, _b, _y, _c = 0, '', 0, '', 0
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x
                        if isinstance(y, str):
                            _b, _y = -1, y
                        else:
                            _c -= y
                        self.edges[internal].append(('assign', sym, (_a, _x, _b, _y, _c)))
                    elif expr[0] == 'shl':
                        x, n = expr[0], expr[1]
                        if n == 32:
                            self.var_info[sym][0] = ('shl', x, n)
                    elif expr[0] == 'ashr':
                        x, n = expr[0], expr[1]
                        if n == 32 and self.var_info[x][0] is not None and \
                                self.var_info[x][0][0] == 'shl' and self.var_info[x][0][2] == 32:
                            x0 = self.var_info[x][0][1]
                            if isinstance(x0, str):
                                self.edges[internal].append(('assign', sym, (1, x0, 0, '', 0)))
                            else:
                                self.edges[internal].append(('assign', sym, (0, '', 0, '', x0)))
                    elif expr[0] == 'sgt':
                        x, y = expr[1], expr[2]
                        _a, _x, _b, _y, _c = 0, '', 0, '', -1
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x
                        if isinstance(y, str):
                            _b, _y = -1, y
                        else:
                            _c -= y
                        self.var_info[sym][0] = ('cons', [(_a, _x, _b, _y, _c)])
                    elif expr[0] == 'slt':
                        x, y = expr[1], expr[2]
                        _a, _x, _b, _y, _c = 0, '', 0, '', -1
                        if isinstance(x, str):
                            _a, _x = -1, x
                        else:
                            _c -= x
                        if isinstance(y, str):
                            _b, _y = 1, y
                        else:
                            _c += y
                        self.var_info[sym][0] = ('cons', [(_a, _x, _b, _y, _c)])
                    elif expr[0] == 'eq':
                        x, y = expr[1], expr[2]
                        _a, _x, _b, _y, _c = 0, '', 0, '', 0
                        if isinstance(x, str):
                            _a, _x = 1, x
                        else:
                            _c += x
                        if isinstance(y, str):
                            _b, _y = -1, y
                        else:
                            _c -= y
                        self.var_info[sym][0] = ('cons', [(_a, _x, _b, _y, _c),
                                                       (-_a, _x, -_b, _y, -_c)])
                    elif expr[0] == 'or':
                        x, y = expr[1], expr[2]
                        self.var_info[sym][0] = ('or', x, y)
                    elif expr[0] == 'and':
                        x, y = expr[1], expr[2]
                        self.var_info[sym][0] = ('and', x, y)
                    elif expr[0] == 'get_ptr':
                        a, n = expr[1], expr[2]
                        self.var_info[sym][0] = ('get_ptr', a, n)
                    elif expr[0] == 'load':
                        self.check.setdefault(internal[1], [])
                        self.check[internal[1]].append(('buffer_overflow', expr[1], dbg_loc))
        for blk, edges in func.edges.items():
            for edge in edges:
                if len(edge) == 4:
                    cond, true_blk, false_blk, dbg_loc = edge
                    def solve_cond(c):
                        info = self.var_info[c][0]
                        if info[0] == 'and':
                            cond_x, cond_y = solve_cond(info[1]), solve_cond(info[2])
                            cond = []
                            for cx in cond_x:
                                for cy in cond_y:
                                    cond.append(cx + cy)
                            return cond
                        if info[0] == 'or':
                            cond_x, cond_y = solve_cond(info[1]), solve_cond(info[2])
                            return cond_x + cond_y
                        if info[0] == 'cons':
                            return [info[1]]
                    def solve_not_cond(c):
                        info = self.var_info[c][0]
                        if info[0] == 'and':
                            cond_x, cond_y = solve_not_cond(info[1]), solve_not_cond(info[2])
                            return cond_x + cond_y
                        if info[0] == 'or':
                            cond_x, cond_y = solve_not_cond(info[1]), solve_not_cond(info[2])
                            cond = []
                            for cx in cond_x:
                                for cy in cond_y:
                                    cond.append(cx + cy)
                            return cond
                        if info[0] == 'cons':
                            cond = []
                            for a, x, b, y, c in info[1]:
                                cond.append([(-a, x, -b, y, -1-c)])
                            return cond
                    true_conds = solve_cond(cond)
                    false_conds = solve_not_cond(cond)
                    e_num = 0
                    for c in true_conds:
                        edge = (blk + "_e", blk + "_true_" + str(e_num))
                        self.edges[edge] = [('cons', c)]
                        edge = (blk + "_true_" + str(e_num), blk + "_" + true_blk)
                        self.edges[edge] = []
                        edge = (blk + "_" + true_blk, true_blk + "_s")
                        self.edges.setdefault(edge, [])
                        e_num += 1
                    e_num = 0
                    for c in false_conds:
                        edge = (blk + "_e", blk + "_false_" + str(e_num))
                        self.edges[edge] = [('cons', c)]
                        edge = (blk + "_false_" + str(e_num), blk + "_" + false_blk)
                        self.edges[edge] = []
                        edge = (blk + "_" + false_blk, false_blk + "_s")
                        self.edges.setdefault(edge, [])
                        e_num += 1
                else:
                    target, dbg_loc = edge
                    edge = (blk + "_e", blk + "_" + target)
                    self.edges[edge] = []
                    edge = (blk + "_" + target, target + "_s")
                    self.edges.setdefault(edge, [])

        edges = self.edges
        self.edges = {}
        for (s, t), e in edges.items():
            self.nodes.add(s)
            self.nodes.add(t)
            self.edges.setdefault(s, [])
            self.edges[s].append((t, e))
        self.inv_edges = {}
        for s, edges in self.edges.items():
            for t, edge in edges:
                self.inv_edges.setdefault(t, [])
                self.inv_edges[t].append((s, edge))
        self.nodes = list(self.nodes)
        self.vars = list(self.var_info.keys())

    def compute_widening_nodes(self, node, visited, instack):
        visited.add(node)
        instack.add(node)
        if node not in self.edges:
            return
        for to, _ in self.edges[node]:
            if to in instack:
                self.widening_nodes.add(to)
            if to not in visited:
                self.compute_widening_nodes(to, visited, instack)
        instack.remove(node)

    def compute_fixpoint(self):
        self.fixpoints = {}
        visit_count = {}
        for n in self.nodes:
            self.fixpoints[n] = State(self.vars)
            visit_count[n] = 0
        self.fixpoints['__start__'] = State(self.vars, top=True)

        self.widening_nodes = set()
        self.compute_widening_nodes('__start__', set(), set())

        Q = queue.Queue()
        Qs = {'__start__'}
        Q.put('__start__')
        while not Q.empty():
            s = Q.get()
            visit_count[s] += 1
            Qs.remove(s)
            if self.fixpoints[s].is_bottom() or s not in self.edges:
                continue
            for t, edge in self.edges[s]:
                if debug:
                    print(s, "->", t)
                state = self.fixpoints[s].copy()
                for e in edge:
                    if e[0] == 'assign':
                        state.assign(e[1], e[2])
                    if e[0] == 'cons':
                        for c in e[1]:
                            state.add_constrain(c)
                t_state = self.fixpoints[t].copy()
                state.join(t_state)
                if visit_count[t] > 3 and t in self.widening_nodes:
                    t_state.widening(state)
                else:
                    t_state = state
                if not t_state.less_equal(self.fixpoints[t]):
                    self.fixpoints[t] = t_state
                    if t not in Qs:
                        Q.put(t)
                        Qs.add(t)
        for n in self.nodes:
            Q.put(n)
            Qs.add(n)
        while not Q.empty():
            t = Q.get()
            Qs.remove(t)
            state = State(self.vars)
            if t not in self.inv_edges:
                continue
            for s, edge in self.inv_edges[t]:
                st = self.fixpoints[s].copy()
                for e in edge:
                    if e[0] == 'assign':
                        st.assign(e[1], e[2])
                    if e[0] == 'cons':
                        for c in e[1]:
                            st.add_constrain(c)
                state.join(st)
            if not self.fixpoints[t].less_equal(state):
                self.fixpoints[t] = state
                if t not in self.edges:
                    continue
                for tt, edge in self.edges[t]:
                    if tt not in Qs:
                        Q.put(tt)
                        Qs.add(tt)
