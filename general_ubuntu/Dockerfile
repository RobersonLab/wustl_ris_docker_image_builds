# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Critical software:
# - build-essential
# - wget
# - pigz
# - software-properties-common
# - rsync
# - zstd compressions
# - Python 3.6, snakemake 6.15.5

# start with ubuntu base image
FROM ubuntu:20.04

# update and install software used on all images
ENV TZ=America/Chicago

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt -y update && \
    apt -y install wget build-essential pigz rsync software-properties-common && \
    wget https://github.com/facebook/zstd/releases/download/v1.5.5/zstd-1.5.5.tar.gz && \
    tar -zxvf zstd-1.5.5.tar.gz

# install zstd
WORKDIR /zstd-1.5.5

RUN make && \
    make install

WORKDIR /

# install specific python version from deadsnakes
# install right version of snakemake
RUN rm -fr /zstd-1.5.5 && \
    rm zstd-1.5.5.tar.gz && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt update && \
    apt -y install python3.6 python3-pip && \
    pip3 install snakemake==6.15.5 && \
    pip3 install pulp==2.7.0
