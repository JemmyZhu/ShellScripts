#!/bin/sh

# test for case clause
# example one: 
echo "Is it morning? Please answer yes or no"
read timeofday 

case "$timeofday" in
# 注意yes没有加前后的引号
    yes|YES|Yes|Y|y ) echo "Good Morning";;
    [Nn][Oo] | [Nn] ) echo "Good Afternoon";;
    *   ) echo "Sorry, answer not recognized"
          exit 1;;
esac


exit 0
