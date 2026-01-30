####### import statements ########
import numpy as np

####### kernel code ########

def matmul_sca_np (matA, val, m, n):
    return (val) * (matA[:m][:, 0:n])

####### glued code ########

def matmul_sca_np_glued (matA, val, m, n):
    matA = np.array(matA).astype(np.int32)
    return matmul_sca_np(matA, val, m, n)

Synthesis took 4.191241025924683 seconds
