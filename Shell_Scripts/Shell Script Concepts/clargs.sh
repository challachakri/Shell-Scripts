#!/bin/bash
echo The script file name is:$0
echo The 1st argument that i am passing through cmd is:$1
echo The 2nd argument that i am passing through cmd is:$2
echo $3
echo $4
echo Gives the exact number of arguments that we are passing while executing a particular shell script:$#
echo All the arguments as a one string will be represented by:$*
echo Each argument as a one string will be represented by:$@
echo The process-id of this particular script is:$$
echo Previous command execution status is:$?

