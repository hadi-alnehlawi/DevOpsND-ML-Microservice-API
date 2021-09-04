#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
export IMAGENAME="devops-ml-api"
docker build --tag $IMAGENAME .

# Step 2: 
# List docker images
export IMAGEID=$(docker images -q $IMAGENAME)

# Step 3: 
# Run flask app
docker run --rm $IMAGEID
