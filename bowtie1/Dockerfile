# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Software:
# bowtie1

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -f -y install unzip zlib1g-dev && \
    wget https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.3.1/bowtie-1.3.1-src.zip && \
    unzip bowtie-1.3.1-src.zip

WORKDIR bowtie-1.3.1-src

RUN make && \
    make install

WORKDIR /

RUN rm bowtie-1.3.1-src.zip && \
    rm -fr bowtie-1.3.1-src
