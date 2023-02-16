[![Star](https://img.shields.io/github/stars/fanwangecon/Py4Econ?style=social)](https://github.com/FanWangEcon/Py4Econ/stargazers) [![Fork](https://img.shields.io/github/forks/fanwangecon/Py4Econ?style=social)](https://github.com/FanWangEcon/Py4Econ/network/members) [![Star](https://img.shields.io/github/watchers/fanwangecon/Py4Econ?style=social)](https://github.com/FanWangEcon/Py4Econ/watchers) [![DOI](https://zenodo.org/badge/320403946.svg)](https://zenodo.org/badge/latestdoi/320403946)

The work-in-progress [Py4Econ](https://github.com/FanWangEcon/Py4Econ) python examples repository.

> [**bookdown site**](https://fanwangecon.github.io/Py4Econ/bookdown) and [**bookdown pdf**](https://fanwangecon.github.io/Py4Econ/bookdown/Data-Structures-and-Cloud-Services-with-Python.pdf).

Files are written with [RMD](https://rmarkdown.rstudio.com/). Materials are gathered from various [projects](https://fanwangecon.github.io/research) in which python code is used for research and paper-administrative tasks. Bullet points show which python packages/functions are used to achieve various objectives. This is not a python package, but a set of example files. The [pyfan](https://pyfan.readthedocs.io/en/latest/) package repository provides some associated programs.

From other repositories: for research support toolboxes, see [matlab toolbox](https://fanwangecon.github.io/mecontools/), [r toolbox](https://fanwangecon.github.io/recontools/), and [python toolbox](https://pyfan.readthedocs.io/en/latest/); for code examples, see [matlab examples](https://fanwangecon.github.io/m4econ/), [stata examples](https://fanwangecon.github.io/stata4econ/), [r examples](https://fanwangecon.github.io/r4econ/), [python examples](https://fanwangecon.github.io/py4econ/), and [latex examples](https://fanwangecon.github.io/tex4econ/); for packaging example, see [pkgtestr](http://fanwangecon.github.io/pkgtestr) for developing r packages; for teaching, see [intro mathematics for economists](https://fanwangecon.github.io/math4econ/), and [intro statistics for undergraduates](https://fanwangecon.github.io/stat4econ/). see [here](https://github.com/fanwangecon) for all of [fan](https://fanwangecon.github.io/)'s public repositories.

Please contact [FanWangEcon](https://fanwangecon.github.io/) for issues or problems.

[![](https://img.shields.io/github/last-commit/fanwangecon/Py4Econ)](https://github.com/FanWangEcon/Py4Econ/commits/master) [![](https://img.shields.io/github/commit-activity/m/fanwangecon/Py4Econ)](https://github.com/FanWangEcon/Py4Econ/graphs/commit-activity) [![](https://img.shields.io/github/issues/fanwangecon/Py4Econ)](https://github.com/FanWangEcon/Py4Econ/issues) [![](https://img.shields.io/github/issues-pr/fanwangecon/Py4Econ)](https://github.com/FanWangEcon/Py4Econ/pulls)

# 1  Data Structures

## 1.1  Numbers, Strings, Lists and Tuples

1. [Basic Number Numeric Manipulations](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_numeric.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array//fs_numeric.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array/htmlpdfr/fs_numeric.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_numeric.html)
	+ Loop over a list of numbers where the first and second digits have different interpretations.
	+ **py**: *int(np.floor(it_num/10)) + it_num%10*
	+ **numpy**: *floor + arange*
2. [Define and Unpack Tuple](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_tuple.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array//fs_tuple.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array/htmlpdfr/fs_tuple.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_tuple.html)
	+ Define/deal multiple variables on the same line
	+ Define tuple in python with and without parenthesis, unpack tuple, get subset of elements.
	+ Access tuple element and fail to mutate tuple element.
	+ **py**: *isinstance(tp_abc, tuple)*
3. [List Manipulations and Defaults](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_list.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array//fs_list.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array/htmlpdfr/fs_list.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_list.html)
	+ Conditional statements based on list length and element value.
	+ Provide default for element of a list when list does not have that element.
	+ **py**: *lambda + join + append() + if len(X) >= 3 and X[2] is not None + if elif else*
4. [Python String Manipulation Examples](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_ary_string.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array//fs_ary_string.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/array/htmlpdfr/fs_ary_string.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/array/htmlpdfr/fs_ary_string.html)
	+ Count unique elements of a string array, generate frequency list.
	+ Search for substring, replace string, wrap string.
	+ Display and format numeric string with fstring.
	+ Change the decimal rounding given a list of estimates and standard error string arrays.
	+ **py**: *zip() + upper() + round() + float() + split() + replace() + ascii_lowercase() + set() + join() + join(filter(None, ls_st)) + all([st_i in '1234567890' for st_i in st])*
	+ **textwrap**: *fill(st, width = 20)*
	+ **fstring**: *f + f'{fl_esti_rounded:.{it_round_decimal}f}'*
	+ **random**: *choice*

## 1.2  Dictionary

1. [Python Dictionary Examples and Usages](https://fanwangecon.github.io/Py4Econ/amto/dict/htmlpdfr/fs_dict.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/dict//fs_dict.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/dict/htmlpdfr/fs_dict.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/dict/htmlpdfr/fs_dict.html)
	+ Generate a dictionary, loop through a dictionary. 
	+ List comprehension with dictionary. 
	+ **py**: *dc = {'key': "name", 'val': 1} + update() + dc.items() + zip()*
	+ **copy**: *deepcopy*

## 1.3  Numpy Arrays

1. [Numpy Combine Arrays to Matrix](https://fanwangecon.github.io/Py4Econ/amto/matrix/htmlpdfr/fs_array2mat.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/matrix//fs_array2mat.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/amto/matrix/htmlpdfr/fs_array2mat.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/amto/matrix/htmlpdfr/fs_array2mat.html)
	+ Arrays to matrix.
	+ **numpy**: *column_stack() + random.choice() + reshape()*

# 2  Pandas

## 2.1  Panda Basics

1. [Python Pandas Conditional Selection of Selectiotn Rows and Columns](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_select.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics//fs_select.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics/htmlpdfr/fs_select.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_select.html)
	+ Select subset of rows or columns based on cell value conditions.
	+ **pandas**: *pd.DataFrame() + replace(['Zvcss', 'Dugei'], 'Zqovt') + df.loc[df['c5'] == 'Zqovt']*
2. [Convert Data Structures to Pandas Dataframes](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_convert2panda.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics//fs_convert2panda.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics/htmlpdfr/fs_convert2panda.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_convert2panda.html)
	+ Converted nested dictionary to pandas dataframe.
	+ Convert from pandas dataframe to a nested dictionary.
	+ **pandas**: *DataFrame.from_dict() + reset_index() + set_index() + to_dict()*
3. [Dataframe Export as CSV with Automatic File Path and Name](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_inout_files.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics//fs_inout_files.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/panda/basics/htmlpdfr/fs_inout_files.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/panda/basics/htmlpdfr/fs_inout_files.html)
	+ Export a pandas dataframe to csv, store automatically in user home download folder.
	+ File name contains the variable name, use fstring to get variable name as file string.
	+ **pandas**: *df2export.to_csv(spn_csv_path, sep=",")*
	+ **pathlib**: *home() + joinpath() + mkdir(parents=True, exist_ok=True)*
	+ **fstring**: *f'{mt_abc=}'.split('=')[0]*
	+ **time**: *strftime("%Y%m%d-%H%M%S")*

# 3  Functions

## 3.1  Function Arguments and Returns

1. [Python Function Data Type Handling](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_datatypes.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args//fs_datatypes.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args/htmlpdfr/fs_datatypes.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_datatypes.html)
	+ Check if parameter is string or integer, conditional execution and exception handling.
	+ Check if parameter is string or an integer between some values. 
	+ **py**: *type + isinstance(abc, str) + isinstance(abc, int) + raise + try except*
2. [Tuple and Dictionary as Arguments with args and kwargs](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_args.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args//fs_func_args.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args/htmlpdfr/fs_func_args.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_args.html)
	+ Update default parameters with dictionary that replaces and appends additional key-value pairs using kwargs.
	+ Pass a dictionary for named arguments to a function.
	+ Python function None as default for mutable list argument.
	+ **python**: *dict3 = {dict1, dict2} + dict1.update(dict2) + func(par1='val1', kwargs)*
3. [Command Line Argument Parsing Positional and Optional Arguments](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_args_cmd.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args//fs_func_args_cmd.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args/htmlpdfr/fs_func_args_cmd.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_args_cmd.html)
	+ Parse parameters entered via command line to call a python script.
	+ Optional and positional arguments of different data types (int, str, etc.).
	+ Default values, allowed list of values.
	+ **argparse**: *parser.add_argument() + parser.parse_args()*
4. [Function value returns](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_returns.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args//fs_func_returns.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/args/htmlpdfr/fs_func_returns.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/args/htmlpdfr/fs_func_returns.html)
	+ Return one or multiple values from function.
	+ **python**: *return a, b, c*

## 3.2  Operators

1. [Python Operators](https://fanwangecon.github.io/Py4Econ/function/operators/htmlpdfr/fs_python_operators.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/operators//fs_python_operators.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/operators/htmlpdfr/fs_python_operators.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/operators/htmlpdfr/fs_python_operators.html)
	+ Python single line conditional tenary opoerators.
	+ **python**: *st_a if st_z in st_x else st_b*

## 3.3  Exceptions

1. [Python Raise, Try and Catch Exceptions](https://fanwangecon.github.io/Py4Econ/function/errors/htmlpdfr/fs_python_exceptions.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/function/errors//fs_python_exceptions.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/function/errors/htmlpdfr/fs_python_exceptions.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/function/errors/htmlpdfr/fs_python_exceptions.html)
	+ Raise an Exception in a python function, try and catch and print to string.
	+ Trace full exception stack.
	+ **python**: *raise + try except + ValueError + TypeError*
	+ **traceback**: *print_exc()*

# 4  Statistics

## 4.1  Linear Regression

1. [Regression in Python with Statsmodels](https://fanwangecon.github.io/Py4Econ/stats/linreg/htmlpdfr/fs_linreg.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/stats/linreg//fs_linreg.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/stats/linreg/htmlpdfr/fs_linreg.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/stats/linreg/htmlpdfr/fs_linreg.html)
	+ Linear regression in Python with Statsmodels.
	+ Not full ranked regression, more coefficients than observations. 
	+ **statsmodels**: *OLS() + add_constant()*

## 4.2  Markov Process

1. [Markov Transition Conditional Probability Check Sum to 1](https://fanwangecon.github.io/Py4Econ/stats/markov/htmlpdfr/fs_trans_mat_prob_check.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/stats/markov//fs_trans_mat_prob_check.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/stats/markov/htmlpdfr/fs_trans_mat_prob_check.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/stats/markov/htmlpdfr/fs_trans_mat_prob_check.html)
	+ Generate a sample 50 by 50 markov transition matrix.
	+ Check row sums for approximate equality to 1.
	+ **numpy**: *allclose + reshape + sum*

# 5  Mathematics

## 5.1  Differentiate

1. [Derivatives Involving Normal CDF and PDF Analytically and with Sympy](https://fanwangecon.github.io/Py4Econ/math/derivative/htmlpdfr/fs_diff_normcdf.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/math/derivative//fs_diff_normcdf.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/math/derivative/htmlpdfr/fs_diff_normcdf.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/math/derivative/htmlpdfr/fs_diff_normcdf.html)
	+ Sympy derivative examples, the chain rule. Analytically and numerically check against sympy results.
	+ Derivatives of standard normal CDF and normal PDF.
	+ **py**: *lambda*
	+ **numpy**: *sqrt + exp       + column_stack(()).astype(float) + array + empty + linspace*
	+ **scipy.stats**: *norm.pdf + norm.cdf*
	+ **sym**: *diff + subs + simplify*

## 5.2  Production Functions


## 5.3  CES Production Functions

1. [Constant Elasticity of Substitution Production Function with Multiple Inputs](https://fanwangecon.github.io/Py4Econ/prod/ces/htmlpdfr/fs_ces_multi_input.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/prod/ces//fs_ces_multi_input.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/prod/ces/htmlpdfr/fs_ces_multi_input.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/prod/ces/htmlpdfr/fs_ces_multi_input.html)
	+ Optimal expenditure minimizing input choices and aggregate marginal cost given a Constant Elasticity of Substitution production function with N inputs. 
	+ **numpy**: *dot + outer + multiply + matmul + dot*

# 6  Tables and Graphs

## 6.1  Matplotlib Base Plots

1. [Mabplotlib Scatter and Line Plots](https://fanwangecon.github.io/Py4Econ/tabgraph/baseplot/htmlpdfr/fp_plot_base.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/tabgraph/baseplot//fp_plot_base.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/tabgraph/baseplot/htmlpdfr/fp_plot_base.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/tabgraph/baseplot/htmlpdfr/fp_plot_base.html)
	+ Plot several arrays of data, grid, figure title, and line and point patterns and colors.
	+ Plot out random walk and white noise first-order autoregressive processes.
	+ **matplotlib**: *subplots() + ax.plot() + ax.legend() + ylabel() + xlabel() + title() + grid() + show()*
	+ **numpy**: *random.normal() + random.seed() + cumsum() + arange()*
2. [Mabplotlib Text Plots](https://fanwangecon.github.io/Py4Econ/tabgraph/baseplot/htmlpdfr/fp_plot_text.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/tabgraph/baseplot//fp_plot_text.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/tabgraph/baseplot/htmlpdfr/fp_plot_text.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/tabgraph/baseplot/htmlpdfr/fp_plot_text.html)
	+ Print text as figure.
	+ **matplotlib**: *ax.text()*
	+ **textwrap**: *fill()*
	+ **json**: *dump()*

# 7  Amazon Web Services

## 7.1  AWS Setup

1. [AWS Account Set-up and Start Instance](https://fanwangecon.github.io/Py4Econ/aws/setup/htmlpdfr/fs_aws_setup.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/setup//fs_aws_setup.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/setup/htmlpdfr/fs_aws_setup.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/aws/setup/htmlpdfr/fs_aws_setup.html)
	+ Generate keypair on AWS, launch instance, launch security, ssh access, and AWSCLI.
	+ **ssh**: *ssh-agent + ssh-keygen + ssh ec2-user@ec2-52-23-218-117.compute-1.amazonaws.com*
	+ **aws**: *aws ec2 start-instances + aws ec2 stop-instances + systemctl start amazon-ssm-agent*
2. [Boto3 Client Service Communications](https://fanwangecon.github.io/Py4Econ/aws/setup/htmlpdfr/fs_boto3.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/setup//fs_boto3.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/setup/htmlpdfr/fs_boto3.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/aws/setup/htmlpdfr/fs_boto3.html)
	+ Start AWS services, send requests etc via boto3. 
	+ **boto3**: *boto3.client(service, aws_access_key_id, aws_secret_access_key, region_name)*

## 7.2  S3

1. [AWS S3 Uploading, Downloading and Syncing, Locally, EC2 and in Docker Container](https://fanwangecon.github.io/Py4Econ/aws/s3/htmlpdfr/fs_aws_s3.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/s3//fs_aws_s3.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/s3/htmlpdfr/fs_aws_s3.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/aws/s3/htmlpdfr/fs_aws_s3.html)
	+ From EC2 or local computer upload files to S3 folders.
	+ Download sync folders with exclusions between local and S3 folders.
	+ Download file from S3 to local computer, an EC2 Linux computer, or into a Docker Container.
	+ **py**: *platform.release()*
	+ **boto3**: *boto3.client('s3') + s3.upload_file() + s3.download_file()*
	+ **os**: *sep*

## 7.3  Batch

1. [AWS Batch, Batch Array](https://fanwangecon.github.io/Py4Econ/aws/batch/htmlpdfr/fs_aws_batch.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/batch//fs_aws_batch.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/aws/batch/htmlpdfr/fs_aws_batch.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/aws/batch/htmlpdfr/fs_aws_batch.html)
	+ Set up python function that uses AWS_BATCH_JOB_ARRAY_INDEX.
	+ Register batch task and submit batch array tasks using ECR image, and save results to S3.
	+ Batch Array status check until success.
	+ **yaml**: *load()*
	+ **boto3**: *client() + register_job_definition(jobDefinitionName, type, containerProperties, retryStrategy) + aws_batch.submit_job(jobName, jobQueue, arrayProperties={'size':10}, jobDefinition) + aws_batch.describe_jobs()*

# 8  Docker Container

## 8.1  Docker Setup

1. [Docker Container Set-Up and Run on AWS](https://fanwangecon.github.io/Py4Econ/docker/setup/htmlpdfr/fs_docker_setup.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/docker/setup//fs_docker_setup.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/docker/setup/htmlpdfr/fs_docker_setup.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/docker/setup/htmlpdfr/fs_docker_setup.html)
	+ Install Docker on AWS and build Docker image.
	+ Start docker container and run programs inside Docker.
	+ **aws**: *ssh + yum update -y + amazon-linux-extras install docker -y*
	+ **docker**: *service docker start + service docker status + docker build + docker images + docker image prune + docker run -t -i fanconda /bin/bash + python /fanProg/invoke/run.py + docker ps -a + docker system df + docker container ls -a*
2. [AWS Docker Elastic Container Registery (ECR) Update and Push](https://fanwangecon.github.io/Py4Econ/docker/setup/htmlpdfr/fs_docker_ecr.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/docker/setup//fs_docker_ecr.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/docker/setup/htmlpdfr/fs_docker_ecr.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/docker/setup/htmlpdfr/fs_docker_ecr.html)
	+ Update and push to Elastic Container Registry (ECR) with newly built Docker image.
	+ Pull from Elastic Container Registry docker image.
	+ **scp**: *scp -o StrictHostKeyChecking=accept-new -i*
	+ **aws**: *aws ecr get-login*
	+ **docker**: *docker login + docker build + docker tag + docker push + docker pull*

# 9  Get Data

## 9.1  Environmental Data

1. [CDS ECMWF Global Enviornmental Data Download](https://fanwangecon.github.io/Py4Econ/getdata/envir/htmlpdfr/fs_ecmwf.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/getdata/envir//fs_ecmwf.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/getdata/envir/htmlpdfr/fs_ecmwf.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/getdata/envir/htmlpdfr/fs_ecmwf.html)
	+ Using Python API get get ECMWF ERA5 data.
	+ Dynamically modify a python API file, run python inside a Conda virtual environment with R-reticulate.
	+ **r**: *file() + writeLines() + unzip() + list.files() + unlink()*
	+ **r-reticulate**: *use_python() + Sys.setenv(RETICULATE_PYTHON = spth_conda_env)*

# 10  System and Support

## 10.1  Command Line

1. [Execute Python from Command Line and Run Command Line in Python](https://fanwangecon.github.io/Py4Econ/support/system/htmlpdfr/fp_command.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/system//fp_command.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/system/htmlpdfr/fp_command.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/system/htmlpdfr/fp_command.html)
	+ Run python functions from command line.
2. [Run Matlab Command Line Operations](https://fanwangecon.github.io/Py4Econ/support/system/htmlpdfr/fp_matlab.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/system//fp_matlab.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/system/htmlpdfr/fp_matlab.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/system/htmlpdfr/fp_matlab.html)
	+ Generate a matlab script and run the script with parameters.
	+ **subprocess**: *cmd = Popen(ls_str, stdin=PIPE, stdout=PIPE, stderr=PIPE) + cmd.communicate()*
	+ **decode**: *decode('utf-8')*
	+ **os**: *chdir() + getcdw()*

## 10.2  File In and Out

1. [Searching for Programs, Reading and Writing to File Examples](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_files.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout//fp_files.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout/htmlpdfr/fp_files.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_files.html)
	+ Check the path to a particular installed program.
	+ Get the parent folder of the current file.
	+ Reading from file and replace strings in file.
	+ Convert text file to latex using pandoc and clean.
	+ **py**: *open() + write() + replace() + [c for b in [[1,2],[2,3]] for c in b]*
	+ **subprocess**: *call()*
	+ **pathlib**: *Path().rglob() + Path().stem + Path(spn).parents[1]*
	+ **os**: *remove() + listdir() + path.isfile() + path.splitdrive() + path.splitext() + path.split()*
	+ **shutil**: *which()*
2. [Python Directory and Folder Operations](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_folders.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout//fp_folders.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout/htmlpdfr/fp_folders.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_folders.html)
	+ Join folder names to form absolute path.
	+ Folder path slash conversion from system os.sep to forward slash.
	+ Generate new folders and files, with existing folder substrings.
	+ Generate subfolder recursively.
	+ **py**: *open(srt, 'w') + write() + close()*
	+ **os**: *os.sep + os.listdir() + os.path.abspath() + os.path.abspath(os.path.join(os.sep, 'users', 'fan')) + os.path.join('/', 'c:', 'fa', 'fb') + spn_path.replace(os.sep, '/')*
	+ **pathlib**: *Path(srt).mkdir(parents=True, exist_ok=True) + [Path(spn).stem for spn in Path(srt).rglob(st)]*
	+ **shutil**: *shutil.copyfile('/fa/fl.txt', '/fb/fl.txt') + shutil.copy2('/fa/fl.txt', '/fb') + shutil.rmtree('/fb')*
	+ **distutils**: *dir_util.copy_tree('/fa', '/fb')*
3. [Python Yaml File Parsing](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_yaml.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout//fp_yaml.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/inout/htmlpdfr/fp_yaml.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/inout/htmlpdfr/fp_yaml.html)
	+ Parse and read yaml files.
	+ **yaml**: *load(fl_yaml, Loader=yaml.BaseLoader)       + dump()*
	+ **pprint**: *pprint.pprint(ls_dict_yml, width=1)*

## 10.3  Install Python

1. [Basic Conda Setup Instructions](https://fanwangecon.github.io/Py4Econ/support/install/htmlpdfr/fs_install_basics.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/install//fs_install_basics.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/install/htmlpdfr/fs_install_basics.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/install/htmlpdfr/fs_install_basics.html)
	+ Conda and git installations
	+ **bash**: *where*

## 10.4  Documentation

1. [Python Documentation Numpy Doc](https://fanwangecon.github.io/Py4Econ/support/documentation/htmlpdfr/fs_numpy_doc.html): [**rmd**](https://github.com/fanwangecon/Py4Econ/blob/master/support/documentation//fs_numpy_doc.Rmd) \| [**pdf**](https://github.com/fanwangecon/Py4Econ/blob/master/support/documentation/htmlpdfr/fs_numpy_doc.pdf) \| [**html**](https://fanwangecon.github.io/Py4Econ/support/documentation/htmlpdfr/fs_numpy_doc.html)
	+ Numpy documentation examples.

----
Please contact [![](https://img.shields.io/github/followers/fanwangecon?label=FanWangEcon&style=social)](https://github.com/FanWangEcon) [![](https://img.shields.io/twitter/follow/fanwangecon?label=%20&style=social)](https://twitter.com/fanwangecon) for issues or problems.

[![DOI](https://zenodo.org/badge/320403946.svg)](https://zenodo.org/badge/latestdoi/320403946)

![RepoSize](https://img.shields.io/github/repo-size/fanwangecon/Py4Econ)
![CodeSize](https://img.shields.io/github/languages/code-size/fanwangecon/Py4Econ)
![Language](https://img.shields.io/github/languages/top/fanwangecon/Py4Econ)
![Release](https://img.shields.io/github/downloads/fanwangecon/Py4Econ/total)
![License](https://img.shields.io/github/license/fanwangecon/Py4Econ)

