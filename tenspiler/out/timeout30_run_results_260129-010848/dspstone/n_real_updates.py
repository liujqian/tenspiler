####### import statements ########
import numpy as np

####### kernel code ########

def n_real_updates_np (N, A, B, C):
    return ((A[:N]) * (B[:N])) + (C[:N])

####### glued code ########

def n_real_updates_np_glued (N, A, B, C):
    A = np.array(A).astype(np.int32)
    B = np.array(B).astype(np.int32)
    C = np.array(C).astype(np.int32)
    return n_real_updates_np(N, A, B, C)

Synthesis took 2.097571849822998 seconds
