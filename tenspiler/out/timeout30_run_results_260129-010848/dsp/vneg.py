####### import statements ########
import numpy as np

####### kernel code ########

def vneg_np (arr, n):
    return (0) - (arr[:n])

####### glued code ########

def vneg_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return vneg_np(arr, n)

Synthesis took 2.0342986583709717 seconds
