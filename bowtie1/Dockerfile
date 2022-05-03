FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -f install unzip zlib1g-dev && \
    wget https://sourceforge.net/projects/bowtie-bio/files/bowtie/1.3.0/bowtie-1.3.0-src.zip && unzip bowtie-1.3.0-src.zip

WORKDIR bowtie-1.3.0-src

RUN make && \
    make install
