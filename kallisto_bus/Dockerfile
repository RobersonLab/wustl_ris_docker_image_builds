FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install zlib1g-dev cmake libhdf5-dev autoconf && \
    wget https://github.com/pachterlab/kallisto/archive/v0.46.2.tar.gz && \
    tar -zxvf v0.46.2.tar.gz
 
WORKDIR /kallisto-0.46.2/build

RUN cmake .. && \
    make && \
    make install

WORKDIR /

RUN wget https://github.com/BUStools/bustools/archive/v0.40.0.tar.gz && \
    tar -zxvf v0.40.0.tar.gz

WORKDIR bustools-0.40.0/build

RUN cmake .. && \
    make && \
    make install

WORKDIR / 

RUN rm v0.40.0.tar.gz && \
    rm v0.46.2.tar.gz && \
    rm -fr bustools-0.40.0 && \
    rm -fr kallisto-0.46.2
