##################################
# Author: Elisha Roberson        #
# Edited: 2026-02-24             #
##################################

# Dockerfile for running bulk RNA-Seq analysis
# Required software:
# * R >= 4.4.0

# Adapted from Rocker code for our ubuntu image
# https://github.com/rocker-org/rocker/blob/df1414259dceb0282f163f29f4dccfa184d38d86/r-base/4.1.2/Dockerfile
# And cloud R project 
# https://cran.r-project.org/bin/linux/ubuntu/fullREADME.html

# start with ubuntu base image
FROM thatdnaguy/ubuntu_general:v20.04_02

# args
ARG VERSION_R=4.5.2

# environment envs
ENV TZ=America/Chicago

# put R package script in image
ADD 01_install_tidy.R /01_install_tidy.R
ADD 02_install_base_pkgs.R /02_install_base_pkgs.R
ADD 03_install_bioc_pkgs.R /03_install_bioc_pkgs.R
ADD 04_stragglers.R /04_stragglers.R
ADD 05_install_devtools_pkgs.R /05_install_devtools_pkgs.R

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
  libwebp-dev \
  software-properties-common \
  libuv1 \
  libuv1-dev \
  cmake && \
 echo 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40//' >> /etc/apt/sources.list && \
 apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 && \
 apt-get update

# install R and link BLAS
#RUN apt-get install -y --no-install-recommends \
RUN apt install -y \
  r-base-core=${VERSION_R}-* \
  r-base-html=${VERSION_R}-* \
  r-doc-html=${VERSION_R}-* && \
    ln -s /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3 /usr/lib/blas.so && \
    ln -s /usr/lib/x86_64-linux-gnu/openblas/liblapack.so.3 /usr/lib/lapack.so

# install tidyverse since it's very big
RUN Rscript /01_install_tidy.R

# install other regular packages
RUN Rscript /02_install_base_pkgs.R

# BioC packages
RUN Rscript /03_install_bioc_pkgs.R

# metap, mutoss, multtest
RUN Rscript /04_stragglers.R

# devtools packages
RUN Rscript /05_install_devtools_pkgs.R

