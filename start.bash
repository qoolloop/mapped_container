#! /bin/bash

# Start the container stopped by stop.bash

source setvariables.sh

docker start $CONTAINER_BASE_NAME.$USER
