## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import pprint


## # Mutable dict as parameters

## def ffi_tab_txt2tex(dc_fmd_sym_sig=None, dc_tex_sig_sym=None):

##     if dc_fmd_sym_sig is None:

##         # defaults

##         dc_fmd_sym_sig = {'***': 1e-2, '**': 5e-2, '*': 1e-1}

##     if dc_tex_sig_sym is None:

##         # defaults

##         dc_tex_sig_sym = {'1e-3': '\\sym{***}',

##                           '1e-2': '\\sym{**}',

##                           '5e-2': '\\sym{*}',

##                           '1e-1': '\\dagger'}

## 
##     # print

##     print(f'{dc_fmd_sym_sig=}')

##     print(f'{dc_tex_sig_sym=}')

## 

## # Call function with default

## ffi_tab_txt2tex()

## # Call function update the first dict

## ffi_tab_txt2tex(dc_fmd_sym_sig = {'***': 1e-3, '**': 1e-2, '*': 5e-2})


## def gen_compesti_spec(it_default_group=None, **kwargs):

##     # A. Define the default parameter keys and values

##     esti_specs = {'esti_method': 'MomentsSimuStates',

##                   'momsets_type': ['a', '20180805a'],

##                   'esti_param_vec_count': 1,

##                   'esti_max_func_eval': 10,

##                   'graph_frequncy': 20}

##     compute_specs = {'cpu': str(1024 * 1),

##                      'memory': str(517),  # only need about 160 mb in reality

##                      'workers': 1,

##                      'aws_fargate': False}

## 
##     # B. For different

##     compesti_specs = {**compute_specs, **esti_specs}

## 
##     # C. Update dictionaries with parameter group values

##     if it_default_group == 1:

##         compesti_specs_updates = {'memory': str(1024 * 55),

##                                   'compute_param_vec_count': 6,

##                                   'esti_param_vec_count': 640}

##         compesti_specs.update(compesti_specs_updates)

## 
##     # D. Update with kward, could append new

##     compesti_specs.update(kwargs)

## 
##     return compesti_specs


## compesti_specs = gen_compesti_spec()

## pprint.pprint(compesti_specs, width=1)


## compesti_specs = gen_compesti_spec(it_default_group=1)

## pprint.pprint(compesti_specs, width=1)


## compesti_specs_updates = {'esti_method': 'MomentsSimuStateszzz',

##                           'moments_type': ['a', '20180805azzz'],

##                           'momsets_type': ['a', '20180805azzz'],

##                           'momsets_type_uuu': ['a', '20180805azzz']}

## compesti_specs = gen_compesti_spec(it_default_group=None, **compesti_specs_updates)

## pprint.pprint(compesti_specs, width=1)


## def gen_compesti_spec_named(it_default_group, esti_method, memory=123, graph_frequncy=10):

##     # A. Define the default parameter keys and values

##     esti_specs = {'esti_method': 'MomentsSimuStates',

##                   'momsets_type': ['a', '20180805a'],

##                   'it_default_group': it_default_group,

##                   'esti_param_vec_count': 1,

##                   'esti_max_func_eval': 10,

##                   'graph_frequncy': graph_frequncy}

##     compute_specs = {'cpu': str(1024 * 1),

##                      'memory': str(memory),  # only need about 160 mb in reality

##                      'workers': 1,

##                      'aws_fargate': False}

## 
##     # B. For different

##     compesti_specs = {**compute_specs, **esti_specs}

## 
##     return compesti_specs


## dc_inputs = {'memory':12345, 'graph_frequncy':2}

## compesti_specs = gen_compesti_spec_named(None, 'MomentsSimuStates', **dc_inputs)

## pprint.pprint(compesti_specs, width=1)

