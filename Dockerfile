FROM ubuntu:18.04

RUN apt-get -q update  \
    && apt-get -y -q install wget \
    && wget -q https://github.com/Clozure/ccl/releases/download/v1.11.5/ccl-1.11.5-linuxx86.tar.gz \
    && mkdir -p /usr/local/src \
    && tar -C /usr/local/src -xf ccl-1.11.5-linuxx86.tar.gz \
    && export CCL_DEFAULT_DIRECTORY="/usr/local/ccl"


ENTRYPOINT [ "/usr/local/src/ccl/scripts/ccl64" ]
