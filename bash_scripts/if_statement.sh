#!/bin/bash
#using if statement

count=10
if [ $count -eq 10 ]
then
    echo "condition is true"
fi

# use double parenthesis when using symbol operator
if (( $count >= 9))
then
    echo "condition is true"
fi

# strings
word=abc
if [ $word = "abc" ]
then
    echo "condition is true"
elif
then
    echo "a is true"
else
    echo "condition is false"
fi
