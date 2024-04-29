# Author: Elisha Roberson
# Edited: 2024-03-19
#
# Software:
# salmon
FROM thatdnaguy/ubuntu_general:latest

RUN wget https://github.com/COMBINE-lab/salmon/releases/download/v1.10.0/salmon-1.10.0_linux_x86_64.tar.gz && \
    tar -zxvf salmon-1.10.0_linux_x86_64.tar.gz && \
    mv salmon-latest_linux_x86_64/bin/* /bin && \
    mv salmon-latest_linux_x86_64/lib/* /lib && \
    rm salmon-1.10.0_linux_x86_64.tar.gz && \
    rm -rf salmon-latest_linux_x86_64
