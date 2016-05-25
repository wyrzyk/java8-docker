#!/bin/bash

CONTAINER_NAME=$1
IMAGE=$2
DOCKERS=`docker ps -a | grep $CONTAINER_NAME | cut -d " " -f 1`

docker stop $DOCKERS \
; docker rm -f $DOCKERS \
; docker rmi -f $IMAGE