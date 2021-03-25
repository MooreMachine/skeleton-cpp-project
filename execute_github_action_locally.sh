#!/bin/bash

VERSION=$(cat README.md | grep "Version" | awk '{ print $2 }')

if [ -z $VERSION ]
then
    echo "Please make sure your README.md file has a Version number."
    exit 1
fi

docker run \
    --rm \
    mooremachine/bareubuntu:$VERSION
