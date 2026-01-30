####### import statements ########
import numpy as np

####### kernel code ########

def fir_small_np (NTAPS, input, coefficient):
    return np.sum((coefficient[:NTAPS]) * (input[:NTAPS]))

####### glued code ########

def fir_small_np_glued (NTAPS, input, coefficient):
    input = np.array(input).astype(np.int32)
    coefficient = np.array(coefficient).astype(np.int32)
    return fir_small_np(NTAPS, input, coefficient)

Synthesis took 2.0290305614471436 seconds
