FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install zlib1g-dev && \
    wget https://github.com/lh3/bwa/archive/v0.7.17.tar.gz && \
    tar -zxvf v0.7.17.tar.gz

WORKDIR /bwa-0.7.17

RUN make && \
    mv bwa /usr/local/bin

WORKDIR /

RUN rm v0.7.17.tar.gz && \
    rm -fr bwa-0.7.17
