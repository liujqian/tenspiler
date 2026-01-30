####### import statements ########
import numpy as np

####### kernel code ########

def vmul_np (a, b, n):
    return (a[:n]) * (b[:n])

####### glued code ########

def vmul_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    b = np.array(b).astype(np.int32)
    return vmul_np(a, b, n)

Synthesis took 2.0394604206085205 seconds
