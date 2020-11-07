FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get autoremove --purge -y \
 && apt-get install -y \
    git-core \
    make \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install sphinx sphinx_rtd_theme pyyaml

ENV USER yocto
ENV HOME /home/${USER}
ENV SHELL /bin/bash
RUN useradd -m ${USER}
RUN gpasswd -a ${USER} sudo
RUN echo "${USER}:yocto" | chpasswd

