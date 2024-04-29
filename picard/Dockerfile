# Author: Elisha Roberson
# Edited: 2024-03-19
#
# Software:
# picard
FROM broadinstitute/picard:3.1.1

RUN apt install --reinstall ca-certificates && \
    apt update --allow-releaseinfo-change && \
    apt -y install python3 python3-pip --fix-missing && \
    python3 -m pip install snakemake==6.15.5
