#!/bin/bash
# using traps and signals
# -SIGKILL is also -9
# ctrl+c (interrupt process from keyboard - SIGINT)
# ctrl+z (suspend process)
# do man 7 signal for more info

echo "pid is $$"
while (( COUNT < 10 ))
do 
    sleep 10
    (( COUNT ++ ))
    echo $COUNT
done
exit 0
