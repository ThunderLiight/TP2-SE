#!/usr/bin/env bash
j=1

for((i=1; i <= $#; i++))

do
	while [ !$($j) =~/d+ ]
	do ((j++))
	done

done

if [  $($j)=~/d+ ]
then 
	nb1=$($j)
	((j++))
fi

for((i=1; i <= $#; i++))

do
	while [ !$($j) =~/d+ ]
	do ((j++))
	done

done

if [ $($j) =~/d+ ]
then 
	nb2=$($j)
	((j++))
fi

for ((i=$j; i <= $#; i++))

do

	if [ $nb2 -gt $nb1 ]
	then max=$nb2
	else max=$nb1
	fi

	((j++))
	nb1=$nb2

	for ((i=$j; i <= $#; i++))
	
	do
	
		if [ $((i+1)) =~/d+ ]
		then nb2=$((i+1))
		else ((i++))
		fi
	
	done

done

echo $max

j=1

for((i=1; i <= $#; i++))

do
	while [ !$($j) =~/d+ ]
	do ((j++))
	done

done

if [  $($j)=~/d+ ]
then 
	nb1=$($j)
	((j++))
fi

for((i=1; i <= $#; i++))

do
	while [ !$($j) =~/d+ ]
	do ((j++))
	done

done

if [ $($j) =~/d+ ]
then 
	nb2=$($j)
	((j++))
fi

for ((i=$j; i <= $#; i++))

do

	if [ $nb2 -lt $nb1 ]
	then min=$nb2
	else min=$nb1
	fi

	((j++))
	nb1=$nb2

	for ((i=$j; i <= $#; i++))
	
	do
	
		if [ $((i+1)) =~/d+ ]
		then nb2=$((i+1))
		else ((i++))
		fi
	
	done

done

echo $min