#! /bin/bash

# Stop the container started by run.bash and start.bash

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker stop $CONTAINER_NAME
