FROM thatdnaguy/ubuntu_general:latest

RUN apt update && \
    apt install -y unzip && \
    wget https://github.com/broadinstitute/gatk/releases/download/4.4.0.0/gatk-4.4.0.0.zip && \
    unzip gatk-4.4.0.0.zip && \
    ln /gatk-4.4.0.0/gatk-package-4.4.0.0-local.jar gatk.jar && \
    wget https://download.java.net/java/GA/jdk20.0.2/6e380f22cbe7469fa75fb448bd903d8e/9/GPL/openjdk-20.0.2_linux-x64_bin.tar.gz && \
    tar -zxvf openjdk-20.0.2_linux-x64_bin.tar.gz && \
    mv jdk-20.0.2/ /opt/jdk-20 && \
    rm gatk-4.4.0.0.zip openjdk-20.0.2_linux-x64_bin.tar.gz 

ENV JAVA_HOME="/opt/jdk-20"
ENV PATH="/gatk-4.4.0.0:/opt/jdk-20:/opt/jdk-20/bin:$PATH"
