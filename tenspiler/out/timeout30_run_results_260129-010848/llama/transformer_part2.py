####### import statements ########
import numpy as np

####### kernel code ########

def transformer_part2_np (token_position, head1, head_size, key_cache_layer, attention):
    return np.matmul(np.transpose(key_cache_layer[0:(token_position) + (1)][:, (head1) * (head_size):((head1) * (head_size)) + (head_size)]), attention[0:(token_position) + (1)])

####### glued code ########

def transformer_part2_np_glued (token_position, head1, head_size, key_cache_layer, attention):
    key_cache_layer = np.array(key_cache_layer).astype(np.int32)
    attention = np.array(attention).astype(np.int32)
    return transformer_part2_np(token_position, head1, head_size, key_cache_layer, attention)

Synthesis took 6.127072811126709 seconds
