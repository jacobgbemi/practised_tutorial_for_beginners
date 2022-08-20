#!/bin/bash
# using local variables in functions
# note the $1 in function is different from $1 used with if-statement

usage()
{
    echo "You need to provide an argument"
    echo "usage : $0 filename"
}

is_file_exist()
{
   local file="$1"
   [[ -f '$file' ]] && return 0 || return 1
} 

[[ $# -eq 0 ]] && usage

if ( is_file_exist "$1")
then
    echo "file found"
else
    echo "file not found"
fi
