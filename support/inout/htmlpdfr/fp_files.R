## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # Imports

## import os

## import shutil

## # cmd

## st_cmd = 'git'

## # Using shutil.which() method to find local path to the *git* command

## spn_path_to_git = shutil.which(st_cmd)

## # Print result

## print(f'{spn_path_to_git=}')


## from pathlib import Path

## # Get the parent folder 2 levels up

## srt_path_git_parent_folder = Path(spn_path_to_git).parents[0]

## srt_path_git_grandparent_folder = Path(spn_path_to_git).parents[1]

## # Print

## print(f'{srt_path_git_parent_folder=}')

## print(f'{srt_path_git_grandparent_folder=}')

## # Search for for the git-bash.exe file in parent and then in the grandparent folder.


## # required packages

## import shutil

## from pathlib import Path

## # find path to git

## st_cmd = 'git'

## spn_path_to_git = shutil.which(st_cmd)

## # find path to git-bash.exe

## spn_path_to_gitbash = ''

## for it_up_iter in [0,1]:

##     # up-tier folder

##     srt_path_git_up_folder = Path(spn_path_to_git).parents[it_up_iter]

##     # search

##     # get file names in folders (not recursively)

##     ls_spn_found_git_bash = [spn_file for spt_srh in [srt_path_git_up_folder]

##                              for spn_file in Path(spt_srh).glob('git-bash.exe')]

##     # if found, length of ls of founds files must be 1

##     if len(ls_spn_found_git_bash) == 1:

##         spn_path_to_gitbash = ls_spn_found_git_bash[0]

##         break

## 

## if spn_path_to_gitbash == '':

##     raise NameError(f'failed to find git-bash, {spn_path_to_git=}')

## else:

##     print(f'Found git-bash: {spn_path_to_gitbash} by searching around {spn_path_to_git=}')


## # Create the Tex Text

## # Note that trible quotes begin first and end last lines

## stf_tex_contents = """\\documentclass[12pt,english]{article}

## \\usepackage[bottom]{footmisc}

## \\usepackage[urlcolor=blue]{hyperref}

## \\begin{document}

## \\title{A Latex Testing File}

## \\author{\\href{http://fanwangecon.github.io/}{Fan Wang} \\thanks{See information \\href{https://fanwangecon.github.io/Tex4Econ/}{Tex4Econ} for more.}}

## \\maketitle

## Ipsum information dolor sit amet, consectetur adipiscing elit. Integer Latex placerat nunc orci.

## \\paragraph{\\href{https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3140132}{Data}}

## Village closure information is taken from a village head survey.\\footnote{Generally students went to schools.}

## \\end{document}"""

## # Print

## print(stf_tex_contents)


## # Relative file name

## srt_file_tex = "_file/"

## sna_file_tex = "test_fan"

## srn_file_tex = srt_file_tex + sna_file_tex + ".tex"

## # Open new file

## fl_tex_contents = open(srn_file_tex, 'w')

## # Write to File

## fl_tex_contents.write(stf_tex_contents)

## # print

## fl_tex_contents.close()


## # Open file Get text

## fl_tex_contents = open(srn_file_tex)

## stf_tex_contents = fl_tex_contents.read()

## print(srn_file_tex)

## 
## # define new and old

## ls_st_old = ['information', 'Latex']

## ls_st_new = ['INFOREPLACE', 'LATEX']

## 
## # zip and loop and replace

## for old, new in zip(ls_st_old, ls_st_new):

##   stf_tex_contents = stf_tex_contents.replace(old, new)

## print(stf_tex_contents)

## 
## # write to file with replacements

## sna_file_edited_tex = "test_fan_edited"

## srn_file_edited_tex = srt_file_tex + sna_file_edited_tex + ".tex"

## fl_tex_ed_contents = open(srn_file_edited_tex, 'w')

## fl_tex_ed_contents.write(stf_tex_contents)

## fl_tex_ed_contents.close()


## import subprocess

## import os

## 
## # Change to local directory so path in tex respected.

## os.chdir("C:/Users/fan/py4econ/support/inout")

## 
## # Convert tex to pdf

## subprocess.call(['C:/texlive/2020/bin/win32/xelatex.exe', '-output-directory',

##                  srt_file_tex, srn_file_edited_tex], shell=False)

## # Clean pdf extraneous output

## ls_st_remove_suffix = ['aux','log','out','bbl','blg']

## for st_suffix in ls_st_remove_suffix:

##     srn_cur_file = srt_file_tex + sna_file_edited_tex + "." + st_suffix

##     if (os.path.isfile(srn_cur_file)):

##         os.remove(srt_file_tex + sna_file_edited_tex + "." + st_suffix)


## import subprocess

## 
## # md file name

## srn_file_md = srt_file_tex + "test_fan_edited.md"

## # Convert tex to md

## subprocess.call(['pandoc', '-s', srn_file_tex, '-o', srn_file_md])

## # Open md file

## fl_md_contents = open(srn_file_md)

## print(fl_md_contents.read())


## from pathlib import Path

## 
## # directories to search in

## ls_spt_srh = ["C:/Users/fan/R4Econ/amto/",

##               "C:/Users/fan/R4Econ/function/"]

## 
## # get file names in folders (not recursively)

## ls_spn_found = [spn_file for spt_srh in ls_spt_srh

##                          for spn_file in Path(spt_srh).glob('*.Rmd')]

## for spn_found in ls_spn_found:

##   print(spn_found)


## from pathlib import Path

## 
## # directories to search in

## ls_spt_srh = ["C:/Users/fan/R4Econ/amto/array/",

##               "C:/Users/fan/R4Econ/amto/list"]

## 
## # get file names recursively in all subfolders

## ls_spn_found = [spn_file for spt_srh in ls_spt_srh

##                          for spn_file in Path(spt_srh).rglob('*.R')]

## for spn_found in ls_spn_found:

##   drive, path_and_file = os.path.splitdrive(spn_found)

##   path_no_suffix = os.path.splitext(spn_found)[0]

##   path_no_file, file = os.path.split(spn_found)

##   file_no_suffix = Path(spn_found).stem

##   print('file:', file, '\ndrive:', drive,

##         '\nfile no suffix:', file_no_suffix,

##         '\nfull path:', spn_found,

##         '\npt no fle:', path_no_file,

##         '\npt no suf:', path_no_suffix, '\n')

## 
