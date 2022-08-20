#!/bin/bash
# arithmetic operations on decimal numbers
# use bc command

num1=20.5
num2=5
num3=25
num4=3

echo "$num1 - $num2" | bc
echo "$num1 + $num2" | bc
echo "$num1 / $num2" | bc
echo "$num1 % $num2" | bc
echo "$num1 * $num2" | bc

echo "sqrt($num3)" | bc -l
echo "$num4^3" | bc -l
