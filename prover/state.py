from elina.elina_auxiliary_imports import *
from elina.opt_oct import *
from elina.elina_scalar import *
from elina.elina_lincons0 import *
from elina.elina_manager import *
from elina.elina_abstract0 import *

manager = opt_oct_manager_alloc()
debug = False

class State:
    def __init__(self, vars, top=False):
        VARS = c_char_p * len(vars)
        self.vars = VARS()
        for i, v in enumerate(vars):
            self.vars[i] = c_char_p(v.encode())
        self.var_index = {}
        for e, i in enumerate(vars):
            self.var_index[i] = e
        self.dim = len(vars)
        if top:
            self.el_state = elina_abstract0_top(manager, c_ulong(self.dim), c_ulong(0))
        else:
            self.el_state = elina_abstract0_bottom(manager, c_ulong(self.dim), c_ulong(0))

    def print_state(self):
        arr = elina_abstract0_to_lincons_array(manager, self.el_state)
        elina_lincons0_array_print(arr, self.vars)
        elina_lincons0_array_clear(arr)

    def is_bottom(self):
        return elina_abstract0_is_bottom(manager, self.el_state)

    def gen_el_cons(self, cons, is_expr=False, eq_type="ge"):
        scalar = 0
        coeff = {}
        for a, x in cons:
            if isinstance(x, str):
                if x != '':
                    coeff[x] = 0
            else:
                if eq_type[0] == 'l':
                    scalar -= a * x
                else:
                    scalar += a * x
        size = len(coeff)
        expr = elina_linexpr0_alloc(ElinaLinexprDiscr.ELINA_LINEXPR_SPARSE, size)
        cst = pointer(expr.contents.cst)
        elina_scalar_set_double(cst.contents.val.scalar, scalar)
        for a, x in cons:
            if isinstance(x, str):
                if x == '':
                    continue
                if eq_type[0] == 'l':
                    a = -a
                coeff[x] += a
        size = 0
        for x, a in coeff.items():
            term = pointer(expr.contents.p.linterm[size])
            term.contents.dim = ElinaDim(self.var_index[x])
            coeff = pointer(term.contents.coeff)
            elina_scalar_set_double(coeff.contents.val.scalar, a)
            size += 1
        if eq_type[0] == 'l':
            eq_type = 'g' + eq_type[1]
        if not is_expr:
            cons = elina_lincons0_array_make(1)
            if eq_type == "ge":
                cons.p[0].constyp = c_uint(ElinaConstyp.ELINA_CONS_SUPEQ)
            elif eq_type == "gt":
                cons.p[0].constyp = c_uint(ElinaConstyp.ELINA_CONS_SUP)
            else:
                cons.p[0].constyp = c_uint(ElinaConstyp.ELINA_CONS_EQ)
            cons.p[0].linexpr0 = expr
            return cons
        return expr

    def add_constrain(self, cons, eq_type):
        cons_array = self.gen_el_cons(cons, False, eq_type)
        self.el_state = elina_abstract0_meet_lincons_array(
            manager, c_bool(False), self.el_state, cons_array)
        elina_lincons0_array_clear(cons_array)
        if debug:
            self.print_state()

    def assign(self, var, expr):
        dim = ElinaDim(self.var_index[var])
        expr = self.gen_el_cons(expr, True)
        self.el_state = elina_abstract0_assign_linexpr_array(
            manager, c_bool(False), self.el_state, dim, expr, 1, None)
        elina_linexpr0_free(expr)
        if debug:
            self.print_state()

    def join(self, state):
        self.el_state = elina_abstract0_join(manager, False, self.el_state, state.el_state)
        if debug:
            self.print_state()

    def meet(self, state):
        self.el_state = elina_abstract0_meet(manager, False, self.el_state, state.el_state)
        if debug:
            self.print_state()

    def widening(self, state):
        self.el_state = elina_abstract0_widening(manager, self.el_state, state.el_state)
        if debug:
            self.print_state()

    def less_equal(self, state):
        return elina_abstract0_is_leq(manager, self.el_state, state.el_state)

    def sat(self, cons, eq_type):
        cons_array = self.gen_el_cons(cons, False, eq_type)
        state = elina_abstract0_meet_lincons_array(manager, False, self.el_state, cons_array)
        if debug:
            arr = elina_abstract0_to_lincons_array(manager, state)
            elina_lincons0_array_print(arr, self.vars)
            elina_lincons0_array_clear(arr)
        is_sat = not elina_abstract0_is_bottom(manager, state)
        return is_sat

    def copy(self):
        new_state = State([])
        new_state.vars = self.vars
        new_state.var_index = self.var_index.copy()
        new_state.dim = self.dim
        new_state.el_state = elina_abstract0_copy(manager, self.el_state)
        return new_state
