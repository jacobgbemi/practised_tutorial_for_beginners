#!/bin/bash
# using while loop

n=1

while [ $n -le 3 ]
do
    echo "$n"
    (( ++n ))
    xterm &
    sleep 1

done

