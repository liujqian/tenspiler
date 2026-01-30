####### import statements ########
import numpy as np

####### kernel code ########

def len_np (arr, n):
    return np.sum((arr[:n]) * (arr[:n]))

####### glued code ########

def len_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return len_np(arr, n)

Synthesis took 2.023960828781128 seconds
