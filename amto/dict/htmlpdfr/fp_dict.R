## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import pprint

## import copy as copy


## dc_speckey_dict = {0: 'mpoly_1',

##                    1: 'ng_s_t',

##                    2: 'ng_s_d',

##                    3: 'ng_p_t',

##                    4: 'ng_p_d'}

## for speckey_key, speckey_val in dc_speckey_dict.items():

##     print('speckey_key:' + str(speckey_key) + ', speckey_val:' + speckey_val)


## # select by key

## ls_it_keys = [0, 4]

## dc_speckey_dict_select_by_key = {it_key: dc_speckey_dict[it_key] for it_key in ls_it_keys}

## print(f'{dc_speckey_dict_select_by_key=}')

## # select by value

## ls_st_keys = ['ng_s_d', 'ng_p_d']

## dc_speckey_dict_select_by_val = {it_key: st_val for it_key, st_val in dc_speckey_dict.items()

##                                  if st_val in ls_st_keys}

## print(f'{dc_speckey_dict_select_by_val=}')


## # list update

## dc_invoke_main_args_default = {'speckey': 'ng_s_t',

##                                'ge': False,

##                                'multiprocess': False,

##                                'estimate': False,

##                                'graph_panda_list_name': 'min_graphs',

##                                'save_directory_main': 'simu',

##                                'log_file': False,

##                                'log_file_suffix': ''}

## dc_invoke_main_args = dc_invoke_main_args_default

## dc_invoke_main_args['speckey'] = 'b_ge_s_t_bis'

## dc_invoke_main_args['ge'] = True

## print(f'speckey in dc_invoke_main_args is {dc_invoke_main_args["speckey"]}.')

## print(f'speckey in dc_invoke_main_args_default is {dc_invoke_main_args_default["speckey"]}.')


## # list update

## dc_invoke_main_args_default = {'speckey': 'ng_s_t',

##                                'ge': False,

##                                'multiprocess': False,

##                                'estimate': False,

##                                'graph_panda_list_name': 'min_graphs',

##                                'save_directory_main': 'simu',

##                                'log_file': False,

##                                'log_file_suffix': ''}

## # deep copy and update

## dc_invoke_main_args = copy.deepcopy(dc_invoke_main_args_default)

## dc_invoke_main_args['speckey'] = 'b_ge_s_t_bis'

## dc_invoke_main_args['ge'] = True

## print(f'speckey in dc_invoke_main_args_default is {dc_invoke_main_args_default["speckey"]}.')

## print(f'speckey in dc_invoke_main_args is {dc_invoke_main_args["speckey"]}.')

## # deep copy and update again

## dc_invoke_main_args = copy.deepcopy(dc_invoke_main_args_default)

## dc_invoke_main_args['speckey'] = 'b_ge_s_t_bis_new'

## dc_invoke_main_args['ge'] = False

## print(f'speckey in dc_invoke_main_args is {dc_invoke_main_args["speckey"]}.')


## import datetime

## import pprint

## ls_dc_exa =  [

##     {"file": "mat_matlab",

##      "title": "One Variable Graphs and Tables",

##      "description": "Frequency table, bar chart and histogram",

##      "val": 1,

##      "date": datetime.date(2020, 5, 2)},

##     {"file": "mat_two",

##      "title": "Second file",

##      "description": "Second file.",

##      "val": [1, 2, 3],

##      "date": datetime.date(2020, 5, 2)},

##     {"file": "mat_algebra_rules",

##      "title": "Opening a Dataset",

##      "description": "Opening a Dataset.",

##      "val": 1.1,

##      "date": datetime.date(2018, 12, 1)}

## ]

## pprint.pprint(ls_dc_exa, width=1)


## ls_snm_tex = ["file1.tex", "file2.tex", "file3.tex"]

## ls_snm_pdf = ["file1.pdf", "file2.pdf", "file3.pdf"]

## 
## dc_tex_pdf = {}

## for tex, pdf in zip(ls_snm_tex, ls_snm_pdf):

##   dc_tex_pdf[tex] = pdf

## 
## pprint.pprint(dc_tex_pdf, width=1)


## # string to search through

## ls_str_file_ids = ['mat_matlab', 'mat_algebra_rules']

## # select subset

## ls_dc_selected = [dc_exa

##                   for dc_exa in ls_dc_exa

##                   if dc_exa['file'] in ls_str_file_ids]

## # print

## pprint.pprint(ls_dc_selected, width=1)


## # string to search through

## ls_str_file_ids = ['mat_matlab', 'mat_algebra_rules']

## # select subset

## ls_dc_selected = [dc_exa

##                   for dc_exa in ls_dc_exa

##                   if ((dc_exa['file'] in ls_str_file_ids)

##                       and

##                       (dc_exa['val']== 1))]

## # print

## pprint.pprint(ls_dc_selected, width=1)


## # Dictionary

## dc_test = [{"file": "mat_matlab_1",

##            "title": "One Variable Graphs and Tables",

##            "description": "Frequency table, bar chart and histogram",

##            "val": 1,

##            "date": datetime.date(2020, 5, 2)},

##            {"file": "mat_matlab_2",

##             "val": "mat_matlab_2"}]

## 
## # Drop

## del dc_test[0]['val']

## del dc_test[0]['file']

## del dc_test[0]['description']

## del dc_test[1]['val']

## 
## # Print

## pprint.pprint(dc_test, width=1)

