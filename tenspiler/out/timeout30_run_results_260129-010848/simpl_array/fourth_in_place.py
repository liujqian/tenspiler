####### import statements ########
import numpy as np

####### kernel code ########

def fourth_in_place_np (arr, n):
    return ((arr[:n]) * (arr[:n])) * ((arr[:n]) * (arr[:n]))

####### glued code ########

def fourth_in_place_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return fourth_in_place_np(arr, n)

Synthesis took 2.0532639026641846 seconds
