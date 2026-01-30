####### import statements ########
import numpy as np

####### kernel code ########

def mse_array_np (a, n):
    return np.sum((a[:n]) * (a[:n]))

####### glued code ########

def mse_array_np_glued (a, n):
    a = np.array(a).astype(np.int32)
    return mse_array_np(a, n)

Synthesis took 2.0313398838043213 seconds
