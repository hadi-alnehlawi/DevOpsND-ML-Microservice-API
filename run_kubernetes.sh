#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
DOCKERID="hadialnehlawi"
IMAGE=devops-ml-api
dockerpath=$DOCKERID/$IMAGE

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run $IMAGE --image=$dockerpath


# Step 3:
# List kubernetes pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pods/$IMAGE 9999:8000

