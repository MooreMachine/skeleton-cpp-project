#!/bin/bash

./execute_build_test.sh
last_exit_status=$(echo $?)
echo "::set-output name=result::$last_exit_status"
