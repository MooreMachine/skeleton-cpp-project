#!/bin/bash

last_exit_status=$(./execute_build_test.sh)
echo "The last exit status is $last_exit_status"
echo "::set-output name=result::$last_exit_status"
