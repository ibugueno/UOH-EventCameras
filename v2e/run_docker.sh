#!/bin/bash

docker rm -fv ignacio/v2e

nvidia-docker run -it -e NVIDIA_VISIBLE_DEVICES=0 --name ignacio/v2e -v /home/ignacio.bugueno/cachefs:/app/data ignacio/v2e

sleep 10; docker logs ignacio/v2e
