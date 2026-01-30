####### import statements ########
import numpy as np

####### kernel code ########

def vcopy_np (a, n):
    return a[:n]

####### glued code ########

def vcopy_np_glued (a, n):
    a = np.array(a).astype(np.int32)
    return vcopy_np(a, n)

Synthesis took 2.0306475162506104 seconds
