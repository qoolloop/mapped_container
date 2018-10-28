#! /bin/bash

# Builds the image

# The docker image will have a user that has the same user id and group id
# as the current user of the host.

source setvariables.sh

docker build --build-arg uid=$UID --build-arg gid=$GROUPS -t $IMAGE_BASE_NAME .
