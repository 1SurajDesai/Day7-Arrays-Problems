#!/bin/bash -x

arr=($(seq 0 1 100))
declare -a arr_new

for (( i=1; i<101; i++ ))
do
	if  [[ ${arr[$i]:0:1} -eq ${arr[$i]:1:1} ]]
	then
		arr_new+=${arr[$i]}
	fi
done

echo ${arr[@]}

for value in "${arr_new[@]}"
do
	echo $value
done

