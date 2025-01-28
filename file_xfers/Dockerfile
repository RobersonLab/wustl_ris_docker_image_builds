###########################
# Author: Elisha Roberson #
# Edited: 2025-01-25      #
###########################
# software: rsync, ssh, rclone

FROM thatdnaguy/ubuntu_general:latest

# install packages
RUN apt -y update && \
    apt -y install build-essential \
                   openssh-client \
                   openssh-server \
                   unzip \
                   rsync

RUN wget https://downloads.rclone.org/v1.69.0/rclone-v1.69.0-linux-amd64.zip && \
    unzip rclone-v1.69.0-linux-amd64.zip && \
    mv rclone-v1.69.0-linux-amd64/rclone /bin && \
    chmod +x /bin/rclone

