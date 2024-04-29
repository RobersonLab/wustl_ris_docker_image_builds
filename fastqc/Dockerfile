# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Software:
# FastQC

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install unzip default-jre && \
    mkdir /tools

WORKDIR /tools

RUN  wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.12.1.zip && \
     unzip fastqc_v0.12.1.zip && \
     chmod +x FastQC/fastqc

ENV PATH="${PATH}:/tools/FastQC"
