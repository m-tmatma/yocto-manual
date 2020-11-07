#!/bin/sh
SCRIPT_DIR=$(cd $(dirname $0); pwd)

docker build -t yocto-manual:latest $SCRIPT_DIR/docker-conf

