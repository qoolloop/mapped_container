#! /bin/bash

# Remove container created by run.bash

source setvariables.sh

docker rm $CONTAINER_BASE_NAME
