####### import statements ########
import numpy as np

####### kernel code ########

def square_plus_one_np (arr_in):
    return (1) + ((arr_in[0:arr_in.size][:, 0:arr_in[0].size]) * (arr_in[0:arr_in.size][:, 0:arr_in[0].size]))

####### glued code ########

def square_plus_one_np_glued (arr_in):
    arr_in = np.array(arr_in).astype(np.int32)
    return square_plus_one_np(arr_in)

