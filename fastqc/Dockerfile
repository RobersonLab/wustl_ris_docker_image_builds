FROM thatdnaguy/ubuntu_general:latest

RUN apt-get -y install unzip default-jre && \
    mkdir /tools

WORKDIR /tools

RUN  wget https://www.bioinformatics.babraham.ac.uk/projects/fastqc/fastqc_v0.11.9.zip && \
     unzip fastqc_v0.11.9.zip && \
     chmod +x FastQC/fastqc && \
     cp FastQC/fastqc /bin
