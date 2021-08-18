## ----global_options, include = FALSE-------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np


## ls_ob_combo_type = ["e", "20201025x_esr_list_tKap_mlt_ce1a2", ["esti_param.kappa_ce9901", "esti_param.kappa_ce0209"], 1, "C1E31M3S3=1"]

## for it_idx, ob_val in enumerate(ls_ob_combo_type):

##     print(f'{it_idx=} and {ob_val=}')


## list_test = ['C1E126M4S3', 2]

## [compesti_short_name, esti_top_which] = list_test

## print(f'{compesti_short_name=} and {esti_top_which=}')


## ar_int_list_a1 = [1,2]

## ar_int_list_a2 = [2,1111]

## ar_int_list_a3 = [2111,1111]

## ar_int_list_b = [1,2,3,11,999]

## ar_int_list_c = [2]

## 
## check_any_a1_in_b =  any(item in ar_int_list_a1 for item in ar_int_list_b)

## check_any_a2_in_b =  any(item in ar_int_list_a2 for item in ar_int_list_b)

## check_any_a3_in_b =  any(item in ar_int_list_a3 for item in ar_int_list_b)

## check_any_a1_in_c =  any(item in ar_int_list_a1 for item in ar_int_list_c)

## 
## print(f'{check_any_a1_in_b=}')

## print(f'{check_any_a2_in_b=}')

## print(f'{check_any_a3_in_b=}')

## print(f'{check_any_a1_in_c=}')


## ls_spec_key = ['ng_s_d', 'esti_test_11_simu', 2, 3]

## ls_st_spec_key = list(map(str, ls_spec_key))

## print(ls_st_spec_key)


## ls_spec_key = ['ng_s_d', 'esti_test_11_simu', 2, 3]

## ls_st_spec_key = list(map(lambda x: 'add++' + str(x), ls_spec_key))

## print(ls_st_spec_key)


## ls_spec_key = ['ng_s_d', 'esti_test_11_simu', 2, 3]

## ls_st_spec_key = ['list_comprehension' + str(spec_key) for spec_key in ls_spec_key]

## print(ls_st_spec_key)


## ls_model_assumption = ['', 'ITG', 'GE', 'ITG_GE']

## ls_graph_panda_list_name = ['min_graphs', 'main_aA_graphs', 'all_graphs_tables']

## for model_assumption in ls_model_assumption:

##     for graph_panda_list_name in ls_graph_panda_list_name:

##         # Join strings together

##         st_curdatestr = "_".join(filter(None, [model_assumption, graph_panda_list_name]))

##         print(f'{st_curdatestr=}')


## ls_spec_key = ['ng_s_d', 'esti_test_11_simu', 2, 3]

## st_separator = '='

## st_spec_key = st_separator.join(list(map(lambda x : str(x), ls_spec_key)))

## print(st_spec_key)


## st_spec_key = '='.join(list(map(lambda x : '$' + str(x) + '$', ['ng_s_d', 'esti_test_11_simu', 2, 3])))

## print(st_spec_key.split('='))


## ls_string_A = ['c', '20180918']

## ls_string_B = ['c', '20180918', ['esti_param.alpha_k']]

## 
## for ls_string in [ls_string_A, ls_string_B]:

##   if len(ls_string) == 2:

##     ls_string.insert(2, None)

## 

##   print(ls_string)

## 


## ls_string_A = ['c', '20180918']

## ls_string_B = ['c', '20180918', None]

## ls_string_C = ['c', '20180918', None, None]

## ls_string_D = ['c', '20180918', ['esti_param.alpha_k'], None]

## ls_string_E = ['c', '20180918', ['esti_param.alpha_k'], 5]

## 
## for ls_string in [ls_string_A, ls_string_B, ls_string_C, ls_string_D, ls_string_E]:

##   if len(ls_string) >= 3 and ls_string[2] is not None:

##     print(ls_string)

##   else:

##     print(ls_string[0:2])

## 


## 
## ls_string_A = ['c', '20180918']

## ls_string_B = ['c', '20180918', None]

## ls_string_C = ['c', '20180918', ['esti_param.alpha_k']]

## 
## for ls_string in [ls_string_A, ls_string_B, ls_string_C]:

## 
##   if len(ls_string) <= 2:

##     # Deals with situation A

##     ls_string.append(['esti_param.alpha_k'])

##   elif ls_string[2] is None:

##     # Deals with situation B

##     ls_string[2] = ['esti_param.alpha_k']

##   else:

##     # Situation C

##     pass

## 
##   print(ls_string)


## 
## ls_string_A = [11, 22]

## ls_string_B = [11, 22, None]

## ls_string_C = [11, 22, 33]

## 
## for ls_string in [ls_string_A, ls_string_B, ls_string_C]:

## 
##   if len(ls_string) <= 2:

##     # Deals with situation A

##     ls_string.append(33)

##   elif ls_string[2] is None:

##     # Deals with situation B

##     ls_string[2] = 33

##   else:

##     # Situation C

##     pass

## 
##   print(ls_string)

