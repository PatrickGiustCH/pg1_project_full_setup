#!/bin/bash

BUILD=false
DOCKERFILE=humble.Dockerfile
DOCKER=humble
XAUTH=/tmp/.docker.xauth
NAME=pg1_dev

if [ "$BUILD" = true ]; then
     docker build -f $DOCKERFILE -t $DOCKER .
fi

xhost +si:localuser:root

docker run -it --rm \
    --device /dev/kfd \
    --device /dev/dri/renderD128 \
    --device /dev/ttyACM0 \
    --env="DISPLAY=$DISPLAY" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --volume="/home/pgiust/PG_1_project/dev_ws:/home/ws" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --net=host \
    --privileged \
    --name=$NAME \
    ${DOCKER} \
    bash
   

echo "Done."
