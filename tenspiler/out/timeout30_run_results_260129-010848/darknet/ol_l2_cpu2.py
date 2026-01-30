####### import statements ########
import numpy as np

####### kernel code ########

def ol_l2_cpu2_np (n, pred, truth):
    return (truth[:n]) - (pred[:n])

####### glued code ########

def ol_l2_cpu2_np_glued (n, pred, truth):
    pred = np.array(pred).astype(np.int32)
    truth = np.array(truth).astype(np.int32)
    return ol_l2_cpu2_np(n, pred, truth)

Synthesis took 2.0700864791870117 seconds
