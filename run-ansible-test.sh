#!/bin/bash

# initializing variables
EXPOSED_PORT=$1
DOCKER_CONTAINER_NAME="ansible-test-centos"
DOCKER_IMAGE_NAME="mycentos-ssh"

# building and running the docker image
docker build -t $DOCKER_IMAGE_NAME docker/
docker run -ti --name $DOCKER_CONTAINER_NAME -d -p $EXPOSED_PORT:22  $DOCKER_IMAGE_NAME

# running ansible playbook
ansible-playbook -i ansible/environments/localtest/ ansible/myplaybook.yml -vvv

# stopping and removing the container
docker stop $DOCKER_CONTAINER_NAME && docker rm $DOCKER_CONTAINER_NAME
