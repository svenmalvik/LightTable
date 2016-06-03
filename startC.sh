#!/bin/bash

LT_CONFIG=$HOME/LightTable/.config

[ ! -d $LT_CONFIG ] && mkdir -p $LT_CONFIG
docker run --name LightTable --rm -v /home/hosm:/home -v $LT_CONFIG:/root/.config  -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY svenmalvik/lighttable
