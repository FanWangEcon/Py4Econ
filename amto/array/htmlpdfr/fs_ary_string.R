## ----global_options, include = FALSE-------------------------------------------------------------------
try(source("../../.Rprofile"))


## import numpy as np

## import string as string

## import random as random

## import pprint


## ls_st_status = ["success", "running", "running", "running", "finished", "pending", "pending"]

## ls_freq = [ [f'{ls_st_status.count(st_status)} of {len(ls_st_status)} {st_status}']  for st_status in set(ls_st_status)]

## pprint.pprint(ls_freq)


## st_func_stack_code = 'dc_ls_combo_type = pyfan_amto_lsdcconvert.ff_ls2dc(ls_combo_type,'

## st_search_break = 'ff_ls2dc('

## st_string_after = st_func_stack_code.split(st_search_break)[1]

## st_search_break = ','

## st_string_after = st_func_stack_code.split(st_search_break)[1]

## print(f'{st_string_after=}')


## random.seed(123)

## it_word_length = 5

## st_rand_word = ''.join(random.choice(string.ascii_lowercase) for i in range(it_word_length))

## st_rand_word = st_rand_word.capitalize()

## print(f'{st_rand_word=}')


## random.seed(123)

## it_words_count = 15

## it_word_length = 5

## st_rand_word_block = ''.join(random.choice(string.ascii_lowercase) for ctr in range(it_word_length*it_words_count))

## ls_st_rand_word = [st_rand_word_block[ctr: ctr + it_word_length].capitalize()

##                    for ctr in range(0, len(st_rand_word_block), it_word_length)]

## print(f'{ls_st_rand_word=}')


## mt_st_rand_word = np.reshape(ls_st_rand_word, [3,5])

## print(f'{mt_st_rand_word=}')

## print(f'{mt_st_rand_word.shape=}')

## print(f'{type(mt_st_rand_word)=}')


## st_separator = "_"

## st_pasted = st_separator.join(filter(None, ['abc', 'efg']))

## print(f'{st_pasted=}')

## # empty if the strings are empty

## st_pasted = st_separator.join(filter(None, ['', '', '']))

## print(f'{st_pasted=}')

## # If only one not empy output the same

## st_pasted = st_separator.join(filter(None, ['abc', '']))

## print(f'{st_pasted=}')


## ar_st_colnames = [ 's' + str(it_col) for it_col in np.array(range(1, 3))]

## print(ar_st_colnames)


## # define string

## ls_st_ignore = ['abc', 'efg', 'xyz']

## ls_st_loop = ['ab cefg sdf', '12345', 'xyz', 'abc xyz', 'good morning']

## 
## # zip and loop and replace

## for st_loop in ls_st_loop:

##   if sum([st_ignore in st_loop for st_ignore in ls_st_ignore]):

##     print('skip:', st_loop)

##   else:

##     print('not skip:', st_loop)

## 

## # define string

## st_full = """

## abc is a great efg, probably xyz. Yes, xyz is great, like efg.

## eft good, EFG capitalized, efg good again.

## A B C or abc or ABC. Interesting xyz.

## """

## 
## # define new and old

## ls_st_old = ['abc', 'efg', 'xyz']

## ls_st_new = ['123', '456', '789']

## 
## # zip and loop and replace

## for old, new in zip(ls_st_old, ls_st_new):

##   st_full = st_full.replace(old, new)

## 
## # print

## print(st_full)


## import textwrap

## 
## # A long Path

## st_path = """

## C:/Users/fan/Documents/Dropbox (UH-ECON)/Project Emily Minority Survey/EthLang/reg_lang_abi_cls_mino/tab3_fm/attain_m_vs_f/tab3_mand_talk_m2c_hfracle02.tex

## """

## 
## # Wrap text with tight width

## st_wrapped = textwrap.fill(st_path, width = 20)

## print(st_wrapped)


## 
## # Paths

