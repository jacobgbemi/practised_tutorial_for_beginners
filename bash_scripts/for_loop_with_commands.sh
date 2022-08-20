#!/bin/bash
# using for loop with commands

# 1.
for command in ls pwd date
do 
    echo "---------$command------"
    $command
done
echo end

# 2.
for item in *
do
    if [ -f $item ]
    then
        echo $item
    fi
done
echo end
