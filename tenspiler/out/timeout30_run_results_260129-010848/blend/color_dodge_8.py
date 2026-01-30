####### import statements ########
import numpy as np

####### kernel code ########

def color_dodge_8_np (base, active):
    return np.where(np.equal(active, 32), 32, (base) // ((32) - (active)))

####### glued code ########

def color_dodge_8_np_glued (base, active):
    base = np.array(base).astype(np.uint8)
    active = np.array(active).astype(np.uint8)
    return color_dodge_8_np(base, active)

Synthesis took 20.344167232513428 seconds


generated code:matrix_selection_two_args(base, active, select_two_args)
