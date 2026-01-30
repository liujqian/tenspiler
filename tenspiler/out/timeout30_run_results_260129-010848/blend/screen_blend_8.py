####### import statements ########
import numpy as np

####### kernel code ########

def screen_blend_8_np (base, active):
    return ((active) + (base)) - (((base) * (active)) // (32))

####### glued code ########

def screen_blend_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return screen_blend_8_np(base, active)

Synthesis took 26.38274312019348 seconds
