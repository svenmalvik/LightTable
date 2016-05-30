#!/bin/bash

docker build --rm -t lighttable .
docker run -it --name LightTable --rm -v $PWD:/home/LightTable lighttable bash
