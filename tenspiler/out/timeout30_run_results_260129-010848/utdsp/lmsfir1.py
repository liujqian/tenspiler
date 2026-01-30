####### import statements ########
import numpy as np

####### kernel code ########

def lmsfir1_np (NTAPS, input, coefficient):
    return np.sum((coefficient[:NTAPS]) * (input[:NTAPS]))

####### glued code ########

def lmsfir1_np_glued (NTAPS, input, coefficient):
    input = np.array(input).astype(np.int32)
    coefficient = np.array(coefficient).astype(np.int32)
    return lmsfir1_np(NTAPS, input, coefficient)

Synthesis took 2.0376951694488525 seconds
