#!/bin/bash -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)

# Top dir of source
DOCKER_HOME=$SCRIPT_DIR/container

GIT_DIR=${DOCKER_HOME}/poky

if [ ! -e ${GIT_DIR} ]; then
	#git clone https://git.yoctoproject.org/git/poky ${GIT_DIR}
	git clone git://git.yoctoproject.org/poky ${GIT_DIR}
else
	echo ${GIT_DIR} exists: skip
fi

