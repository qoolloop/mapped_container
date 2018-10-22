Creates a docker image and container that map a specified host folder to a container volume, respecting permissions of the host. It can also run GUI applications, if run with appropriate arguments.

The volume is located at /src in the container, and it is owned by the same uid as the user of the host.

The following scripts are available:

- setvariables.sh: Defines variables that name the container and image
- build.bash: Builds the image
- exec.bash: Gets into the bash console of the container
- run.bash: (needs options) Creates a container from image built with build.bash
- stop.bash: Stop the container started by run.bash and start.bash
- start.bash: Start the container stopped by stop.bash
- removecontainer.bash: Remove container created by run.bash
- removeimage.bash: Remove image built by build.bash
