####### import statements ########
import numpy as np

####### kernel code ########

def softmax_part3_np (output, max_pos):
    return np.sum(output[:max_pos])

####### glued code ########

def softmax_part3_np_glued (output, max_pos):
    output = np.array(output).astype(np.float32)
    return softmax_part3_np(output, max_pos)

Synthesis took 2.02020263671875 seconds
