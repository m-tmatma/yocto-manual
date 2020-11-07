#!/bin/sh -e

cd $(dirname $0)
cd poky/documentation
make pdf DOC=ref-manual

