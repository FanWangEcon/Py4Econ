## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import pandas as pd

## import random as random

## import string as string


## np.random.seed(123)

## # Concatenate to matrix

## mt_abc = np.column_stack(np.random.randint(10, size=(5, 3)))

## # Matrix to data frame with columns and row names

## df_abc = pd.DataFrame(data=mt_abc,

##             index=[ 'r' + str(it_col) for it_col in np.array(range(1, mt_abc.shape[0]+1))],

##             columns=[ 'c' + str(it_col) for it_col in np.array(range(1, mt_abc.shape[1]+1))])

## # Print

## print(df_abc)


## # Seed

## np.random.seed(456)

## random.seed(456)

## 
## # Numeric matrix 3 rows 4 columns

## mt_numeric = np.random.randint(10, size=(3, 4))

## 
## # String block 5 letters per word, 3 rows and 3 columns of words

## st_rand_word_block = ''.join(random.choice(string.ascii_lowercase) for ctr in range(5*3*3))

## ls_st_rand_word = [st_rand_word_block[ctr: ctr + 5].capitalize() for ctr in range(0, len(st_rand_word_block), 5)]

## mt_string = np.reshape(ls_st_rand_word, [3,3])

## 
## # Combine string and numeric matrix

## mt_data = np.column_stack([mt_numeric, mt_string])

## 
## # Matrix to dataframe

## df_data = pd.DataFrame(data=mt_data,

##                        index=[ 'r' + str(it_col) for it_col in np.array(range(1, mt_data.shape[0]+1))],

##                        columns=[ 'c' + str(it_col) for it_col in np.array(range(1, mt_data.shape[1]+1))])

## 

## # Print table

## print(df_data)

