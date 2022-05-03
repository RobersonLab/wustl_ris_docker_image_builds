FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install unzip zlib1g-dev libtbb-dev && \
    wget https://github.com/BenLangmead/bowtie2/archive/v2.4.2.tar.gz && \
    tar -xzvf v2.4.2.tar.gz

WORKDIR /bowtie2-2.4.2

RUN make && \
    make install

WORKDIR /

RUN rm v2.4.2.tar.gz && \
    rm -fr /bowtie2-2.4.2
