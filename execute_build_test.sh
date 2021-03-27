#!/bin/bash

VERSION=$(cat README.md | grep "Version" | awk '{ print $2 }')

if [ -z $VERSION ]
then
    echo "Please make sure your README.md file has a Version number."
    exit 1
fi

echo "Running new container..."

CONTAINER_ID=$(docker run \
    --name build_test \
    --rm \
    -it \
    -d \
    -v $(pwd)/app:/home \
    mooremachine/bareubuntu:$VERSION)

echo "Building app..."

docker exec \
    -w '/home' \
    build_test \
    sh -c './build_app.sh && ./build/helloapp && exit 1'

echo "Stopping container..."

docker container stop -t 0 $CONTAINER_ID
