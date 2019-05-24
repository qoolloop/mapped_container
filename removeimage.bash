#! /bin/bash

# Remove image built by build.bash

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker rmi $IMAGE_NAME
