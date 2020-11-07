#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOCKER_HOME=$SCRIPT_DIR/container
TARGET_HOME=/home/yocto

mkdir -p $DOCKER_HOME
docker run -it -u yocto:yocto -v $DOCKER_HOME:$TARGET_HOME -w $TARGET_HOME yocto-manual:latest /bin/bash

