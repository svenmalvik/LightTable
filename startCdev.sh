#!/bin/bash

docker run -it --name LightTable --rm -v $PWD:/home/LightTable -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY svenmalvik/lighttable bash
