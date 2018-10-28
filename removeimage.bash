#! /bin/bash

# Remove image built by build.bash

source setvariables.sh

docker rmi $IMAGE_BASE_NAME
