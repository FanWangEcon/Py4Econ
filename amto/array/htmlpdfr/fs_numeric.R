## ----global_options, include = FALSE-------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## # Maximum number

## it_bisection_iter = 4

## # np arange

## ls_it_loop = np.arange(it_bisection_iter)

## print(f'{ls_it_loop=}')

## # Iteration

## for it_bisection_ctr in ls_it_loop:

##     if it_bisection_ctr == 0:

##         print('starting index')

##     elif it_bisection_ctr == it_bisection_iter-1:

##         print('ending index')

##     print(f'{it_bisection_ctr=}')


## ls_it_esti_optsalgo = [0, 1, 10, 15, 23, 89, 90, 99, 900, 901, 999, 1000]

## for it_esti_optsalgo in ls_it_esti_optsalgo:

##     it_esti_optsalgo_tens = int(np.floor(it_esti_optsalgo/10))

##     it_esti_optsalgo_digits = it_esti_optsalgo%10

##     print(f'{it_esti_optsalgo_tens=}, {it_esti_optsalgo_digits=}')

