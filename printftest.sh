#!/bin/sh

# test for cmd printf
x="20"
y=20
z=" "

printf "%s %d 0x%x \" %c %cend\n" $x $y $y 's' "$z"

exit 0
