####### import statements ########
import numpy as np

####### kernel code ########

def normal_blend_f_np (base, active, opacity):
    return ((opacity) * (active)) + (((1) - (opacity)) * (base))

####### glued code ########

def normal_blend_f_np_glued (base, active, opacity):
    base = np.array(base).astype(np.float32)
    active = np.array(active).astype(np.float32)
    return normal_blend_f_np(base, active, opacity)

Synthesis took 2.089195728302002 seconds
