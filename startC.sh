#!/bin/bash

docker build --rm -t lighttable .
docker run -it -v $PWD:/home/LightTable lighttable bash
