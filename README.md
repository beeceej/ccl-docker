# ccl-docker

This Dockerfile allows access to the clozure common lisp tool (ccl64)

[Docker Hub (https://hub.docker.com/r/beeceej/ccl/)](https://hub.docker.com/r/beeceej/ccl/)

## Usage

`$ docker build -t ccl:1.11.5 .`

### Lisp Interpreter Session

`$ docker run -it ccl:1.11.5` <- Will drop you into a LISP interpreter session

to quit you may enter `(quit)`

### Shell Session with CCL installed

`$ docker run -it --entrypoint /bin/sh ccl:1.11.5` <- Will drop you into a shell session with ccl installed

`$ /ccl64` <- will drop you into the lisp interpreter session

### Run a LISP program in the container

`$ docker run -it -v ${PWD}:${PWD} -w ${PWD} ccl:1.11.5 --load ${PWD}/main.cl --eval '(ccl:quit)' -- $argv`
