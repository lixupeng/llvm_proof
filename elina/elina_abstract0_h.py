# ************************************************************************* #
# elina_abstract0.h: generic operations on numerical abstract values
# ************************************************************************* #

from elina.elina_manager_h import *
from elina.elina_texpr0_h import *
from elina.elina_tcons0_h import *


class ElinaAbstract0(Structure):
    """
    ElinaAbstract0 ctype compatible with elina_abstract0_t from elina.eline_manager.h
    
    Fields
    ------
    value : c_void_p
    man : ElinaManagerPtr
    
    """

    _fields_ = [('value', c_void_p), ('man', ElinaManagerPtr)]

ElinaAbstract0Ptr = POINTER(ElinaAbstract0)
ElinaAbstract0Array = POINTER(ElinaAbstract0Ptr)
