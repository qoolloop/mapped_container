#! /bin/bash

# Gets into the bash console of the container

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker exec -it $CONTAINER_NAME bash

