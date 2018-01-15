#!/bin/bash
ip=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
xhost + ${ip}
sudo docker run -it --rm --name yoyo \
                -e DISPLAY=$ip:0 \
                -v /tmp/.X11-unix:/tmp/.X11-unix \
                --privileged \
                ubuntu_14.04
xhost - ${ip}


