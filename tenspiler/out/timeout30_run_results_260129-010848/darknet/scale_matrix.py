####### import statements ########
import numpy as np

####### kernel code ########

def scale_matrix_np (m, scale):
    return (scale) * (m)

####### glued code ########

def scale_matrix_np_glued (m, scale):
    m = np.array(m).astype(np.int32)
    return scale_matrix_np(m, scale)

Synthesis took 2.221184015274048 seconds
