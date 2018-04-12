#!/usr/bin/env bash

files=$(ls -Rahur | sort)

for fich in ./*
do size+=$(stat -c%s $fich)
done

nb=${#files[@]}

for ((i=0; i<=$nb; i++))
do echo "${files[$i]}" "${size[$i]}"
done