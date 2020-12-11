## ----global_options, include = FALSE-----------------------------------------------------------------------------
try(source("../../.Rprofile"))


## NA

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

## 
## elif (estimate is False and isinstance(spec_key_dict, str)) or (estimate is False and isinstance(spec_key_dict, dict)):

## 
## else:

## 
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

