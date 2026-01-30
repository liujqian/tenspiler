####### import statements ########
import numpy as np

####### kernel code ########

def lmsfir2_np (NTAPS, input, coefficient, error):
    return (coefficient[:(NTAPS) - (1)]) + ((error) * (input[:(NTAPS) - (1)]))

####### glued code ########

def lmsfir2_np_glued (NTAPS, input, coefficient, error):
    input = np.array(input).astype(np.int32)
    coefficient = np.array(coefficient).astype(np.int32)
    return lmsfir2_np(NTAPS, input, coefficient, error)

Synthesis took 2.065821409225464 seconds
