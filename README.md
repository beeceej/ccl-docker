# ccl-docker

This Dockerfile allows access to the clozure common lisp tool (ccl64)

## Usage

`$ docker build -t ccl:1.11.5 .`

`$ docker run -it ccl:1.11.5` <- Will drop you into a lisp interpreter session

`$ docker run -it --entrypoint /bin/sh ccl:1.11.5` <- Will drop you into a shell session with ccl installed

While in the docker image you may

`$ cd /usr/local/src/ccl/scripts`

`$ ./ccl64` <- will drop you into the lisp interpreter session
