####### import statements ########
import numpy as np

####### kernel code ########

def voffset_np (arr, v, n):
    return (v) + (arr[:n])

####### glued code ########

def voffset_np_glued (arr, v, n):
    arr = np.array(arr).astype(np.int32)
    return voffset_np(arr, v, n)

Synthesis took 2.040088176727295 seconds
