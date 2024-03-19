# Author: Elisha Roberson
# Edited: 2024-03-18
#
# Software:
# Bedtools

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

RUN wget https://github.com/arq5x/bedtools2/releases/download/v2.31.0/bedtools.static && \
    mv bedtools.static /bin/bedtools && \
	chmod a+rx /bin/bedtools
