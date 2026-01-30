####### import statements ########
import numpy as np

####### kernel code ########

def multiply_blend_8_np (base, active):
    return ((base) * (active)) // (32)

####### glued code ########

def multiply_blend_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return multiply_blend_8_np(base, active)

Synthesis took 6.281310558319092 seconds
