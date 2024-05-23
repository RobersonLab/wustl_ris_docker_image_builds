FROM thatdnaguy/ubuntu_general:latest

RUN apt update && \
    apt install -y unzip && \
    wget https://zzz.bwh.harvard.edu/plink/dist/plink-1.07-x86_64.zip && \
    unzip plink-1.07-x86_64.zip && \
    cp plink-1.07-x86_64/plink /usr/local/bin && \
    cp plink-1.07-x86_64/gPLINK.jar /usr/local/bin &&  \
    rm plink-1.07-x86_64.zip && \
    rm -fr plink-1.07-x86_64
