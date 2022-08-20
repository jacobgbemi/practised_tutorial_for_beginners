#!/bin/bash
# using while loop to read files

# input redirection
while read p
do
    echo $p
  
done < test2

# using pipes
cat test2 | while read p
do
    echo $p
done

# using IFS
while IFS= read -r line
do 
   echo $line
done < test2
