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

if [ -f $filename ]
then
    if [ -w $filename ]
    then
        echo "Type some text. To quit press ctrl+d"
	cat >> $filename
    else
        echo "The file do not have write permission"
    fi
else
    echo "$filename not exists"
fi
