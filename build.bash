#! /bin/bash

# Builds the image

# The docker image will have a user that has the same user id and group id
# as the current user of the host.

this_folder=$(dirname $(readlink -f "${BASH_SOURCE[0]}"))

source $this_folder/setvariables.sh

docker build --build-arg base_image=$BASE_IMAGE_NAME --build-arg uid=$UID --build-arg gid=$GROUPS -t $IMAGE_NAME $this_folder
