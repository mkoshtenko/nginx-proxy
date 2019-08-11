#!/bin/sh
# This script builds nginx + amplify image from submodule

IMAGE_DIR="docker-nginx-amplify"
IMAGE_NAME="nginx-amplify"

if [ ! -d $IMAGE_DIR ]; then
    echo "🍎 Image directory $IMAGE_DIR does not exist"
    exit 1
fi

docker build -t $IMAGE_NAME $IMAGE_DIR

echo "Verify $IMAGE_NAME image:"

if $(docker images | grep -q "$IMAGE_NAME"); then
   echo "🍏 OK";
else
   echo "🍅 NOT OK";
fi

