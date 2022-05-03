FROM combinelab/salmon:1.4.0

RUN apt -y install software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa

RUN apt update && \
    apt -y install python3.6 python3-pip

RUN pip3 install snakemake==6.15.5
