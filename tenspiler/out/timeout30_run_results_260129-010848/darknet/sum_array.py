####### import statements ########
import numpy as np

####### kernel code ########

def sum_array_np (a, n):
    return np.sum(a[:n])

####### glued code ########

def sum_array_np_glued (a, n):
    a = np.array(a).astype(np.int32)
    return sum_array_np(a, n)

Synthesis took 2.0193357467651367 seconds
