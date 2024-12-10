###########################
# Author: Elisha Roberson #
# Edited: 2024-12-09      #
###########################
# software: freebayes

FROM thatdnaguy/ubuntu_general:latest

# install packages
RUN wget https://github.com/freebayes/freebayes/releases/download/v1.3.4/freebayes-1.3.4-linux-static-AMD64.gz && \
    gunzip freebayes-1.3.4-linux-static-AMD64.gz && \
    mv freebayes-1.3.4-linux-static-AMD64 freebayes && \
    chmod +x freebayes && \
    mv freebayes /usr/bin