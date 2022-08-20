#!/bin/bash
# -e flag used to check if file exist
# -f flag - check if exist and regular file
# -d flag - check directory exist
# -c flag - character special
# -b flag - block special
# -s flag - file empty or not
# -r - has read permission
# -w - has write permission
# -x - has execute permission

echo -e "Enter the name of the file : \c"
read filename

if [ -e $filename ]
then
    echo "$filename found"
else
    echo "$filename not found"
fi
# is empty
if [ -s $filename ]
then
    echo "$filename not empty"
else
    echo "$filename is empty"
fi

