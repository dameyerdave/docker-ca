FROM ubuntu:latest
LABEL maintainer="dameyerdave@gmail.com"
RUN apt update
RUN apt install vim git -y
RUN mkdir -p /opt/openssltools
RUN mkdir -p /CA
RUN git clone https://github.com/dameyerdave/openssltools /opt/openssltools
RUN echo 'PATH=$PATH:/opt/openssltools' >> /etc/bash.bashrc
USER root
WORKDIR ~/
VOLUME [ "/CA" ]
ENTRYPOINT bash
