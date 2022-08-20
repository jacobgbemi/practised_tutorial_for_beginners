#!/bin/bash
# using case statement

vehicle=$1

case $vehicle in
    "car" )
        echo "Rent of $vehicle is 100 dollar" ;;
    "van" )
	echo "Rent of $vehicle is 80 dollar" ;;
    "truch" )
        echo "Rent of $vehicle is 150 dollar" ;;
    * )
        echo "Unknown vehicle" ;;
esac