## st_path_a = "C:/Users/fan/Documents/Dropbox (UH-ECON)/Project Emily Minority Survey/EthLang/reg_lang_abi_cls_mino/tab3_fm/attain_m_vs_f/tab3_mand_talk_m2c_hfracle02.tex"

## st_path_b = 'C:/Users/fan/R4Econ/support/development/fs_packaging.html'

## 
## # Combine Strings and Wrap

## str_dc_records = 'First Path:'.upper() + '\n' + \

##                  textwrap.fill(st_path_a, width=25) + '\n\n' + \

##                  'Second Path:'.upper() + '\n' + \

##                  textwrap.fill(st_path_b, width=25)

## 
## # Print

## print(str_dc_records)


## it_round_decimal = 1

## ls_st_all_estimates = ["84.506***, 91.758***, 107.950***, 115.879***, 133.560***\n",

##                        "(7.796), (4.848), (4.111), (5.044), (6.961)\n",

##                        "68.180***, 47.921***, 47.127***, 51.366***, 41.764***\n",

##                        "(8.986), (5.368), (4.995), (5.099), (8.637)\n"]

## 
## for st_all_estimates in ls_st_all_estimates:

## 
##     # delete linebreak at end of line

##     st_all_estimates = st_all_estimates.replace("\n", "")

## 
##     # split

##     ls_st_estimates = st_all_estimates.split(",")

## 
##     # Loop over each value separated by commas

##     for it_esti_ctr, st_esti in enumerate(ls_st_estimates):

## 
##         # Default update is to keep current

##         st_esti_update = st_esti

## 
##         # If estimates, might have stars

##         st_esti_numeric = st_esti.strip()

##         st_esti_numeric = st_esti_numeric.replace("*", "")

##         st_esti_numeric = st_esti_numeric.replace("(", "")

##         st_esti_numeric = st_esti_numeric.replace(")", "")

## 
##         # Decimal Rounding

##         fl_esti_rounded = round(float(st_esti_numeric), it_round_decimal)

##         st_esti_rounded = f'{fl_esti_rounded:.{it_round_decimal}f}'

## 
##         # Replace

##         print(f'{st_esti=} + {st_esti_numeric=} + {st_esti_rounded=}')

##         st_esti_rounded = st_esti.replace(st_esti_numeric, st_esti_rounded)

## 
##         # Update List

##         ls_st_estimates[it_esti_ctr] = st_esti_rounded

## 
##     # Flatten comman

##     st_text_out = ','.join(ls_st_estimates)

##     print(f'\n{st_text_out=}\n')

##     print()


## # examples strings to check

## ls_st_exas = ["C1E126M4S3=2",

##               "simu_tst/M4S3_top_json.json",

##               "M4S3_top_json.json",

##               "simu_tst/M4S3=_top_json.json",

##               "=====",

##               "==$$%%==123123",

##               "$$%%=123123"]

## # check

## for combo_type_e in ls_st_exas:

##     # split

##     st_connector = "="

##     ls_combo_type_e_split = combo_type_e.split(st_connector)

##     # first check length

##     bl_esr_json = True

##     if len(ls_combo_type_e_split) == 2:

##         [compesti_short_name, esti_top_which] = ls_combo_type_e_split

##         # check type

##         bl_first_is_str = isinstance(compesti_short_name, str)

##         bl_second_is_int = all([st_ele in '1234567890' for st_ele in esti_top_which])

##         if bl_first_is_str + bl_second_is_int < 2:

##             bl_esr_json = False

##             print(f'{bl_esr_json=}, {bl_first_is_str=}, {bl_second_is_int=}, {combo_type_e=}')

##         else:

##             # Print

##             print(f'{bl_esr_json=}, {bl_first_is_str=}, {bl_second_is_int=}')

##     else:

##         bl_esr_json = False

##         print(f'{bl_esr_json=}, {combo_type_e=}')

