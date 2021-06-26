#!/bin/sh

SCRIPT_DIR=$(cd $(dirname $0); pwd)
DOCKER_HOME=$SCRIPT_DIR/container
TARGET_HOME=/home/yocto
. $SCRIPT_DIR/common.sh

mkdir -p $DOCKER_HOME
docker run -u yocto:yocto -v $DOCKER_HOME:$TARGET_HOME -w $TARGET_HOME $DOCKER_IMAGE ./build.sh

