#!/bin/bash
# Working with arrays

os=('ubuntu' 'windows' 'kali')

echo "${os[@]}"
echo "${os[0]}"

# list the index of an array
echo "${!os[@]}"

# length of array
echo "${#os[@]}"

# add element at index
os[3]='mac'

# update element
os[0]='hp'

# remove element
unset os[2]

# working with strings
string=dadasfaggadg
echo "${string[@]}"
echo "${string[0]}" # 0th index is none
echo "${#string[@]}"
