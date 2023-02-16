## ----global_options, include = FALSE-----------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import pprint

## import pandas as pd


## # The nested dictionary

## dc_nested = {

##   11: {

##     'wkr': 1,

##     'occ': 2,

##     'wge': 1.2

##   } ,

##   202: {

##     'wkr': 2,

##     'occ': 2,

##     'wge': None

##   }

## }


## st_key_var_name = "key_node"

## # 1. convert to dataframe

## df_from_nested = pd.DataFrame.from_dict(dc_nested, orient='index')

## # 2. keys from top nest as variable and rename as key_node

## df_from_nested = df_from_nested.reset_index()

## df_from_nested.rename(columns={'index':st_key_var_name}, inplace=True)

## # Print

## print(df_from_nested)


## # 1. convert column to index

## df_from_nested = df_from_nested.set_index(st_key_var_name)

## # 2. Convert to dictionary

## dc_from_df = df_from_nested.to_dict(orient="index")

## # print

## pprint.pprint(dc_from_df)

