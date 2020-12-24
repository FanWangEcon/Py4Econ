## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Import Pathlib and panddas

## import pandas as pd

## import numpy as np

## from pathlib import Path

## import time

## 
## # replace mt_abc line by the matrix currently used

## mt_abc = np.column_stack(np.random.randint(10, size=(5, 3)))

## # Save results to C:\Users\fan\Downloads\PythonDebug, generate if does not exist.

## srt_pydebug = Path.joinpath(Path.home(), "Downloads", "PythonDebug")

## srt_pydebug.mkdir(parents=True, exist_ok=True)

## # Matrix to data frame with columns and row names

## df2export = pd.DataFrame(data=mt_abc,

##                          index=['r' + str(it_col) for it_col in np.array(range(1, mt_abc.shape[0] + 1))],

##                          columns=['c' + str(it_col) for it_col in np.array(range(1, mt_abc.shape[1] + 1))])

## # Export File Name

## spn_csv_path = Path.joinpath(srt_pydebug, f'{mt_abc=}'.split('=')[0] + '-' + time.strftime("%Y%m%d-%H%M%S") + '.csv')

## # export

## df2export.to_csv(spn_csv_path, sep=",")

## 
## # print

## print(f'{srt_pydebug=}')

## print(f'{spn_csv_path=}')

