## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## it_rows = 2;

## it_cols = 3;

## np.random.seed(123)


## # A random matrix of uniform draws

## mt_rand_unif = np.random.rand(it_rows, it_cols)

## print(mt_rand_unif)


## # A random matrix of integers

## it_max_int = 10

## mt_rand_integer = np.random.randint(it_max_int, size=(it_rows, it_cols))

## print(mt_rand_integer)


## # A sequence of numbers, 1 to matrix size, resorted, unique

## it_mat_size = it_rows*it_cols

## ar_seq = np.arange(it_mat_size)

## ar_idx_resort = np.random.choice(np.arange(it_mat_size), it_mat_size, replace = False)

## ar_seq_rand_sorted = ar_seq[ar_idx_resort]

## mt_seq_rand_sorted = ar_seq_rand_sorted.reshape((it_rows, it_cols))

## print(mt_seq_rand_sorted)

## # achieve the same objective with a shuffle

## np.random.shuffle(ar_seq)

## mt_seq_rand_shuffle = ar_seq.reshape((it_rows, it_cols))

## print(mt_seq_rand_shuffle)


## # A sequence of numbers, 1 to matrix size, resorted, nonunique, REPLACE = TRUE

## it_mat_size = it_rows*it_cols

## ar_seq = np.arange(it_mat_size)

## ar_idx_resort_withreplacement = np.random.choice(np.arange(it_mat_size), it_mat_size, replace = True)

## ar_seq_rand_sorted_withreplacement = ar_seq[ar_idx_resort_withreplacement]

## mt_seq_rand_sorted_withreplacement = ar_seq_rand_sorted_withreplacement.reshape((it_rows, it_cols))

## print(mt_seq_rand_sorted_withreplacement)


## # three arrays

## ar_a = [1,2,3]

## ar_b = [3,4,5]

## ar_c = [11,4,1]

## 
## # Concatenate to matrix

## mt_abc = np.column_stack([ar_a, ar_b, ar_c])

## print(mt_abc)

