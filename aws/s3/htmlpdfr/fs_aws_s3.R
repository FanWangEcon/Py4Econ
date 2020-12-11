## ----global_options, include = FALSE------------------------------------------------------------------------------------
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

## spn_local_path_file_name = "C:/Users/fan/py4econ/vig/aws/setup/_data/iris_s3.dta"

## str_bucket_name = "fans3testbucket"

## spn_remote_path_file_name = "_data/iris_s3.dta"

## s3.upload_file(spn_local_path_file_name, str_bucket_name, spn_remote_path_file_name)

