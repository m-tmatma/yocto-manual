#!/bin/sh -e

cd $(dirname $0)
cd poky/documentation

make pdf DOC=sdk-manual
make pdf DOC=bsp-guide
make pdf DOC=dev-manual
make pdf DOC=kernel-dev
make pdf DOC=ref-manual
make pdf DOC=yocto-project-qs
make pdf DOC=profile-manual
make pdf DOC=toaster-manual

