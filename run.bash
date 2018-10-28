#! /bin/bash

# Creates a container from image built with build.bash

# This script has the following arguments:
#   $1: The path to the folder to map to the container's volume
#   $2: (optional) Specify $DISPLAY if you need the container to have a GUI

if [ -z "$1" ]; then
    echo "Usage: ./run.bash /fullpath/to/folder [$DISPLAY]"
    echo "  Specify folder to map to container volume"
    exit -1
fi

if [ -z "$2" ]; then
    options=
else
    options="-e DISPLAY=$2 -v /tmp/.X11-unix:/tmp/.X11-unix"
fi

# necessary, because otherwise the folder might be created with root ownership
mkdir -p $1

source setvariables.sh

docker run -ti -d -v "$(readlink -f $1)":/src --name $CONTAINER_BASE_NAME $options $IMAGE_BASE_NAME
