FROM ubuntu:18.04

RUN apt -y update && \
    apt -y install wget pigz software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa

RUN apt update && \
    apt -y install python3.6 python3-pip

RUN pip3 install snakemake==6.15.5
