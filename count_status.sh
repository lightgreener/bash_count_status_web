#!/bin/env bash

#
#
#

# set a array to count
declare -A array_sum

#set avarable which store web status
arr=`ss -ant |grep 80| cut -d" " -f1`

for i in $arr 
do
	# set a key and value and count up
	# assign value to key
 	# this is an array,
	let array_sum[$i]++

done

for j in ${!array_sum[*]}
do
	echo $j:${array_sum[$j]}
done

