####### import statements ########
import numpy as np

####### kernel code ########

def looped_copy_np (u_50, u):
    return u[0:u_50.size][:, 0:u_50[0].size]

####### glued code ########

def looped_copy_np_glued (u_50, u):
    u_50 = np.array(u_50).astype(np.int32)
    u = np.array(u).astype(np.int32)
    return looped_copy_np(u_50, u)

