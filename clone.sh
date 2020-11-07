#!/bin/bash -e

SCRIPT_DIR=$(cd $(dirname $0); pwd)

BRANCH=zeus

# Top dir of source
DOCKER_HOME=$SCRIPT_DIR/container

GIT_DIR=${DOCKER_HOME}/poky

if [ ! -e ${GIT_DIR} ]; then
	#git clone -b ${BRANCH} https://git.yoctoproject.org/git/poky ${GIT_DIR}
	git clone -b ${BRANCH} git://git.yoctoproject.org/poky ${GIT_DIR}
else
	echo ${GIT_DIR} exists: skip
fi

