FROM debian:latest
MAINTAINER Ralph Giles <giles@mozilla.org>

RUN apt-get update
RUN apt-get install -y python git

RUN git clone https://github.com/servo/servo
RUN cd servo && ./mach build
