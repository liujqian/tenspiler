####### import statements ########
import numpy as np

####### kernel code ########

def mag_array_np (a, n):
    return np.sum((a[:n]) * (a[:n]))

####### glued code ########

def mag_array_np_glued (a, n):
    a = np.array(a).astype(np.int32)
    return mag_array_np(a, n)

Synthesis took 2.023017168045044 seconds
