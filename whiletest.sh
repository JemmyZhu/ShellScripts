#!/bin/sh

# test for while and until 
number="s"
while [ -z "$number" ]; do
    number="w"
done
echo $number

number="s"
until [ -n "$number" ]; do
    number="w"
    exit 0
done
echo $number

exit 1
