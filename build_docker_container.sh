#!/bin/bash

VERSION=$(cat README.md | grep "Version" | awk '{ print $2 }')

if [ -z $VERSION ]
then
    echo "Please add a Version number in your README.md file"
    exit 1
fi

docker build --tag mooremachine/bareubuntu:$VERSION .

