#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
export IMAGENAME="devops-ml-api"
if [[ "$(docker images -q devops-ml-api 2> /dev/null)" == "" ]]; then
  printf "\n>>>>>>>>>>>\n";
  printf "Building Images";
  printf "\n>>>>>>>>>>>\n";
  docker build --tag devops-ml-api .;
fi


# # Step 2: 
# # List docker images
# export IMAGEID=$(docker image ls devops-ml-api --format "{{.ID}}")


# # Step 3: 
# # Run flask app
#  docker run $IMAGEID
