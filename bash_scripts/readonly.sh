#!/bin/bash
# using readonly commands

var=31
readonly var
var=50
echo "var => $var"
echo "--------------"

hello()
{
    echo "Hello World"
}

readonly -f hello

hello()
{
    echo "Hello World Again"
}
echo "------------------------"

# readonly variables
readonly -p
echo "-----------------------------------"

#readonly functions
readonly -f
