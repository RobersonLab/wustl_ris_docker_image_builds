# Author: Elisha Roberson
# Edited: 2024-03-19
#
# Software:
# samtools
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install libncurses5-dev \
    libncursesw5-dev \
    zlib1g-dev \
    libbz2-dev \
    liblzma-dev && \
    wget https://github.com/samtools/samtools/releases/download/1.19.2/samtools-1.19.2.tar.bz2 && \
    tar -xvjf samtools-1.19.2.tar.bz2

WORKDIR samtools-1.19.2

RUN ./configure --prefix=/usr/local && \
    make && \
    make install

WORKDIR /

RUN rm samtools-1.19.2.tar.bz2 && \
    rm -fr samtools-1.19.2
