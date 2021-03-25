#!/bin/bash

mkdir -p /app/build
cd /app/build
cmake ..
make hellotest
./hellotest
