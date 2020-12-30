## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## NA

## # define the function

## def ffi_error_test(gn_speckey=None):

##     if isinstance(gn_speckey, int):

##         print(f'{gn_speckey=} is an integer')

##     else:

##         raise TypeError(f'{gn_speckey=} is not an integer')

## # Call function with integer

## error_test(1)

## # Call function with string

## try:

##     ffi_error_test('abc')

## except TypeError as error:

##     print('Caught this error: ' + repr(error))


## import traceback

## import numpy as np

## 
## ls_ob_inputs = [2, ['abc','efg'], 1, 123]

## 
## for ob_input in ls_ob_inputs:

##     print(f'try input {ob_input=} with the error_test function:')

##     try:

##         ffi_error_test(ob_input)

##     except TypeError as error:

##         traceback.print_exc()

##         print('Caught this error: ' + repr(error))


## # ls_st_spec_key_dict = ['NG_S_D', 'NG_S_D=KAP_M0_NLD_M_SIMU=2=3']

## # st_connector = '='

## # ls_st_esti_simu = ['esti', 'simu']

## # for st_spec_key_dict in ls_st_spec_key_dict:

## #   for st_esti_simu in ls_st_esti_simu:

## #     if st_esti_simu == 'simu':

## #       if len(st_spec_key_dict.split(st_connector)) and

## #         print('simulate with ' + st_spec_key_dict)

## 
## if estimate and not isinstance(spec_key_dict, str):

##     pass

## elif (estimate is False and isinstance(spec_key_dict, str)) or (estimate is False and isinstance(spec_key_dict, dict)):

##     pass

## else:

##     st_error = 'speckey=' + speckey + ' and estimate=' + str(estimate)

##     raise ValueError(st_error)


## # estimate at each initial random points

## for it_esti_ctr in range(esti_param_vec_count):

##     # Update the 3rd element of combo_type, which determines which draw index to use

##     combo_type[3] = it_esti_ctr

##     try:

##         invoke_run_main.invoke_main(combo_type, **dc_invoke_main_args)

##     except Exception:

##         logging.critical(f'Finished this {it_esti_ctr=} of {range(esti_param_vec_count)=}')

