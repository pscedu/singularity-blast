FROM debian:latest

LABEL "MAINTAINER"="icaoberg"
LABEL "EMAIL"="icaoberg@psc.edu"
LABEL "SUPPORT"="help@psc.edu"
LABEL "REPOSITORY"="http://github.com/pscedu/singularity-blast"
LABEL "COPYRIGHT"="Copyright © 2021-2022 Pittsburgh Supercomputing Center. All Rights Reserved."
LABEL "VERSION"="2.13.0"

RUN apt update && apt install -y build-essential wget cpio && \ 
    cd /opt && \ 
    wget https://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.13.0+-src.tar.gz && \ 
    tar -xvf ncbi-blast-2.13.0+-src.tar.gz && rm -f ncbi-blast-2.13.0+-src.tar.gz && \ 
    cd ncbi-blast-2.13.0+-src/c++ && \ 
    ./configure && \ 
    make && \ 
    make install && \ 
    apt remove wget  && \ 
    apt clean