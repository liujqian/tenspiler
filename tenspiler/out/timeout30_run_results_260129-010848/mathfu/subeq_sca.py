####### import statements ########
import numpy as np

####### kernel code ########

def subeq_sca_np (a, b, n):
    return (a[:n]) - (b)

####### glued code ########

def subeq_sca_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    return subeq_sca_np(a, b, n)

Synthesis took 2.0586018562316895 seconds
