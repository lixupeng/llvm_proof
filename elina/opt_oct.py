from elina.opt_oct_imports import *
from elina.elina_manager_h import *

# ====================================================================== #
# Basics
# ====================================================================== #

def opt_oct_manager_alloc():
    """
    Allocates an ElinaManager.

    Returns
    -------
    man : ElinaManagerPtr
        Pointer to the newly allocated ElinaManager.

    """

    man = None
    try:
        opt_oct_manager_alloc_c = opt_oct_api.opt_pk_manager_alloc
        opt_oct_manager_alloc_c.restype = ElinaManagerPtr
        opt_oct_manager_alloc_c.argtypes = (c_int8,)
        man = opt_oct_manager_alloc_c(0)
    except:
        print('Problem with loading/calling "opt_pk_manager_alloc" from "liboptpoly.so"')

    return man
