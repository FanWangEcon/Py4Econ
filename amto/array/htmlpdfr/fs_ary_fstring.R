## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import string as string

## import random as random


## st_some_str_var = "abcefg"

## st_some_str_var_name = f'{st_some_str_var=}'.split('=')[0]

## print(f'{isinstance(st_some_str_var_name, str)=}')

## print(f'{st_some_str_var_name=}')


## # birthweight estimate

## fl_estimate_birthweight = 3181.49

## # 1 significance number

## print(f'1 significance numbers, {fl_estimate_birthweight:.1}')

## # 3 significance number

## print(f'3 significance numbers, {fl_estimate_birthweight:.3}')

## # 5 significance number

## print(f'5 significance numbers, {fl_estimate_birthweight=:.5}')

## # 7 significance number

## print(f'7 significance numbers, {fl_estimate_birthweight=:.7}')


## # birthweight estimate

## fl_estimate_birthweight = 3181.49

## # 1 significance number

## print(f'0 decimal, {fl_estimate_birthweight:.0f}')

## # 3 significance number

## print(f'1 decimal, {fl_estimate_birthweight:.1f}')

## # 5 significance number

## print(f'2 decimals, {fl_estimate_birthweight=:.2f}')

## # 7 significance number

## print(f'3 decimals, {fl_estimate_birthweight=:.3f}')


## # Define a formatter function

## def fstring_formater(st_float, it_decimal):

##     # strip the string float, and format with it_decimal number of decimals

##     st_float = st_float.strip()

##     fl_float = float(st_float)

##     st_float_rounded = f'{fl_float:.{it_decimal}f}'

##     return st_float_rounded

## 
## # Print

## f'{fstring_formater("1.2345", 3)=}'

## f'{fstring_formater("1.2345", 2)=}'

## f'{fstring_formater(" 1.2345 ", 1)=}'

## f'{fstring_formater(" 1.2345", 1)=}'

## 
## # Alternatively

## it_decimal = 3

## fl_float = 123.456789

## print(f'Formating with .{it_decimal}f -> {fl_float:.{it_decimal}f}')


## ls_st_numformated = []

## ls_fl_num2format = [0.0012345, 0.12345, 12.345, 123.45, 1234.5, 123456.789]

## # dict incremental formatter

## # if below 0.1 keep 4 decimals, If below 1 keep 3, if below 100 keep 2,

## # if otherwise above, then keep 0 decimals

## dc_round_decimal = {0.1:4, 1:3, 100:2, float("inf"):0}

## # Loop over formatter

## for fl_num2format in ls_fl_num2format:

##     for fl_threshold, it_decimals in dc_round_decimal.items():

##         if fl_num2format <= fl_threshold:

##             st_float_rounded = f'{fl_num2format:.{it_decimals}f}'

##             ls_st_numformated.append(st_float_rounded)

##             print(f'{fl_num2format=}, {st_float_rounded=}, {fl_threshold=}, {it_decimals=}')

##             break

##     else:

##         continue

## # print return

## print(f'{ls_st_numformated=}')

