# Defines variables that name the container and image

BASE_IMAGE_NAME=debian:10

converted_base_image_name=${BASE_IMAGE_NAME/:/-}

IMAGE_NAME=qoolloop/$converted_base_image_name/mapped_container/$USER

CONTAINER_NAME=qoolloop.$converted_base_image_name.mapped_container.$USER
