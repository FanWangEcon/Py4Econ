## ----global_options, include = FALSE-------------------------------------------------------------------
try(source("../../.Rprofile"))


## NA

## ls_model_assumption = ['', 'ITG', 'GE', 'ITG_GE']

## for model_assumption in ls_model_assumption:

##     dc_invoke_main_args_default = \

##         {'speckey': 'b_ge_s_t_bis' if 'GE' in model_assumption else 'ng_s_t',

##          'ge': ('GE' in model_assumption)}

##     print(f'{dc_invoke_main_args_default=}')

