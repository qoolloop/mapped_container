# Defines variables that name the container and image

BASE_IMAGE_NAME=python:3.10-slim-buster

converted_base_image_name=${BASE_IMAGE_NAME/:/-}

IMAGE_NAME=qoolloop/$converted_base_image_name/mapped_container/$USER

CONTAINER_NAME=qoolloop.$converted_base_image_name.mapped_container.$USER
