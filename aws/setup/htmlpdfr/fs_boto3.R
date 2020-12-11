## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## import boto3

## import yaml

## import pprint

## 
## # Load YAML file

## son_aws_yml = "C:/Users/fan/fanwangecon.github.io/_data/aws.yml"

## fl_yaml = open(son_aws_yml)

## ls_dict_yml = yaml.load(fl_yaml, Loader=yaml.BaseLoader)

## # Get the first element of the yml list of dicts

## aws_yml_dict_yml = ls_dict_yml[0]

## 
## # Use AWS Personal Access Keys etc to start boto3 client

## aws_batch = boto3.client('batch',

##   aws_access_key_id=aws_yml_dict_yml['aws_access_key_id'],

##   aws_secret_access_key=aws_yml_dict_yml['aws_secret_access_key'],

##   region_name=aws_yml_dict_yml['region'])

## 
## # Show a compute environment Delete some Personal Information

## ob_response = aws_batch.describe_compute_environments(computeEnvironments=["SpotEnv2560"])

## ob_response['ResponseMetadata'] = ''

## ob_response['computeEnvironments'][0]['ecsClusterArn'] = ''

## ob_response['computeEnvironments'][0]['serviceRole'] = ''

## ob_response['computeEnvironments'][0]['computeResources']['instanceRole'] = ''

## pprint.pprint(ob_response, width=1)

