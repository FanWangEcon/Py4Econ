## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Example Matlab Function

## stf_m_contents = """\

## a = x + 1

## b = 10*x\

## """

## # Print

## print(stf_m_contents)

## # Open new file

## fl_m_contents = open("_m/fs_test.m", 'w')

## # Write to File

## fl_m_contents.write(stf_m_contents)

## # print

## fl_m_contents.close()


## import subprocess

## cmd_popen = subprocess.Popen(["where", "matlab"],

##                              stdin=subprocess.PIPE,

##                              stdout=subprocess.PIPE,

##                              stderr=subprocess.PIPE)

## output, err = cmd_popen.communicate()

## print(output.decode('utf-8'))


## import os

## # print and set directory

## print(os.getcwd())

## os.chdir('_m')

## print(os.getcwd())

## # run matlab script saved prior

## # running command line: matlab -batch "fs_test; exit"

## cmd_popen = subprocess.Popen(["matlab", "-batch", "\"x=1; fs_test; exit\""],

##                              stdin=subprocess.PIPE,

##                              stdout=subprocess.PIPE,

##                              stderr=subprocess.PIPE)

## output, err = cmd_popen.communicate()

## print(output.decode('utf-8'))


## os.chdir('_m')

## print(os.getcwd())

## print(subprocess.Popen(["matlab", "-batch", "\"x=5; fs_test; exit\""],

##                        stdin=subprocess.PIPE,

##                        stdout=subprocess.PIPE,

##                        stderr=subprocess.PIPE).communicate()[0].decode('utf-8'))

