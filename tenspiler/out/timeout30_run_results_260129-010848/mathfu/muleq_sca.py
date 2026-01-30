####### import statements ########
import numpy as np

####### kernel code ########

def muleq_sca_np (a, b, n):
    return (b) * (a[:n])

####### glued code ########

def muleq_sca_np_glued (a, b, n):
    a = np.array(a).astype(np.int32)
    return muleq_sca_np(a, b, n)

Synthesis took 2.0426249504089355 seconds
