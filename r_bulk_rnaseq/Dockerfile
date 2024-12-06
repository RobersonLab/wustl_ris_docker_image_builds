##################################
# Author: Elisha Roberson        #
# Edited: 2024-10-24             #
##################################

# Dockerfile for running bulk RNA-Seq analysis
# Required software:
# * R >= 4.4.0

# Adapted from Rocker code for our ubuntu image
# https://github.com/rocker-org/rocker/blob/df1414259dceb0282f163f29f4dccfa184d38d86/r-base/4.1.2/Dockerfile
# And cloud R project 
# https://cran.r-project.org/bin/linux/ubuntu/fullREADME.html

# start with ubuntu base image
FROM ubuntu:20.04

ENV R_BASE_VERSION 4.4.0
ENV TZ=America/Chicago

# put R package script in image
ADD install_r_packages.R /install_r_packages.R

# Install R & associated packages
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && \
 echo $TZ > /etc/timezone && \
 apt -y update && \
 apt -y install --no-install-recommends \
  gpg-agent \
  git \
  rsync \
  unzip \
  pigz \
  wget \
  build-essential \
  dirmngr \
  libicu66 \
  libreadline8 \
  default-jre \
  default-jdk \
  libfftw3-3 \
  libfftw3-dev \
  libopenblas-base \
  libopenblas-dev \
  libxml2-dev \
  libssl-dev \
  libpng-dev \
  curl \
  libcurl4-openssl-dev \
  locales \
  locales-all \
  gfortran \
  fontconfig \
  libfontconfig1-dev \
  libharfbuzz-dev \
  libfribidi-dev \
  libfreetype6-dev \
  libpng-dev \
  libtiff5-dev \
  libjpeg-dev \
  software-properties-common && \
 echo 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40//' >> /etc/apt/sources.list && \
 apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
 apt-get update && \
 apt-get install -y --no-install-recommends \
  r-base-core=${R_BASE_VERSION}-* \
  r-base-html=${R_BASE_VERSION}-* \
  r-doc-html=${R_BASE_VERSION}-* && \
 ln -s /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3 /usr/lib/blas.so && \
 ln -s /usr/lib/x86_64-linux-gnu/openblas/liblapack.so.3 /usr/lib/lapack.so

# Run relevant R package installs
RUN Rscript /install_r_packages.R

# install specific python version from deadsnakes
# install right version of snakemake
RUN add-apt-repository -y ppa:deadsnakes/ppa && \
 apt update && \
 apt -y install python3.6 python3-pip && \
 pip3 install snakemake==6.15.5 && \
 pip3 install pulp==2.7.0
