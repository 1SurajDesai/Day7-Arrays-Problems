#!/bin/bash -x

read -p " Enter a array" array
tot=0
for i in ${array[@]}
do
	tot=$(($tot+$i))
done
echo ${array[@]}
echo $tot
