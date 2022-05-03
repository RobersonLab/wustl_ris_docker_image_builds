FROM thatdnaguy/ubuntu_general:latest

# Adapted from Rocker code for our ubuntu image
# https://github.com/rocker-org/rocker/blob/df1414259dceb0282f163f29f4dccfa184d38d86/r-base/4.1.2/Dockerfile
# And cloud R project 
# https://cran.r-project.org/bin/linux/ubuntu/fullREADME.html

ENV R_BASE_VERSION 4.1.2
ENV TZ=America/Chicago

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
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
 && echo 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran40/' >> /etc/apt/sources.list \
 && apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9 \
 && apt-get update \
 && apt-get install -y --no-install-recommends \
    r-base-core \
    r-base-html \
    r-doc-html \
 && ln -s /usr/lib/x86_64-linux-gnu/openblas/libblas.so.3 /usr/lib/blas.so \
 && ln -s /usr/lib/x86_64-linux-gnu/openblas/liblapack.so.3 /usr/lib/lapack.so 
