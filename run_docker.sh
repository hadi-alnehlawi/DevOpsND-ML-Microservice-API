#!/usr/bin/env bash

## Complete the following steps to get Docker running locally
# Step 1:
# Build image and add a descriptive tag
export IMAGE=devops-ml-api
if [[ "$(docker images -q ${IMAGE} 2> /dev/null)" == "" ]]; then
  printf "\n\nIt is not existed\n\n"
  docker build --tag $IMAGE .
fi

# Step 2: 
# List docker images
export IMAGEID=$(docker images -q $IMAGE)

# Step 3: 
# Run flask app
docker run -p 8000:80 --rm $IMAGEID
