# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Software:
# kallisto v0.50.1 and bustools v0.43.2
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install zlib1g-dev cmake libhdf5-dev autoconf && \
    wget https://github.com/pachterlab/kallisto/archive/refs/tags/v0.50.1.tar.gz && \
    tar -zxvf v0.50.1.tar.gz && \
	mkdir /kallisto-0.50.1/build
 
WORKDIR /kallisto-0.50.1/build

RUN cmake .. && \
    make && \
    make install

WORKDIR /

RUN wget https://github.com/BUStools/bustools/archive/refs/tags/v0.43.2.tar.gz && \
    tar -zxvf v0.43.2.tar.gz && \
    mkdir /bustools-0.43.2/build

WORKDIR bustools-0.43.2/build

RUN cmake .. && \
    make && \
    make install

WORKDIR / 

RUN rm v0.43.2.tar.gz && \
    rm v0.50.1.tar.gz && \
    rm -fr bustools-0.43.2 && \
    rm -fr kallisto-0.50.1
