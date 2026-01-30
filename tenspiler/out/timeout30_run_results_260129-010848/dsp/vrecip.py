####### import statements ########
import numpy as np

####### kernel code ########

def vrecip_np (arr, n):
    return (1) // (arr[:n])

####### glued code ########

def vrecip_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return vrecip_np(arr, n)

Synthesis took 2.036358594894409 seconds
