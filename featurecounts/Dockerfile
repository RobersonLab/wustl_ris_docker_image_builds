FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install zlib1g-dev && \
    wget https://sourceforge.net/projects/subread/files/subread-2.0.3/subread-2.0.3-source.tar.gz && \
    tar -zxvf subread-2.0.3-source.tar.gz
 
WORKDIR /subread-2.0.3-source/src

RUN make -f Makefile.Linux
	
WORKDIR /

RUN cp -r /subread-2.0.3-source/bin/* /bin && \
    rm -fr /subread-2.0.3-source
