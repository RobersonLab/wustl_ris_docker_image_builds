FROM thatdnaguy/ubuntu_general:latest

RUN apt install -y build-essential && \
    wget https://github.com/alexdobin/STAR/archive/refs/tags/2.7.7a.tar.gz && \
	tar -zxvf 2.7.7a.tar.gz && \
	cp /STAR-2.7.7a/bin/Linux_x86_64_static/STAR /bin && \
	cp /STAR-2.7.7a/bin/Linux_x86_64_static/STARlong /bin && \
	rm -fr /STAR-2.7.7a
