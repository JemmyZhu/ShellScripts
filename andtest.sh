#!/bin/sh

# test for and clause
touch file_one
rm -f file_two

# put echo between &&s can help you debugging
if [ -f file_one ] && echo "hello" && [ -f file_two ] && echo " there"
then
    echo "in if"
else
    echo "in else"
fi

exit 0
