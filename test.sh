#!/bin/sh

# fourth test
for file in $(ls *.sh); do
    echo "$file"
done 
for foo in bar fud 43
do 
    echo $foo
done
for foo in "bar fud 43"
do 
    echo $foo
done

# third test
echo "Is it morning? Please answer yes or no?"
read timeofday
# DONT FORGET THE DOUBLE QUOTE MARK ! IN CASE THE VARIABLE BEING A NULL STRING. 
if [ "$timeofday" = "yes" ]; then
    echo "Good morning"
elif [ "$timeofday" = "no" ]; then
    echo "Good afternoon"
else 
    echo "Sorry, $timeofday not recognized. Enter yes or no"
    exit 1
fi

# second test 
filename=try_var
if test -f $filename
then 
echo "that file $filename exist"
fi
if [ -f $filename ]
then 
echo "that file $filename exist"
fi

# first test 
echo "parameters are $*"
echo "Now I'll run set"
set haha parameters have changed
echo "New parameters are $*"

exit 0
