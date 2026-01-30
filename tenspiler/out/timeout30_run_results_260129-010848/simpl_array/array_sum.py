####### import statements ########
import numpy as np

####### kernel code ########

def array_sum_np (arr, n):
    return np.sum(arr[:n])

####### glued code ########

def array_sum_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return array_sum_np(arr, n)

Synthesis took 2.0193376541137695 seconds
