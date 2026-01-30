####### import statements ########
import numpy as np

####### kernel code ########

def overlay_blend_8_np (base, active):
    return np.where(np.greater_equal(base, 16), ((((2) * (base)) + (base)) - ((((2) * (base)) * (base)) // (32))) - (32), (((2) * (base)) * (base)) // (32))

####### glued code ########

def overlay_blend_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return overlay_blend_8_np(base, active)

Synthesis took 38.510053634643555 seconds
