####### import statements ########
import numpy as np

####### kernel code ########

def matmul_np (weight, input):
    return np.matmul(weight, input)

####### glued code ########

def matmul_np_glued (weight, input):
    weight = np.array(weight).astype(np.float32)
    input = np.array(input).astype(np.float32)
    return matmul_np(weight, input)

Synthesis took 6.189157247543335 seconds
