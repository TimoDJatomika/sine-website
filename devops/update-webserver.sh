#!/bin/bash
# author: Timo Stankowitz <timo@brainoftimo.com>
# create date: 2016-11-08

# script to autodeploy a docker container after a auto build
imageName="timodjatomika/sine-website"

## check if container is allready running
#docker ps | grep sine-website > /dev/null 2>&1
#checkContainerRunning=$?
#
#if [ "$checkContainerRunning" == "0" ]; then
#   # stop and kill container
##   docker kill sine-website
#fi

# kill all docker containers
docker kill $(docker ps -q)

# pull new image from docker hub
docker pull $imageName

# and finally start the new docker container
docker run -d -p 80:80 $imageName
