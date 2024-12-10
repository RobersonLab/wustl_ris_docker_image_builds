###########################
# Author: Elisha Roberson #
# Edited: 2024-12-10      #
###########################
# software: bcftools

FROM thatdnaguy/ubuntu_general:latest

# install packages
RUN apt -y update && \
    apt -y install build-essential \
                   autoconf \
                   automake \
                   perl \
                   zlib1g-dev \
                   libbz2-dev \
                   liblzma-dev \
                   libcurl4-gnutls-dev \
                   libssl-dev \
                   libdeflate-dev \
                   libperl-dev \
                   libgsl0-dev \
                   git

# download sources
RUN git clone --recurse-submodules https://github.com/samtools/htslib.git && \
    git clone --recurse-submodules https://github.com/samtools/bcftools.git

# install htslib
WORKDIR /htslib

RUN git checkout tags/1.21 && \
    autoreconf -i && \
    ./configure --prefix=/usr/local && \
    make && \
    make install

# install bcftools
WORKDIR /bcftools

RUN git checkout tags/1.21 && \
    autoreconf -i && \
    ./configure --prefix=/usr/local && \
    make && \
    make install

# clean up
WORKDIR /

RUN rm -fr /bcftools && \
    rm -fr /htslib