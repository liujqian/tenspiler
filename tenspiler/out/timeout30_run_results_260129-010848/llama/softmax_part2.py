####### import statements ########
import numpy as np

####### kernel code ########

def softmax_part2_np (input, max_pos, max_val):
    return np.exp((input[:max_pos]) - (max_val))

####### glued code ########

def softmax_part2_np_glued (input, max_pos, max_val):
    input = np.array(input).astype(np.float32)
    return softmax_part2_np(input, max_pos, max_val)

Synthesis took 2.064818859100342 seconds
