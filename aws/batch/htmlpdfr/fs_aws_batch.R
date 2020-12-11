## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import boto3

## import yaml

## import pprint

## 
## # Load YAML file with security info

## srn_aws_yml = "C:/Users/fan/fanwangecon.github.io/_data/aws.yml"

## fl_yaml = open(srn_aws_yml)

## ls_dict_yml = yaml.load(fl_yaml, Loader=yaml.BaseLoader)

## aws_yml_dict_yml = ls_dict_yml[0]

## 
## # Dictionary storing job definition related information

## job_dict = {"jobDefinitionName": 'pyfan-scatterline3-test-rmd',

##             "type": "container",

##             "containerProperties": {

##                 "image": aws_yml_dict_yml['main_aws_id'] + ".dkr.ecr." +

##                          aws_yml_dict_yml['region'] + ".amazonaws.com/fanconda",

##                 "vcpus": int(1),

##                 "memory": int(1024),

##                 "command": ["python",

##                             "/pyfan/pyfan/graph/exa/scatterline3.py",

##                             "-A", "fans3testbucket",

##                             "-B", "111"],

##                 "jobRoleArn": "arn:aws:iam::" + aws_yml_dict_yml['main_aws_id'] +

##                               ":role/" + aws_yml_dict_yml['batch_task_executionRoleArn']

##             },

##             "retryStrategy": {

##                 "attempts": 1

##             }}

## 
## # Use AWS Personal Access Keys etc to start boto3 client

## aws_batch = boto3.client('batch',

##   aws_access_key_id=aws_yml_dict_yml['aws_access_key_id'],

##   aws_secret_access_key=aws_yml_dict_yml['aws_secret_access_key'],

##   region_name=aws_yml_dict_yml['region'])

## 
## # Register a job definition

## response = aws_batch.register_job_definition(

##         jobDefinitionName = job_dict['jobDefinitionName'],

##         type = job_dict['type'],

##         containerProperties = job_dict['containerProperties'],

##         retryStrategy = job_dict['retryStrategy'])

## 
## # Print response

## pprint.pprint(response, width=1)


## import boto3

## import yaml

## import pprint

## 
## import datetime as datetime

## 
## # Using the "jobDefinitionName": 'pyfan-scatterline3-test-rmd' from registering

## jobDefinitionName = 'pyfan-scatterline3-test-rmd'

## 
## # How many child batch processes to start

## # child process differ in: AWS_BATCH_JOB_ARRAY_INDEX

## array_size = 3

## 
## # job name

## timestr = "{:%Y%m%d%H%M%S%f}".format(datetime.datetime.now())

## timesufx = '_' + timestr

## st_jobName = jobDefinitionName + timesufx

## 
## # job queue (needs to design own queue in batch)

## st_jobQueue = 'Spot'

## 
## # start batch service

## # Load YAML file with security info

## srn_aws_yml = "C:/Users/fan/fanwangecon.github.io/_data/aws.yml"

## fl_yaml = open(srn_aws_yml)

## ls_dict_yml = yaml.load(fl_yaml, Loader=yaml.BaseLoader)

## aws_yml_dict_yml = ls_dict_yml[0]

## # Use AWS Personal Access Keys etc to start boto3 client

## aws_batch = boto3.client('batch',

##                          aws_access_key_id=aws_yml_dict_yml['aws_access_key_id'],

##                          aws_secret_access_key=aws_yml_dict_yml['aws_secret_access_key'],

##                          region_name=aws_yml_dict_yml['region'])

## 
## # aws batch submit job

## response = aws_batch.submit_job(

##     jobName=st_jobName,

##     jobQueue=st_jobQueue,

##     arrayProperties={'size': array_size},

##     jobDefinition=jobDefinitionName)

## 

## # Print response

## pprint.pprint(response, width=1)

