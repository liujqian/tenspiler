####### import statements ########
import numpy as np

####### kernel code ########

def diveq_sca_np (a, b, n):
    return (a[:n]) // (b)

####### glued code ########

def diveq_sca_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    return diveq_sca_np(a, b, n)

Synthesis took 2.0405831336975098 seconds
