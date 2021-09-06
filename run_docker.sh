#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
export IMAGENAME="devops-ml-api"
if [[ "$(docker images -q ${IMAGENAME} 2> /dev/null)" == "" ]]; then
  # do something
  printf "\n\nIt is not existed\n"
  docker build --tag $IMAGENAME .
fi


# Step 2: 
# List docker images
export IMAGEID=$(docker images -q $IMAGENAME)


# Step 3: 
# Run flask app
docker run --rm $IMAGEID
