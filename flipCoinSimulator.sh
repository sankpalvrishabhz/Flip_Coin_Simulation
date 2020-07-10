#!/bin/bash -x
read -p "How many times Do you Want to flip the Coin:" times
while [[ $count -lt times ]]
do
        num=$((RANDOM%2))
        if [[ $num -eq 0 ]]
        then
                echo "Heads"
                ((count_H++))
        else
                echo "Tails"
                ((count_T++))
        fi
	((count++))
done
echo -e "\nHeads have been Won $count_H times"
echo -e "\nTails have been Won $count_T times"
