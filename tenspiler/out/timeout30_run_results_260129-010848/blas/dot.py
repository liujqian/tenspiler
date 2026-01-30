####### import statements ########
import numpy as np

####### kernel code ########

def dot_np (a, b, n):
    return np.sum((b[:n]) * (a[:n]))

####### glued code ########

def dot_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    b = np.array(b).astype(np.int32)
    return dot_np(a, b, n)

Synthesis took 2.0242021083831787 seconds
