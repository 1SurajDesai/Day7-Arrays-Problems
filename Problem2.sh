#!/bin/bash -x

for (( i=1; i<=10; i++ ))
do
        num[i]=$((RANDOM%900+100))
done
echo ${num[@]}

for ((i = 0; i<10; i++))
do    
	for((j = 0; j<10-i; j++))
    	do
    
        	if [ ${num[j]} -gt ${num[$((j+1))]} ]
        	then
            		# swap
            		temp=${num[j]}
            		num[$j]=${num[$((j+1))]}  
            		num[$((j+1))]=$temp
        	fi
	done
done

echo "Array in sorted order :"
echo ${num[@]}
echo "Second smallest number is:" ${num[1]}
echo "Second largest number is:" ${num[8]}
echo ${#num[@]}
