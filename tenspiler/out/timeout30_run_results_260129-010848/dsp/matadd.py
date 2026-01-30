####### import statements ########
import numpy as np

####### kernel code ########

def matadd_np (matA, matB, m, n):
    return (matA[:m][:, 0:n]) + (matB[:m][:, 0:n])

####### glued code ########

def matadd_np_glued (matA, matB, m, n):
    matA = np.array(matA).astype(np.int32)
    matB = np.array(matB).astype(np.int32)
    return matadd_np(matA, matB, m, n)

Synthesis took 8.23800802230835 seconds
