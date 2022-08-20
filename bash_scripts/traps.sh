#!/bin/bash
# using traps and signals
# -SIGKILL is also -9
# ctrl+c (interrupt process from keyboard - SIGINT)
# ctrl+z (suspend process)
# do man 7 signal for more info
# 0 signal means successful
# trap - run when signal detected
# trap cannot catch SIGKILL and SIGSTOP commands
# to remove traps on your terminal: do trap -SIGINT

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
