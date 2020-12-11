## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import os

## import pathlib

## 
## # suffix

## st_suffix = "_mlt_region_ne"

## srt_folder = "testfolder" + st_suffix + '_other_stuff'

## # path join with os.sep

## srt_path = os.path.join(os.sep, "users", "fan", "pyfan", "vig", "support", "inout", "_folder", "testfolder" + st_suffix, 'subfolder')

## # Path Name

## spn_path = os.path.abspath(srt_path)

## # Create the folder

## pathlib.Path(spn_path).mkdir(parents=True, exist_ok=True)

## # Print

## print(f'{srt_folder=}')

## print(f'{srt_path=}')

## print(f'{spn_path=}')


## # Absolute path just created:

## print(f'{spn_path=}')

## # the suffix used

## print(f'{st_suffix=}')

## # get path without what comes after suffix

## spn_path_no_suffix = spn_path[:spn_path.index(st_suffix)]

## # Create the folder

## pathlib.Path(spn_path_no_suffix).mkdir(parents=True, exist_ok=True)

## # Get the new folder name create

## spt_root_main, srt_new_subfolder = os.path.split(spn_path_no_suffix)

## # Add Slash to new subfolder

## spn_path_no_suffix = spn_path_no_suffix + os.sep

## # Print

## print(f'{spn_path_no_suffix=}')

## print(f'{spt_root_main=}')

## print(f'{srt_new_subfolder=}')


## import pathlib

## 
## # folder root

## srt_folder = "_folder/"

## 
## # new folder

## srt_subfolder = srt_folder + "fa/"

## # new subfolder

## srt_subfolder = srt_subfolder + "faa/"

## # generate folders recursively

## pathlib.Path(srt_subfolder).mkdir(parents=True, exist_ok=True)

## 
## # Open new file

## fl_tex_contents_aa = open(srt_subfolder + "file_a.txt", 'w')

## # Write to File

## fl_tex_contents_aa.write('contents of file a')

## fl_tex_contents_aa.close()

## 
## # Open another new file and save

## fl_tex_contents_ab = open(srt_subfolder + "file_b.txt", 'w')

## # Write to File

## fl_tex_contents_ab.write('contents of file b')

## fl_tex_contents_ab.close()


## # generate folders recursively

## pathlib.Path("_folder/fb/fba/").mkdir(parents=True, exist_ok=True)

## # generate folders recursively

## pathlib.Path("_folder/fc/").mkdir(parents=True, exist_ok=True)

## # generate folders recursively

## pathlib.Path("_folder/fd/").mkdir(parents=True, exist_ok=True)


## import shutil

## # Faster method

## shutil.copyfile('_folder/fa/faa/file_a.txt', '_folder/fb/file_a.txt')

## # More metadat copied, and don't need to specify name

## shutil.copy2('_folder/fa/faa/file_a.txt', '_folder/fb/fba')


## from distutils.dir_util import copy_tree

## 
## # Move contents from fa/faa/ to fc/faa

## srt_curroot = '_folder/fa/'

## srt_folder = 'faa/'

## srt_newroot = '_folder/fc/'

## 
## # Full source and destination

## srt_sourc = srt_curroot + srt_folder

## srt_desct = srt_newroot + srt_folder

## 
## # Check/Create new Directory

## pathlib.Path(srt_desct).mkdir(parents=True, exist_ok=True)

## 
## # Move

## copy_tree(srt_sourc, srt_desct)


## from distutils.dir_util import copy_tree

## # Check/Create new Directory

## pathlib.Path('_folder/fd/faa/fa_images').mkdir(parents=True, exist_ok=True)

## pathlib.Path('_folder/fd/faa/fb_images').mkdir(parents=True, exist_ok=True)

## pathlib.Path('_folder/fd/faa/fc_images').mkdir(parents=True, exist_ok=True)

## pathlib.Path('_folder/fd/faa/fz_img').mkdir(parents=True, exist_ok=True)

## pathlib.Path('_folder/fd/faa/fz_other').mkdir(parents=True, exist_ok=True)

## 
## # Move

## copy_tree('_folder/fa/faa/', '_folder/fd/faa/fa_images')

## copy_tree('_folder/fa/faa/', '_folder/fd/faa/fb_images')

