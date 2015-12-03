#!/bin/sh

# test for internal cmd export and .
val="hha"
echo before source val equals $val
export val
# use . cmd to keep env
. ./exporttest2.sh
echo after source val equals $val

exit 0
