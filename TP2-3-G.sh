#!/usr/bin/env bash
echo "Nombre de nombres randoms: "
read nb
for (( i=0; i < nb; i++))
do tab=([i]=$RANDOM) 
	echo ${tab[i]}
done

var=${tab[*]}
echo $var