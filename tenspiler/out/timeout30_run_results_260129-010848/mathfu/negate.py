####### import statements ########
import numpy as np

####### kernel code ########

def negate_np (arr, n):
    return (0) - (arr[:n])

####### glued code ########

def negate_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return negate_np(arr, n)

Synthesis took 2.0529356002807617 seconds
