####### import statements ########
import numpy as np

####### kernel code ########

def normal_blend_8_np (base, active, opacity):
    return ((opacity) * (active)) + (((32) - (opacity)) * (base))

####### glued code ########

def normal_blend_8_np_glued (base, active, opacity):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return normal_blend_8_np(base, active, opacity)

Synthesis took 4.071157932281494 seconds
