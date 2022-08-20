#!/bin/bash
# using for loop

# 1.
for i in 1 2 3 4 5
do 
    echo $i
done
echo end

# 2.
for i in {1..10}
do
    echo $i
done
echo end

# 3.
for i in {1..10..2}
do
    echo $i
done
echo end

for (( i = 2; i < 10; i++ ))
do
   echo $i
done
