#!/bin/bash
# using until loop
# it is the like while loop but work when condition is false

n=1

until [ $n -gt 10 ]
do 
    echo $n
    n=$(( n + 1 ))
done
