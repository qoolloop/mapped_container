#! /bin/bash

# Gets into the bash console of the container

source setvariables.sh

docker exec -it $CONTAINER_BASE_NAME bash

