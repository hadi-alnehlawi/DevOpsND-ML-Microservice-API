#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`
# Step 1:
# Create dockerpath
DOCKERID="hadialnehlawi"
IMAGE=devops-ml-api
dockerpath=$DOCKERID/$IMAGE

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker tag $IMAGE $dockerpath

# Step 3:
# Push image to a docker repository
docker push $dockerpath