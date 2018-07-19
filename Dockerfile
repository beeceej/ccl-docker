FROM ubuntu:18.04

LABEL maintainer="beeceej.code@gmail.com"

RUN apt-get -q update  \
    && apt-get -y -q install wget \
    && wget -q https://github.com/Clozure/ccl/releases/download/v1.11.5/ccl-1.11.5-linuxx86.tar.gz \
    && mkdir -p /usr/local/src \
    && tar -C /usr/local/src -xf ccl-1.11.5-linuxx86.tar.gz

ENV "PATH" "$PATH:/usr/local/src/ccl/scripts/"

ENTRYPOINT [ "/usr/local/src/ccl/scripts/ccl64" ]