## copy_tree('_folder/fa/faa/', '_folder/fd/faa/fc_images')

## copy_tree('_folder/fa/faa/', '_folder/fd/faa/fz_img')

## copy_tree('_folder/fa/faa/', '_folder/fd/faa/fz_other')

## # Empty Folder

## pathlib.Path('_folder/fd/faa/fd_images').mkdir(parents=True, exist_ok=True)

## pathlib.Path('_folder/fd/faa/fe_images').mkdir(parents=True, exist_ok=True)


## from pathlib import Path

## 
## # the number of files in folder found with search critiera

## st_fle_search = '*.txt'

## ls_spn = [Path(spn).stem for spn in Path('_folder/fd/faa/fa_images').rglob(st_fle_search)]

## print(ls_spn)

## 
## # count files in a non-empty folder

## srn = '_folder/fd/faa/fa_images'

## [spn for spn in Path(srn).rglob(st_fle_search)]

## bl_folder_is_empty = len([spn for spn in Path(srn).rglob(st_fle_search)])>0

## print(bl_folder_is_empty)

## 
## # count files in an empty folder

## srn = '_folder/fd/faa/fd_images'

## [spn for spn in Path(srn).rglob(st_fle_search)]

## bl_folder_is_empty = len([spn for spn in Path(srn).rglob(st_fle_search)])>0

## print(bl_folder_is_empty)


## import os

## 
## # get all folder names in folder

## ls_spt = os.listdir('_folder/fd/faa/')

## print(ls_spt)

## 
## # Select only subfolder names containing _images

## srt = '_folder/fd/faa/'

## st_search = '_images'

## ls_srt_found = [srt + spt

##                 for spt in os.listdir(srt)

##                 if st_search in spt]

## print(ls_srt_found)


## import pathlib

## 
## # Select only subfolder names containing _images

## srt = '_folder/fd/faa/'

## # the folder names must contain _images

## st_srt_srh = '_images'

## # there must be files in the folder with this string

## st_fle_srh = '*.txt'

## 
## # All folders that have String

## ls_srt_found = [srt + spt

##                 for spt in os.listdir(srt)

##                 if st_srt_srh in spt]

## print(ls_srt_found)

## 
## # All folders that have String and that are nonempty

## ls_srt_found = [srt + spt

##                 for spt in os.listdir(srt)

##                 if ((st_srt_srh in spt)

##                     and

##                     (len([spn for spn

##                           in Path(srt + spt).rglob(st_fle_srh)])>0)) ]

## print(ls_srt_found)


## import pathlib

## import os

## import shutil

## from distutils.dir_util import copy_tree

## 
## # 1 Define Parameters

## 
## # Select only subfolder names containing _images

## srt = '_folder/fd/faa/'

## # the folder names must contain _images

## st_srt_srh = '_images'

## # there must be files in the folder with this string

## st_fle_srh = '*.txt'

## 
## # new aggregating folder name

## srt_agg = '_img'

## 
## # folders to move aggregation files towards

## ls_srt_dest = ['_folder/fd/faa/', '_folder/']

## 
## # delete source

## bl_delete_source = False

## 
## # 2 Gather Folders

## ls_ls_srt_found = [[srt + spt, spt]

##                     for spt in os.listdir(srt)

##                     if ((st_srt_srh in spt)

##                         and

##                         (len([spn for spn

##                               in Path(srt + spt).rglob(st_fle_srh)])>0)) ]

## print(ls_ls_srt_found)

## 
## # 3 Loop over destination folders, loop over source folders

## for srt in ls_srt_dest:

## 
##   # Move each folder over

##   for ls_srt_found in ls_ls_srt_found:

## 
##     # Paths

##     srt_source = ls_srt_found[0]

##     srt_dest = os.path.join(srt, srt_agg, ls_srt_found[1])

## 

##     # dest folders

##     pathlib.Path(srt_dest).mkdir(parents=True, exist_ok=True)

## 

##     # move

##     copy_tree(ls_srt_found[0], srt_dest)

## 
## # 4. Delete Sources

## if bl_delete_source:

##   for ls_srt_found in ls_ls_srt_found:

##     shutil.rmtree(ls_srt_found[0])

