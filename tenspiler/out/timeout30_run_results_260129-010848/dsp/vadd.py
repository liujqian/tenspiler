####### import statements ########
import numpy as np

####### kernel code ########

def vadd_np (a, b, n):
    return (a[:n]) + (b[:n])

####### glued code ########

def vadd_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    b = np.array(b).astype(np.int32)
    return vadd_np(a, b, n)

Synthesis took 2.045164108276367 seconds
