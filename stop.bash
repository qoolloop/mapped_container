#! /bin/bash

# Stop the container started by run.bash and start.bash

source setvariables.sh

docker stop $CONTAINER_BASE_NAME
