FROM thatdnaguy/ubuntu_general:latest

#RUN apt update && \
#    apt install -y unzip openjdk-11-jre && \
#    wget https://github.com/broadinstitute/gatk/releases/download/4.4.0.0/gatk-4.4.0.0.zip && \
#	unzip gatk-4.4.0.0.zip

RUN apt update && \
    apt install -y unzip python && \
    wget https://github.com/broadinstitute/gatk/releases/download/4.4.0.0/gatk-4.4.0.0.zip && \
	unzip gatk-4.4.0.0.zip && \
	wget https://download.java.net/java/GA/jdk20.0.2/6e380f22cbe7469fa75fb448bd903d8e/9/GPL/openjdk-20.0.2_linux-x64_bin.tar.gz && \
	tar -zxvf openjdk-20.0.2_linux-x64_bin.tar.gz && \
	mv jdk-20.0.2/ /opt/jdk-20 && \
	rm gatk-4.4.0.0.zip openjdk-20.0.2_linux-x64_bin.tar.gz

ENV JAVA_HOME=/opt/jdk-20
ENV PATH "$PATH:/gatk-4.4.0.0:/opt/jdk-20"
