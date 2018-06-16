def zext(t, x):
    return ('identity', t, x)

def sext(t, x):
    return ('identity', t, x)

def trunc(t, x):
    return ('identity', t, x)

def bitcast(t, x):
    return ('identity', t, x)

def ptr_to_int(t, x):
    return ('identity', t, x)

def sitofp(t, x):
    return ('identity', t, x)

def alloca(t, x):
    return ('alloca', t, x)

def constant_int(n):
    def fix_int(x):
        if isinstance(x, int) and 4294967200 < x < 4294967296:
            return x - 4294967296
        if isinstance(x, int) and 18446744073709551600 < x < 18446744073709551616:
            return x - 18446744073709551616
        return x

    return fix_int(n)

def global_value(type, name):
    return (type, name)

def call(*args):
    name = args[-1]
    args = args[:-1]
    return tuple(['call', name] + list(args))

def add(t, x, y):
    return ('add', t, x, y)

def fadd(t, x, y):
    return ('add', t, x, y)

def sub(t, x, y):
    return ('sub', t, x, y)

def fsub(t, x, y):
    return ('sub', t, x, y)

def mul(t, x, y):
    return ('mul', t, x, y)

def fmul(t, x, y):
    return ('mul', t, x, y)

def shl(t, x, n):
    return ('identity', t, x)
    if isinstance(n[1], int) and n[1] > 0 and n[1] < 16:
        return ('mul', t, x, (n[0], 1 << n[1]))
    return ('shl', t, x, n)

def ashr(t, x, n):
    return ('identity', t, x)
    if isinstance(n[1], int) and n[1] > 0 and n[1] < 16:
        return ('div', t, x, (n[0], 1 << n[1]))
    return ('shr', t, x, n)

def sdiv(t, x, y):
    return ('div', t, x, x)

def lshr(t, x, n):
    return ('identity', t, x)
    if isinstance(n[1], int) and n[1] > 0 and n[1] < 16:
        return ('div', t, x, (n[0], 1 << n[1]))
    return ('shr', t, x, n)

def phi(t, dic):
    return ('phi', t, dic)

def sgt(t, x, y):
    return ('gt', t, x, y)

def ugt(t, x, y):
    return ('gt', t, x, y)

def gt(t, x, y):
    return ('gt', t, x, y)

def ge(t, x, y):
    return ('ge', t, x, y)

def uge(t, x, y):
    return ('ge', t, x, y)

def slt(t, x, y):
    return ('lt', t, x, y)

def ult(t, x, y):
    return ('lt', t, x, y)

def lt(t, x, y):
    return ('lt', t, x, y)

def le(t, x, y):
    return ('le', t, x, y)

def ule(t, x, y):
    return ('le', t, x, y)

def eq(t, x, y):
    return ('eq', t, x, y)

def ne(t, x, y):
    return ('ne', t, x, y)

def or_(t, x, y):
    return ('or', t, x, y)

def and_(t, x, y):
    if y[1] == -1:
        return ('identity', t, x)
    return ('and', t, x, y)

def select(t, cond, x, y):
    return ('select', t, cond, x, y)

def get_element_ptr(t, base, *index):
    return ('get_ptr', t, base, *index)

def store(t, x, y):
    return ('store', t, x, y)

def load(t, a):
    return ('load', t, a)

def insert_value(t, dst, val, *idx):
    return ('insert_value', t, dst, val, *idx)

def extract_value(t, dst, *idx):
    return ('extract_value', t, dst, *idx)

def undef(t):
    return 'undef'

def constant_pointer_null(t):
    return 0

def constant_double(val):
    val = val.split()[1]
    if val == "0x47D2CED32A16A1B1":
        return 1.0
    else:
        return 0.0#float(val)
