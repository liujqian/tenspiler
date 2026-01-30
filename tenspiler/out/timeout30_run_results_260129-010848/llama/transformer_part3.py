####### import statements ########
import numpy as np

####### kernel code ########

def transformer_part3_np (input, hidden_dim):
    return (input[:hidden_dim]) * ((1) / ((1) + (np.exp((0) - (input[:hidden_dim])))))

####### glued code ########

def transformer_part3_np_glued (input, hidden_dim):
    input = np.array(input).astype(np.float32)
    return transformer_part3_np(input, hidden_dim)

Synthesis took 2.1029577255249023 seconds
