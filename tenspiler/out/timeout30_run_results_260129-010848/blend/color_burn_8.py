####### import statements ########
import numpy as np

####### kernel code ########

def color_burn_8_np (base, active):
    return np.where(np.equal(active, 0), 32, (32) - (((32) - (base)) // (active)))

####### glued code ########

def color_burn_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return color_burn_8_np(base, active)

Synthesis took 30.342205047607422 seconds
