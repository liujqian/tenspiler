####### import statements ########
import numpy as np

####### kernel code ########

def subeq_np (a, b, n):
    return (a[:n]) - (b[:n])

####### glued code ########

def subeq_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    b = np.array(b).astype(np.int32)
    return subeq_np(a, b, n)

Synthesis took 2.059298515319824 seconds
