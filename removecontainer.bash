#! /bin/bash

# Remove container created by run.bash

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker rm $CONTAINER_NAME
