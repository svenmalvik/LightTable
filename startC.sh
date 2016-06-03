#!/bin/bash

LT_CONFIG=$HOME/LightTable/.config

[ ! -d $LT_CONFIG ] && mkdir -p $LT_CONFIG
docker run -it --name LightTable --rm -v $HOME:$HOME -v $LT_CONFIG:/root/.config -v /tmp/.X12-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY svenmalvik/lighttable bash
