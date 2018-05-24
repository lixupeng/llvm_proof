import queue
from prover.state import debug, State

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
        self.valid_range = []

    def solve_cond(self, c):
        if isinstance(c, str):
            info = self.var_info[c][0]
        else:
            info = c
        if info == None:
            return [[([(1, c), (1, -1)], 'eq')]]
        if info[0] == 'and':
            cond_x, cond_y = self.solve_cond(info[1]), self.solve_cond(info[2])
            cond = []
            for cx in cond_x:
                for cy in cond_y:
                    cond.append(cx + cy)
            return cond
        if info[0] == 'or':
            cond_x, cond_y = self.solve_cond(info[1]), self.solve_cond(info[2])
            return cond_x + cond_y
        if info[0] == 'cons':
            return [info[1]]

    def solve_not_cond(self, c):
        if isinstance(c, str):
            info = self.var_info[c][0]
        else:
            info = c
        if info == None:
            return [[([(1, c)], 'eq')]]
        if info[0] == 'and':
            cond_x, cond_y = self.solve_not_cond(info[1]), self.solve_not_cond(info[2])
            return cond_x + cond_y
        if info[0] == 'or':
            cond_x, cond_y = self.solve_not_cond(info[1]), self.solve_not_cond(info[2])
            cond = []
            for cx in cond_x:
                for cy in cond_y:
                    cond.append(cx + cy)
            return cond
        if info[0] == 'cons':
            cond = []
            for cons, t in info[1]:
                if t == 'eq':
                    cond.append([(cons, 'lt')])
                    cond.append([(cons, 'gt')])
                else:
                    neg_t = {'gt':'le', 'ge':'lt', 'lt':'ge', 'le':'gt'}[t]
                    cond.append([(cons, neg_t)])
            return cond

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
                            state.add_constrain(c[0], c[1])
                t_state = self.fixpoints[t].copy()
                state.join(t_state)
                if t in self.widening_nodes:
                    #t_state.widening(state)
                    t_state = state
                else:
                    t_state = state
                if not t_state.less_equal(self.fixpoints[t]):
                    self.fixpoints[t] = t_state
                    if t not in Qs and visit_count[t] < 2:
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
                            st.add_constrain(c[0], c[1])
                state.join(st)
            if not self.fixpoints[t].less_equal(state):
                self.fixpoints[t] = state
                if t not in self.edges:
                    continue
                for tt, edge in self.edges[t]:
                    if tt not in Qs:
                        Q.put(tt)
                        Qs.add(tt)
