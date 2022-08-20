#!/bin/bash

# passing arguments in bash script
echo $1 $2 $3 '> echo $1 $2 $3'

# second method
args=("$@")
echo ${args[0]} ${args[1]} ${args[2]}

#print all args once
echo $@

# print the number of args passed
echo $#
