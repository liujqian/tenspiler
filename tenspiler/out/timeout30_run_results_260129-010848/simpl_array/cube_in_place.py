####### import statements ########
import numpy as np

####### kernel code ########

def cube_in_place_np (arr, n):
    return (arr[:n]) * ((arr[:n]) * (arr[:n]))

####### glued code ########

def cube_in_place_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return cube_in_place_np(arr, n)

Synthesis took 2.0824484825134277 seconds
