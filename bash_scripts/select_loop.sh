#!/bin/bash
# using select loop

# 1.
select name in Mark Ayo Ojo Dada
do 
    case $name in
    Mark )
        echo Mark selected
	;;
    Ayo )
        echo Ayo selected
	;;
    Ojo )
        echo Ojo selected
	;;
    Dada )
        echo Dada selected
	;;
    * )
        echo "Error select number between 1 to 4"
        ;;
    esac
done
