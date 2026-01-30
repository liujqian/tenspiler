####### import statements ########
import numpy as np

####### kernel code ########

def sum_of_squares_np (arr, n):
    return np.sum((arr[:n]) * (arr[:n]))

####### glued code ########

def sum_of_squares_np_glued (arr, n):
    arr = np.array(arr).astype(np.int32)
    return sum_of_squares_np(arr, n)

Synthesis took 2.023195743560791 seconds
