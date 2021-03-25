#!/bin/bash

mkdir -p /app/build
cd /app/build
cmake ..
make helloapp
./helloapp
