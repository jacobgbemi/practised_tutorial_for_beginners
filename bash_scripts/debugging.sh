#!/bin/bash -x 
# debugging bash script
# do: bash -x ./filename
# another way: add -x to shebang
# Third option: set -x
# Forth option: Set +x (tell where to stop the debugging)

trap "echo Exit signal is detected" SIGINT
file=../test
trap "rm -f $file && echo file deleted; exit" 0 2 15

echo "pid is $$"
while (( COUNT < 10 ))
do 
    sleep 10
    (( COUNT ++ ))
    echo $COUNT
done
exit 0
