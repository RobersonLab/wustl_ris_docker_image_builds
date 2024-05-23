FROM thatdnaguy/ubuntu_general:latest

RUN apt update && \
    apt install -y unzip && \
    wget https://s3.amazonaws.com/plink1-assets/plink_linux_x86_64_20231211.zip && \
    unzip plink_linux_x86_64_20231211.zip && \
    mv plink /usr/local/bin && \
    chmod a+rx /usr/local/bin/plink && \
    rm plink_linux_x86_64_20231211.zip && \
    rm toy.ped toy.map LICENSE
