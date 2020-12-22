## ----global_options, include = FALSE------------------------------------------------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import platform as platform

## print(platform.release())

## # This assums using an EC2 instance where amzn is in platform name

## if 'amzn' in platform.release():

##     s3_status = True

## else:

##     s3_status = False

## print(s3_status)


## import boto3

## s3 = boto3.client('s3')

## spn_local_path_file_name = "C:/Users/fan/Py4Econ/aws/setup/_data/iris_s3.dta"

## str_bucket_name = "fans3testbucket"

## spn_remote_path_file_name = "_data/iris_s3.dta"

## s3.upload_file(spn_local_path_file_name, str_bucket_name, spn_remote_path_file_name)


## import boto3

## s3 = boto3.client('s3')

## spn_local_path_file_name = "C:/Users/fan/Py4Econ/aws/setup/_data/iris_s3_downloaded.dta"

## str_bucket_name = "fans3testbucket"

## spn_remote_path_file_name = "_data/iris_s3.dta"

## s3.download_file(str_bucket_name, spn_remote_path_file_name, spn_local_path_file_name)


## # ssh into EC2 linux 2 AMI

## ssh -i "G:/repos/ThaiJMP/boto3aws/aws_ec2/pem/fan_wang-key-pair-us_east_nv.pem" ec2-user@3.81.101.142

## # generate data folder

## mkdir data

## # install boto3

## sudo yum install python-pip python3-wheel && Pip install boto3 --user

## # try download file using boto3

## # go into python

## python


## import boto3

## s3 = boto3.client('s3')

## spn_ec2_path_file_name = "/home/ec2-user/data/iris_s3_downloaded.dta"

## str_bucket_name = "fans3testbucket"

## spn_s3_path_file_name = "_data/iris_s3.dta"

## s3.download_file(str_bucket_name, spn_s3_path_file_name, spn_ec2_path_file_name)


## # inside EC2 AMI Linux 2, start dockers

## sudo service docker start

## sudo service docker status

## # see docker images

## docker images

## # run docker container and enter inside

## docker run -t -i fanconda /bin/bash

## # make a data directory and a esti subdirectory

## mkdir data

## cd data

## mkdir esti

## # enter python

## python


## import boto3

## s3 = boto3.client('s3')

## spn_container_path_file_name = "/data/esti/iris_s3_downloaded.dta"

## str_bucket_name = "fans3testbucket"

## spn_s3_path_file_name = "_data/iris_s3.dta"

## s3.download_file(str_bucket_name, spn_s3_path_file_name, spn_container_path_file_name)


## import os

## # This generates a file directly under bucket _data\iris_s3:

## spn_remote_path_file_name_backslash = "_data\\iris_s3_slashbackforward.dta"

## s3.upload_file(spn_local_path_file_name, str_bucket_name, spn_remote_path_file_name_backslash)

## # This allows the folder structure to be clickable:

## spn_remote_path_file_name_forwardslash = spn_remote_path_file_name_backslash.replace(os.sep, '/')

## s3.upload_file(spn_local_path_file_name, str_bucket_name, spn_remote_path_file_name_forwardslash)

## # Print slashs

## print(f'{spn_remote_path_file_name_backslash=}')

## print(f'{spn_remote_path_file_name_forwardslash=}')


## # CD into a directory

## cd /d "G:\S3\fanconda202010\esti"

## # Make a new directory making S3 Directory Name

## mkdir e_20201025x_esr_medtst_list_tKap_mlt_ce1a2

## # cd into the directory just made

## cd /d "G:\S3\thaijmp202010\esti\e_20201025x_esr_medtst_list_tKap_mlt_ce1a2"

## # copy all results from the s3 folder's subfolders including subfolders, excluding images

## aws s3 cp ^

##     s3://fanconda202010/esti/e_20201025x_esr_medtst_list_tKap_mlt_ce1a2/ . ^

##     --recursive --exclude "*.png"

