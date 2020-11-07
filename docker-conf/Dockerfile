FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get autoremove --purge -y \
 && apt-get install -y \
    make \
    python3 \
    python3-pip \
 && rm -rf /var/lib/apt/lists/*

RUN pip3 install sphinx sphinx_rtd_theme pyyaml
