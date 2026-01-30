####### import statements ########
import numpy as np

####### kernel code ########

def matsub_np (matA, matB, m, n):
    return (matA[:m][:, 0:n]) - (matB[:m][:, 0:n])

####### glued code ########

def matsub_np_glued (matA, matB, m, n):
    matA = np.array(matA).astype(np.int32)
    matB = np.array(matB).astype(np.int32)
    return matsub_np(matA, matB, m, n)

Synthesis took 10.20967411994934 seconds
