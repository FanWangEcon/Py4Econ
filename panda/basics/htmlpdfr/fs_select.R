## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import pandas as pd

## import random as random

## import string as string


## # Seed

## np.random.seed(999)

## random.seed(999)

## # Numeric matrix 3 rows 4 columns

## mt_numeric = np.random.randint(10, size=(5, 4))

## st_rand_word_block = ''.join(random.choice(string.ascii_lowercase) for ctr in range(5*5*3))

## mt_string = np.reshape([st_rand_word_block[ctr: ctr + 5].capitalize() for ctr in range(0, len(st_rand_word_block), 5)], [5,3])

## mt_data = np.column_stack([mt_numeric, mt_string])

## 
## # Matrix to dataframe

## df_data = pd.DataFrame(data=mt_data,

##                        index=[ 'r' + str(it_col) for it_col in np.array(range(1, mt_data.shape[0]+1))],

##                        columns=[ 'c' + str(it_col) for it_col in np.array(range(1, mt_data.shape[1]+1))])

## 
## # Replace values

## df_data = df_data.replace(['Zvcss', 'Dugei', 'Ciagu'], 'Zqovt')

## 
## # Print table

## print(df_data)


## # Concatenate to matrix

## df_data_subset = df_data.loc[df_data['c5'] == 'Zqovt']

## # Print

## print(df_data_subset)

