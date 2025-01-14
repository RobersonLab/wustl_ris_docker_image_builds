# Author: Elisha Roberson
# Edited: 2024-12-06
#
# Software:
# scSplit

# start with our ubuntu image
FROM thatdnaguy/ubuntu_general:latest

RUN [ "pip3", "install", "numpy", "pandas", "pysam", "PyVCF", "scikit-learn", "scipy", "statistics" ]

RUN wget https://github.com/jon-xu/scSplit/archive/refs/tags/v1.0.9.tar.gz && \
    tar -zxvf v1.0.9.tar.gz && \
    mv /scSplit-1.0.9/scSplit /bin && \
    chmod +x /bin/scSplit && \
    rm -fr v1.0.9.tar.gz /scSplit-1.0.9/
