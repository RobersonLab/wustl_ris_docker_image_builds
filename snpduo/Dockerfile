FROM thatdnaguy/ubuntu_general:latest

RUN wget https://github.com/RobersonLab/snpduo/archive/refs/tags/v2.0.0a.tar.gz && \
    tar -xvzf v2.0.0a.tar.gz

WORKDIR snpduo-2.0.0a/

RUN make && \
    make install

WORKDIR /

RUN rm v2.0.0a.tar.gz && \
    rm -fr snpduo-2.0.0a/
