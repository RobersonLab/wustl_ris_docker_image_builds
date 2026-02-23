# Author: Elisha Roberson
# Edited: 2025-05-30
#
# Critical software:
# - wget
# - Python 3.6, snakemake 6.15.5
# - gtfToGenePred

# start with ubuntu base image
FROM ubuntu:jammy-20250415.1

# update and install software used on all images
ENV TZ=America/Chicago

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
    echo $TZ > /etc/timezone && \
    apt -y update && \
    apt -y install wget software-properties-common build-essential

# install specific python version from deadsnakes
# install right version of snakemake
RUN add-apt-repository -y ppa:deadsnakes/ppa && \
    apt update && \
    apt -y install python3.7 python3-pip && \
    pip3 install snakemake==6.15.5 && \
    pip3 install pulp==2.7.0

# get gtfToGenePred
RUN mkdir /ucsc_util && \
    wget -O /ucsc_util/gtfToGenePred https://hgdownload.cse.ucsc.edu/admin/exe/linux.x86_64/gtfToGenePred && \
    chmod +x /ucsc_util/gtfToGenePred

ENV PATH "$PATH:/ucsc_util"

