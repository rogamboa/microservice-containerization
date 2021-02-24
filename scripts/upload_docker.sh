#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
DOCKERPATH=$DOCKERPATH

# Authenticate & tag
echo "Docker ID and Image: $DOCKERPATH"
echo $PASSWORD | sudo docker login -u $USERNAME --password-stdin && \
sudo docker tag $IMAGE_ID $DOCKERPATH

# Push image to a docker repository
sudo docker push $DOCKERPATH
