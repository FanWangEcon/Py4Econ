## ----global_options, include = FALSE------------------------------------------------------------------------------------
try(source("../../.Rprofile"))


## # SSH into EC2 Instance

## ssh ec2-user@ec2-52-23-218-117.compute-1.amazonaws.com

## # Update

## sudo yum update -y

## # install

## sudo amazon-linux-extras install docker -y

## # start service

## sudo service docker start

## sudo service docker status

## # execute docker commands without sudo

## sudo usermod -a -G docker ec2-user

## # log out and in reboot does not change public address

## sudo reboot

## # if docker info does not work, docker start again

## docker info


## # docker folder

## mkdir ~/docker

## # cd into docker folder

## cd ~/docker

## # create a Dockerfile in the docker folder

## # copy the Example Dockerfile below to the Dockerfile

## vim Dockerfile

## # in the docker directory build the docker file

## docker build -t hello-world .


## FROM ubuntu:12.04

## 
## # Install dependencies

## RUN apt-get update -y

## RUN apt-get install -y apache2

## 
## # Install apache and write hello world message

## RUN echo "Hello World!" > /var/www/index.html

## 
## # Configure apache

## RUN a2enmod rewrite

## RUN chown -R www-data:www-data /var/www

## ENV APACHE_RUN_USER www-data

## ENV APACHE_RUN_GROUP www-data

## ENV APACHE_LOG_DIR /var/log/apache2

## 
## EXPOSE 80

## 
## CMD ["/usr/sbin/apache2", "-D",  "FOREGROUND"]


## # list docker images available to run

## docker images


## These could be some images that are shown after running *docker images*:

## 
## REPOSITORY                                                     TAG                 IMAGE ID            CREATED             SIZE

## XXXX7367XXXX.dkr.ecr.us-east-1.amazonaws.com/fanconda       latest              5d1a0df0796e        8 days ago          3.52GB

## XXXX7367XXXX.dkr.ecr.us-east-1.amazonaws.com/fanconda2020   latest              2db5e859d70c        2 weeks ago         3.4GB

## fanconda2020                                                latest              2db5e859d70c        2 weeks ago         3.4GB

## fanconda5                                                   latest              fa55672e7753        2 weeks ago         3.4GB

## fanconda3                                                   latest              2083f1124465        2 weeks ago         2.91GB


## # will be inside now the conda image (base)

## docker run -t -i fanconda /bin/bash

## # can run programs inside here that have been loaded into the image

## python /fanProg/invoke/run.py -A ng_s_t=kap_m0_nld_m_simu=2=3 -B b -C 20180814_beta -D esti_param.beta -E None -F min_graphs -G simu --no-ge --no-multiprocess --no-esti

## # review generated outputs inside docker, results are stored by the run.py program and associated file, to a data folder

## cd /data

## ls

## # To exit the currently running docker

## exit

## # show docker container exited

## docker ps -a


## docker run fancondajmp python /ThaiJMP/invoke/run.py -A ng_s_t=kap_m0_nld_m_simu=2=3 -B b -C 20180814_beta -D esti_param.beta -E None -F min_graphs -G simu --no-ge --no-multiprocess --no-esti


## RUN git clone https://b123451234dfc025a836927PRIVATETOKEND1239@github.com/FanWangEcon/ThaiJMP.git /ThaiJMP/


## # start docker

## sudo service docker start

## # see status

## sudo service docker status


## # check disk usage

## docker system df


## # see docker containers

## docker container ls -a

## # Remove all stopped docker containers

## docker rm $(docker ps -a -q)


## # list all images

## docker images

## docker images --all

## # Clean all images not referenced by a container

## docker image prune

