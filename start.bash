#! /bin/bash

# Start the container stopped by stop.bash

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker start $CONTAINER_NAME
