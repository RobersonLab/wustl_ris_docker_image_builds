# Author: Elisha Roberson
# Edited: 2024-03-19
#
# Software:
# seqtk
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install zlib1g-dev \
      libbz2-dev \
      liblzma-dev && \
    wget https://github.com/lh3/seqtk/archive/refs/tags/v1.4.tar.gz && \
    tar -zxvf v1.4.tar.gz

WORKDIR seqtk-1.4

RUN make && \
    make install && \
	mv seqtk /usr/local/bin

WORKDIR /

RUN rm v1.4.tar.gz && \
    rm -fr seqtk-1.4
