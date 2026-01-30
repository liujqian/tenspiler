####### import statements ########
import numpy as np

####### kernel code ########

def scale_array_np (a, n, s):
    return (s) * (a[:n])

####### glued code ########

def scale_array_np_glued (a, n, s):
    a = np.array(a).astype(np.int32)
    return scale_array_np(a, n, s)

Synthesis took 2.0363070964813232 seconds
