#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)
. $SCRIPT_DIR/common.sh

docker build -t $DOCKER_IMAGE $SCRIPT_DIR/docker-conf

