#!/bin/bash

ARGS=$@

docker run -it --rm -v $(pwd):$(pwd) --workdir=$(pwd) rimelek/frontend-utils bower ${ARGS}