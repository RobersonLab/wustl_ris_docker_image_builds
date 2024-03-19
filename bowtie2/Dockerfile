# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Software:
# bowtie2

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install unzip zlib1g-dev libtbb-dev && \
    wget https://github.com/BenLangmead/bowtie2/archive/refs/tags/v2.5.3.tar.gz && \
    tar -xzvf v2.5.3.tar.gz

WORKDIR /bowtie2-2.5.3

RUN make && \
    make install

WORKDIR /

RUN rm v2.5.3.tar.gz && \
    rm -fr /bowtie2-2.5.3
