#!/bin/bash

# a test to rename error backup folder to its original name
cd $HOME/Downloads/1
for eachline in `ls | grep bk`; do
    newline=`echo $eachline | cut -d '_' -f 1`
    mv $eachline $newline
    echo $newline
done

