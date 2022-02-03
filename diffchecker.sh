#!/bin/bash

for i in * 
do
    if test -f "$i"
    then
	    for j in *
	    do
		    if test -f "$j" && [[ $i != $j ]]
		    then
			    #echo "testing $i and $j"
			    DIFF=$(diff $i $j)
			    if [ "$DIFF" == "" ]
			    then 
				    echo "$i and $j are the same"
			    fi
		    fi
	    done
    fi
done
