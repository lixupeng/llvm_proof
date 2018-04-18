#!/usr/bin/python3

from prover.module import Module, ControlFlowGraph
from prover.check import check_buffer_overflow

import os
import sys

filename = sys.argv[1]
os.system("clang-5.0 -g -O1 -S -emit-llvm %s -o tmp.ll && compiler/gen_py tmp.ll > genPy.py" % filename)
import genPy

module = Module()
genPy.get(module)
cfg = ControlFlowGraph()
cfg.build_from_function(list(module.funcs.values())[0])
cfg.compute_fixpoint()

report = check_buffer_overflow(cfg)

print()
if len(report) > 0:
    for x, loc in report:
        print()
        print("Potential buffer overflow at", loc, ":", x)
        if len(loc) > 0:
            _, line, column = tuple(loc.split(":"))
            f = open(filename).readlines()
            print(str(line) + ":" + f[int(line) - 1])
else:
    print("No buffer overflow!")

os.system("rm tmp.ll genPy.py")