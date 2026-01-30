####### import statements ########
import numpy as np

####### kernel code ########

def translate_array_np (a, n, s):
    return (s) + (a[:n])

####### glued code ########

def translate_array_np_glued (a, n, s):
    a = np.array(a).astype(np.int32)
    return translate_array_np(a, n, s)

Synthesis took 2.0479977130889893 seconds
