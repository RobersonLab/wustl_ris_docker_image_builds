FROM broadinstitute/picard:2.25.0

RUN apt install --reinstall ca-certificates && \
    apt update --allow-releaseinfo-change && \
    apt -y install python3 python3-pip --fix-missing 

RUN python3 -m pip install snakemake==6.15.5
