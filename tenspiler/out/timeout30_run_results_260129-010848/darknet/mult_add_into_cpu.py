####### import statements ########
import numpy as np

####### kernel code ########

def mult_add_into_cpu_np (N, X, Y, Z):
    return (Z[:N]) + ((X[:N]) * (Y[:N]))

####### glued code ########

def mult_add_into_cpu_np_glued (N, X, Y, Z):
    X = np.array(X).astype(np.int32)
    Y = np.array(Y).astype(np.int32)
    Z = np.array(Z).astype(np.int32)
    return mult_add_into_cpu_np(N, X, Y, Z)

Synthesis took 2.0772712230682373 seconds
