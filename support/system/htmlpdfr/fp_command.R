## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import subprocess

## cmd_popen = subprocess.Popen(["where", "python"],

##                              stdin=subprocess.PIPE,

##                              stdout=subprocess.PIPE,

##                              stderr=subprocess.PIPE)

## output, err = cmd_popen.communicate()

## print(output.decode('utf-8'))


## # The > command line sends current console output to file.txt

## # cd "C:\users\fan"

## # ls > ls_files.txt

## # rm ls_files.txt

## import os

## import subprocess

## 
## # ls in current location

## cmd_ls = subprocess.Popen(["ls"], stdin=subprocess.PIPE, stdout=subprocess.PIPE, stderr=subprocess.PIPE, shell=True);

## stf_out_cmd_ls, err = cmd_ls.communicate()

## stf_out_cmd_ls = stf_out_cmd_ls.decode('utf-8')

## print(stf_out_cmd_ls)

## 
## srt_file_tex = "_file/"

## sna_file_tex = "test_ls_pyfanvig_stdout"

## srn_file_tex = srt_file_tex + sna_file_tex + ".txt"

## fl_tex_contents = open(srn_file_tex, 'w')

## fl_tex_contents.write(stf_out_cmd_ls)

## fl_tex_contents.close()


## # Run:

## from py.fan.util.rmd.mattexmd import fp_mlxtex2md

## fp_mlxtex2md(spt_root='C:/Users/fan/Math4Econ/matrix_application/', ls_srt_subfolders=None, st_rglob_tex='twogoods.tex', verbose=True)


## # Run:

## python -c "from pyfan.util.rmd.mattexmd import fp_mlxtex2md; fp_mlxtex2md(spt_root='C:/Users/fan/Math4Econ/matrix_application/', ls_srt_subfolders=None, st_rglob_tex='twogoods.tex', verbose=True)"

