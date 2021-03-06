# This file contains various docker commands to launch and manage containers using docker.

# first time we try to launch a container of an image if the image is not in the image cache
# of the host machine then docker will pull the image from docker-hub and then create an instance
# of it which is container in other word.

docker run hello-world
# hello-world image is create in such a way just to print a hello world message and nothing else.

docker run busybox date
# while instanciating a container from an image, after its creation it execute the default command
# written in the image, so as to execute a different command we can override it at the run time as done above.
# It will run the date-command inside the container.

docker ps 
# display all running containers.

docker ps --all
# display all containers that has been ever created.


# docker run constitute of creating and starting a container.
# run = create + start

docker create busybox
# just create a container of busybox and then print the container id

docker create -it busybox sh 
# orerride the default command of the image.
# bash, zsh, sh, powershell are command processor.
# -it (to interact with the container) 
# -i: Attach container’s STDIN, -t: Allocate a pseudo-TTY.

docker start <container_id>
# starts the specified container but will not display the logs.
# Note - only one container can be started at a time.

docker start -ai <container_id>
# -a: Attach STDOUT/STDERR and forward signals
# using -ai will make conatainer to accept input and display the output.

docker stop <container_id>
# stops a container, generates a SIGTERM signal and send it to the process, the process does its clean up like saving the files, emit some message.

docker kill <container_id>
# immidiately kills the container, generates a SIGKILL signal.

docker exec -it <container_id> <some_command>
# to run a different command inside a running container exec is used.

docker logs <container_id>
# just print the record of all logs emitted by the container.
# this does not re-create/re-run the container.

docker system prune
# this will remove: 
# all stopped container, all networks not used by atleat one container, all dangling image, all build cache.