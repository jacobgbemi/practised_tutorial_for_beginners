#!/bin/bash
# using local variables in functions

# without the keyword local
function print()
{
   name=$1
   echo "the name is $name"
}
name="Tom"

echo "The name is $name : Before"

print Max
echo "The name is $name : After"
echo "----------------------------------"

# with local keyword
print ()
{
   local name=$1
   echo "the name is $name"
}
name="Tom"

echo "The name is $name : Before"

print Max
echo "The name is $name : After"
