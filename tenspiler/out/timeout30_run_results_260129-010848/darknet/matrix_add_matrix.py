####### import statements ########
import numpy as np

####### kernel code ########

def matrix_add_matrix_np (from_matrix, to_matrix):
    return (from_matrix) + (to_matrix)

####### glued code ########

def matrix_add_matrix_np_glued (from_matrix, to_matrix):
    from_matrix = np.array(from_matrix).astype(np.int32)
    to_matrix = np.array(to_matrix).astype(np.int32)
    return matrix_add_matrix_np(from_matrix, to_matrix)

Synthesis took 6.2599523067474365 seconds
