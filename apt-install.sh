#!/bin/bash

set -x verbose  # --> echo on

# my script for setting up a new linux (deb) machine 
# @robertmitchellv | robertmitchellv.com

# This is mostly a composite of the `rocker` dockerfiles and Hadley's 
# dockerfile
#  rocker: https://github.com/rocker-org/
#  Hadley's dockerfile: https://github.com/hadley/docker/

apt install -y \
  aspell \
  aspell-en \
  bash-completion \
  bison \
  cdbs \
  clang \
  curl \
  debhelper \
  default-jdk \
  file \
  fonts-texgyre \
  g++ \
  gcc \
  gdb \
  gdebi-core \
  gfortran \
  ghostscript \
  golang \
  groff-base \
  gsfonts \
  icedtea-netx \
  imagemagick \
  jupyter \
  libapparmor-dev \
  libblas-dev \
  libbz2-dev \
  libcairo2-dev \
  libhiredis-dev \
  libice-dev \
  libicu-dev \
  libjpeg-dev \
  libjq-dev \
  liblapack-dev \
  libleptonica-dev \
  liblzma-dev \
  libmagick++-dev \
  libmpfr-dev \
  libmysqlclient-dev \
  libncurses5-dev \
  libopenblas-dev \
  libpango1.0-dev \
  libpangocairo-1.0-0 \
  libpcre3-dev \
  libpng-dev \
  libpoppler-cpp-dev \
  libpq-dev \
  libprotobuf-dev \
  librdf0-dev \
  libreadline-dev \
  libsasl2-dev \
  libsm-dev \
  libsqlite3-dev \
  libsqliteodbc \
  libssl-dev \
  libtesseract-dev \
  libtiff-dev \
  libwebp-dev \
  libx11-dev \
  libxext-dev \
  libxml2-dev \
  libxslt1-dev \
  libxss1 \
  libxt-dev \
  lmodern \
  locales \
  make \
  mdbtools-dev \
  mpack \
  odbc-postgresql \
  perl \
  phantomjs \
  protobuf-compiler \
  python \
  python-pdftools \
  python-pip \
  python-setuptools \
  r-base \
  r-base-core \
  r-base-dev \
  rsync \
  tcl8.6-dev \
  tdsodbc \
  tesseract-ocr-eng \
  texinfo \
  texlive-base \
  texlive-extra-utils \
  texlive-fonts-extra \
  texlive-fonts-recommended \
  texlive-generic-recommended \
  texlive-latex-base \
  texlive-latex-extra \
  texlive-latex-recommended \
  tk8.6-dev \
  unixodbc \
  unixodbc-dev \
  valgrind \
  x11proto-core-dev \
  xauth \
  xdg-utils \
  xfonts-base \
  xvfb \
  zlib1g \
  zlib1g-dev
