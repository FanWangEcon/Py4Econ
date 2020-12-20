## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import pprint

## import argparse


## # Start parser for arguments

## parser = argparse.ArgumentParser()

## 
## # Positional argument 1st, will be stored as int

## parser.add_argument('esrtype', type=int, help='positional argument 1st')

## # Positional argument 2nd, will be stored as string

## parser.add_argument('speckey', type=str, help='positional argument 2nd')

## 
## # Optional argument

## parser.add_argument('-A', type=str, default='opt_arg_A_default_str_val')

## 
## # Call with positional argument specified

## # Note that one is bracketed, will be interpreted as int

## print(f"Must specify posi. arg: {parser.parse_args(['1', 'mpoly_1=esti_tinytst_mpoly_13=3=3'])=}")

## # Call with two positional arguments and one optional

## # Note that the first positional argument becomes int, second beomce str

## print(f"With opt arg: {parser.parse_args(['1', '2', '-A', 'abc'])=}")


## # Start parser for arguments

## parser = argparse.ArgumentParser()

## 
## # short name for the first parameter is a, full name is abc, boolean parameter

## parser.add_argument('-abc', '--boolparam', action="store_true", default=False)

## 
## # default is false but turn on option so true

## print(f"default false: {parser.parse_args()=}")

## print(f"default false, set to true, short all: {parser.parse_args(['-abc'])=}")

## print(f"default false, set to true, short part ab for abc: {parser.parse_args(['-ab'])=}")

## print(f"default false, set to true, short part a for abc: {parser.parse_args(['-a'])=}")

## print(f"default false, set to true, full param: {parser.parse_args(['--boolparam'])=}")

## print(f"default false, set to true, full param: {parser.parse_args(['--boolparam'])=}")


## # Start parser for arguments

## parser = argparse.ArgumentParser()

## 
## # Single letter string parameters

## # Note dest name over-rides full name

## parser.add_argument('-cta', '--cttaaaaa', dest="combo_type_a", default='e',

##                     type=str)

## # Multiple letters and integers

## # Note without dest full name is dest

## parser.add_argument('-ctb', '--combo_type_b', default='20201025',

##                     type=str)

## # Multiple letters and integers

## # Note without dest and full name short name is parameter name

## parser.add_argument('-ctc', default=['list_tKap_mlt_ce1a2'],

##                     nargs='+', type=str)

## 
## # Print defaults

## print(f"default false: {parser.parse_args()=}")

## # change parameters

## print(f"default false: {parser.parse_args(['-ctb', '20201111'])=}")


## # Start parser for arguments

## parser = argparse.ArgumentParser()

## 
## # First (and only) positional argument for esrtype:

## parser.add_argument('esrtype', type=int, help='positional argument')

## 
## # Optional argument

## parser.add_argument('-s', dest='speckey', type=str,

##                     default='ng_s_t=esti_tinytst_thin_1=3=3',

##                     help="compute and esti keys and omments")

## 
## # abc and e of comb_type

## parser.add_argument('-cta', dest="combo_type_a", default='e', type=str)

## parser.add_argument('-ctb', dest="combo_type_b", default='20201025', type=str)

## parser.add_argument('-ctc', dest="combo_type_c", default=['list_tKap_mlt_ce1a2'], nargs='+', type=str)

## parser.add_argument('-cte1', dest="combo_type_e1", default=None, type=str)

## parser.add_argument('-cte2', dest="combo_type_e2", default='mpoly_1=esti_tinytst_mpoly_13=3=3', type=str)

## 
## # other parameters

## parser.add_argument('-f', dest="save_directory_main", default='esti')

## 
## # Default, must specify erstype

## print(f"default false: {parser.parse_args(['1'])=}")

## # Print with the nargs+ arguments

## # specified two elements, abc, and efg for nargs ctc, becomes a string list

## print(f"default false: {parser.parse_args(['1', '-ctc', 'abc', 'efg'])=}")

## # one input for ctc, still generates a list

## print(f"default false: {parser.parse_args(['1', '-ctc', 'abc'])=}")

