#!/bin/sh
# This script builds nginx + amplify image from submodule

BASE_IMAGE_DIR="docker-nginx-amplify"
BASE_IMAGE_NAME="nginx-amplify"

if [ ! -d $BASE_IMAGE_DIR ]; then
    echo "🍎 Image directory ($BASE_IMAGE_DIR) does not exist";
    exit 1;
fi

# clear all
docker system prune -a

# build submodule
docker build -t $BASE_IMAGE_NAME $BASE_IMAGE_DIR

echo "Verify $BASE_IMAGE_NAME image:"

if $(docker images | grep -q "$BASE_IMAGE_NAME"); then
   echo "🍏 OK";
else
   echo "🍅 NOT OK";
   exit 1;
fi

