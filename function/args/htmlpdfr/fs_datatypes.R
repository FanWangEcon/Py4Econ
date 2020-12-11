## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## NA

## # define the function

## def get_speckey_dict(gn_speckey=None):

##     if isinstance(gn_speckey, str):

##         print(f'{gn_speckey=} is a string')

##     elif isinstance(gn_speckey, int):

##         print(f'{gn_speckey=} is an integer')

##     else:

##         raise TypeError(f'{gn_speckey=} was not a string or an integer')

## # Call function with integer

## get_speckey_dict(1)

## # Call function with string

## get_speckey_dict('abc')

## # Call function with a list

## try:

##     get_speckey_dict(['abc'])

## except TypeError as e:

##     print(f'Exception{e=}')


## # condition check function

## def check_condition(gn_invoke_set):

## 
##   bl_is_str = isinstance(gn_invoke_set, str)

##   bl_is_int = isinstance(gn_invoke_set, int)

##   if bl_is_int:

##     bl_between = (gn_invoke_set >= 1 and gn_invoke_set <= 11)

##   else:

##     bl_between = False

## 

##   if bl_between or bl_is_str:

##       print(f'{gn_invoke_set=}')

##   else:

##       print(f'{gn_invoke_set=} is not string or an integer between 1 and 11')

## 

## # call with string or integer

## check_condition('string')

## check_condition(11)

## check_condition(1)

## check_condition(199)

## check_condition(['abc'])

