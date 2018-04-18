def zext(x):
    return x

def sext(x):
    return x

def trunc(x):
    return x

def bitcast(x):
    return x

def alloca(x):
    return ('alloca', x)

def constant_int(n):
    def fix_int(x):
        if isinstance(x, int) and 4294967200 < x < 4294967296:
            return x - 4294967296
        if isinstance(x, int) and 18446744073709551600 < x < 18446744073709551616:
            return x - 18446744073709551616
        return x

    return fix_int(n)

def global_value(type, name):
    return name

def call(*args):
    name = args[-1]
    args = args[:-1]
    return tuple(['call', name] + list(args))

def add(x, y):
    return ('add', x, y)

def sub(x, y):
    return ('sub', x, y)

def mul(x, y):
    return ('mul', x, y)

def shl(x, n):
    return ('shl', x, n)

def ashr(x, n):
    return ('ashr', x, n)

def phi(dic):
    return ('phi', dic)

def sgt(x, y):
    return ('sgt', x, y)

def slt(x, y):
    return ('slt', x, y)

def eq(x, y):
    return ('eq', x, y)

def or_(x, y):
    return ('or', x, y)

def and_(x, y):
    return ('and', x, y)

def select(cond, x, y):
    return ('select', cond, x, y)

def get_element_ptr(base, offset):
    return ('get_ptr', base, offset)

def store(x, y):
    return ('store', x, y)

def load(a):
    return ('load', a)
