####### import statements ########
import numpy as np

####### kernel code ########

def softmax_part4_np (unnormalized_output, max_pos, sum):
    return (unnormalized_output[:max_pos]) / (sum)

####### glued code ########

def softmax_part4_np_glued (unnormalized_output, max_pos, sum):
    unnormalized_output = np.array(unnormalized_output).astype(np.float32)
    return softmax_part4_np(unnormalized_output, max_pos, sum)

Synthesis took 2.045074462890625 seconds
