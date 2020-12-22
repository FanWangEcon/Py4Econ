## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## st_cta, st_ctb, it_ctc = 'e', '20201025x_esr', 2

## print(f'{st_cta=} and {st_ctb=} and {it_ctc=}')


## # Define Tuple, with and without parenthesis

## tp_abc = ('a', 'b', 'c')

## tp_abc_noparent = 'a', 'b', 'c'

## print(f'{tp_abc=}')

## print(f'{len(tp_abc)=}')

## print(f'{tp_abc_noparent=}')

## print(f'{(tp_abc==tp_abc_noparent)=}')

## # Check Type

## print(f'{isinstance(tp_abc, list)=}')

## print(f'{isinstance(tp_abc, tuple)=}')

## # select element

## print(f'{tp_abc[1]=}')


## # convert Tuple to list

## ls_abc = [i for i in tp_abc]

## print(f'{ls_abc=}')

## print(f'{isinstance(ls_abc, list)=}')

## print(f'{isinstance(ls_abc, tuple)=}')


## # define the tuple

## tp_abc = ('a', 'b', 'c')

## # update tuple value

## try:

##     tp_abc[0] = 'efg'

## except TypeError as error:

##     print('Caught this error: ' + repr(error))


## # Results from some function

## tp_results = 'a', 123,  [1,2,3]

## # Unpack the results

## a_st, b_int, c_ls_int = tp_results

## # Print

## print(f'{tp_results=}')

## print(f'{a_st=}')

## print(f'{b_int=}')

## print(f'{c_ls_int=}')


## # Unpack only one

## a_st_self_m1, _ , _ = tp_results

## # Alternative shorter

## a_st_self_m2, *_  = tp_results

## # Print

## print(f'{a_st_self_m1=}')

## print(f'{a_st_self_m2=}')

