#!/bin/bash

age=25

if [ $age -gt 18 ] || [ $age -lt 30 ]
then 
    echo "valid age"
else
    echo "age not valid"
fi

# using -a 
if [ $age -eq 18 -o $age -eq 30 ]
then
    echo "valid age"
else
    echo "age not valid"
fi

# using double parenthesis
if (( $age > 18 || $age < 30 ))
then 
    echo "valid age"
else
    echo "age not valid"
fi
