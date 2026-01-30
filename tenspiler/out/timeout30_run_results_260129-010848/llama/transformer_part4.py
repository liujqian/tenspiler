####### import statements ########
import numpy as np

####### kernel code ########

def transformer_part4_np (input1, input2, hidden_dim):
    return (input1[:hidden_dim]) * (input2[:hidden_dim])

####### glued code ########

def transformer_part4_np_glued (input1, input2, hidden_dim):
    input1 = np.array(input1).astype(np.float32)
    input2 = np.array(input2).astype(np.float32)
    return transformer_part4_np(input1, input2, hidden_dim)

Synthesis took 2.061176300048828 seconds
