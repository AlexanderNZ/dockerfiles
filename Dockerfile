FROM ubuntu:16.04

RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D6BC243565B2087BC3F897C9277A7293F59E4889
RUN echo "deb http://miktex.org/download/ubuntu xenial universe" | tee /etc/apt/sources.list.d/miktex.list
RUN apt-get update
RUN apt-get install -y miktex
RUN miktexsetup finish
RUN initexmf --set-config-value [MPM]AutoInstall=1
