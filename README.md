# Mapped Container

This folder has some scripts to create a docker image and a container that map a specified host folder to a container volume, respecting permissions of the host. It can also run GUI applications, if run with appropriate arguments.

The volume is located at /src in the container, and it is owned by the same uid as the user of the host.


## Install

Docker is necessary to use the scripts in this folder.

> `sudo apt-get install docker`


## Scripts

The following shell scripts are available
(Each script has a comment in the beginning explaining its usage):

- [setvariables.sh](setvariables.sh):
  Defines variables that name the container and image

- [build.bash](build.bash):
  Builds the image

- [exec.bash](exec.bash):
  Gets into the bash console of the container

- [run.bash](run.bash): (needs options)
  Creates a container from image built with build.bash

- [stop.bash](stop.bash):
  Stop the container started by run.bash and start.bash

- [start.bash](start.bash):
  Start the container stopped by stop.bash

- [removecontainer.bash](removecontainer.bash):
  Remove container created by run.bash

- [removeimage.bash](removeimage.bash):
  Remove image built by build.bash


## Usage Flow

1. Build the docker image using
   > `build.bash`

2. Make and start a container using
   > `run.bash path/to/folder $DISPLAY`

   This will map the specified folder to the `/src` folder in the container.

3. Enter the container with
   > `exec.bash`

4. Do what you want inside the container.

5. Get out of the container with
   > `exit`

6. Stop the container with
   > `stop.bash`

7. When resuming work, start the container with
   > `start.bash`

   and go back to Step 3.


## Cleaning up

To clean up what you made the following shell scripts are available.

> `removecontainer.bash`

> `removeimage.bash`
