####### import statements ########
import numpy as np

####### kernel code ########

def linear_burn_8_np (base, active):
    return ((active) + (base)) - (32)

####### glued code ########

def linear_burn_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return linear_burn_8_np(base, active)

Synthesis took 12.256240367889404 seconds
