####### import statements ########
import numpy as np

####### kernel code ########

def vscal_np (arr, v, n):
    return (v) * (arr[:n])

####### glued code ########

def vscal_np_glued (arr, v, n):
    arr = np.array(arr).astype(np.int32)
    return vscal_np(arr, v, n)

Synthesis took 2.033381223678589 seconds
