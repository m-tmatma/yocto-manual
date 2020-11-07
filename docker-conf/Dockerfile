FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get autoremove --purge -y \
 && apt-get install -y \
    make xsltproc fop \
    python3 python3-dev python3-pip python3-setuptools python3-sphinx python3-yaml python3-sphinx-rtd-theme \
 && rm -rf /var/lib/apt/lists/*

ENV USER yocto
ENV HOME /home/${USER}
ENV SHELL /bin/bash
RUN useradd -m ${USER}
RUN gpasswd -a ${USER} sudo
RUN echo "${USER}:yocto" | chpasswd

