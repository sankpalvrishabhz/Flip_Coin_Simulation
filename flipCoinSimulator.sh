#!/bin/bash -x
Limit=21
while [ true ]
do
        num=$((RANDOM%2))
        if [[ $num -eq 0 ]]
        then
		echo Heads
                ((count_H++))
        else
                echo Tails
                ((count_T++))
        fi
        if [[ $count_H -eq $Limit ]]
        then
                echo -e "\nHeads have been reached 21 times"
		echo "By" $(($Limit-$count_T))
	        break
        fi
        if [[ $count_T -eq $Limit ]]
        then
                echo -e "\nTails have been reached 21 times"
                echo "By" $(($Limit-$count_H))
                break
        fi
	
done
