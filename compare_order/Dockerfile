FROM thatdnaguy/ubuntu_general:latest

RUN wget https://github.com/RobersonLab/compare_order/archive/refs/tags/v1.0.5.tar.gz && \
    tar -xvzf v1.0.5.tar.gz

WORKDIR compare_order-1.0.5/

RUN make && \
    make install

WORKDIR /

RUN rm v1.0.5.tar.gz && \
    rm -fr compare_order-1.0.5/
