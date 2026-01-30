####### import statements ########
import numpy as np

####### kernel code ########

def matscal_np (mat, val, m, n):
    return (val) * (mat[:m][:, 0:n])

####### glued code ########

def matscal_np_glued (mat, val, m, n):
    mat = np.array(mat).astype(np.int32)
    return matscal_np(mat, val, m, n)

Synthesis took 4.176914930343628 seconds
