#!/bin/bash
# how to read input from terminal

echo "Enter name : "
read name
echo "Entered name : $name"

#multiple variables
echo "Enter names : "
read name1 name2 name3
echo "Names : $name1, $name2, $name3"

# read variable on the same line
read -p 'username : ' user_var
echo "username : $user_var"

# make input silent
read -sp 'password : ' pass_var
echo "password : $pass_var"

# save inputs in array
echo "Enter names : "
read -a names 
echo "Names : ${names[0]}, ${names[1]}"

# read without variable name
echo "Enter name : "
read
echo "Name : $REPLY"
