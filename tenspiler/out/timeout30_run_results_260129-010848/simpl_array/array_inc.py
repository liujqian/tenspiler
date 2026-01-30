####### import statements ########
import numpy as np

####### kernel code ########

def array_inc_np (arr, n):
    return (1) + (arr[:n])

####### glued code ########

def array_inc_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return array_inc_np(arr, n)

Synthesis took 2.0508644580841064 seconds
