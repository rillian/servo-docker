FROM fedora:latest
MAINTAINER Ralph Giles <giles@mozilla.org>

RUN yum install -y git

RUN git clone https://github.com/servo/servo
RUN cd servo && ./mach build
