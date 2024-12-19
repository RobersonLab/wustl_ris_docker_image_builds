###########################
# Author: Elisha Roberson #
# Edited: 2024-12-11      #
###########################
# Software:
# umitools

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

# grab source
RUN apt -y update && \
    wget https://github.com/CGATOxford/UMI-tools/archive/refs/tags/v1.1.6.tar.gz 

# manually grab some requirements
RUN pip3 install setuptools \
                 numpy \
                 pandas \
                 pysam \
                 future \
                 six \
                 regex \
                 scipy \
                 matplotlib \
                 pybktree

RUN pip3 install umi-tools==1.1.6

#RUN pip3 install v1.1.6.tar.gz

