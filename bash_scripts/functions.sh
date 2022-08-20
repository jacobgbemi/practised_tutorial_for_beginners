#!/bin/bash
# using function in bash script

function print()
{
    echo $1 $2 $3
}

quit ()
{
    exit
}

print Hello World Again
quit

echo "foo"
