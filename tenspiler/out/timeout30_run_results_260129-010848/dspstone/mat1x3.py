####### import statements ########
import numpy as np

####### kernel code ########

def mat1x3_np (N, h, x):
    return np.matmul(h[:N][:, 0:N], x[:N])

####### glued code ########

def mat1x3_np_glued (N, h, x):
    h = np.array(h).astype(np.int32)
    x = np.array(x).astype(np.int32)
    return mat1x3_np(N, h, x)

Synthesis took 4.139803171157837 seconds
