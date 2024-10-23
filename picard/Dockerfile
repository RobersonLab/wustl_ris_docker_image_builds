# Author: Elisha Roberson
# Edited: 2024-10-23
#
# Software:
# picardtools
# invoke with:
# /opt/jdk-17/bin/java -jar /picard.jar ...
FROM thatdnaguy/ubuntu_general:latest

RUN apt update && \
    apt install -y unzip git && \
    git clone https://github.com/broadinstitute/picard.git && \
    wget https://download.java.net/java/GA/jdk17.0.2/dfd4a8d0985749f896bed50d7138ee7f/8/GPL/openjdk-17.0.2_linux-x64_bin.tar.gz && \
    tar -zxvf openjdk-17.0.2_linux-x64_bin.tar.gz && \
    mv jdk-17.0.2/ /opt/jdk-17 && \
    rm openjdk-17.0.2_linux-x64_bin.tar.gz

ENV JAVA_HOME="/opt/jdk-17"
ENV PATH="/opt/jdk-17:/opt/jdk-17/bin:$PATH"

WORKDIR /picard

RUN git checkout tags/3.3.0 && \
    ./gradlew shadowJar

WORKDIR /

RUN ln picard/build/libs/picard.jar picard.jar
