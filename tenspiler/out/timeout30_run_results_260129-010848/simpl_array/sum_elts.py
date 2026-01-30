####### import statements ########
import numpy as np

####### kernel code ########

def sum_elts_np (arr, n):
    return np.sum(arr[:n])

####### glued code ########

def sum_elts_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return sum_elts_np(arr, n)

Synthesis took 2.0186831951141357 seconds
