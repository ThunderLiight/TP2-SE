#!/usr/bin/env bash

html=(/home/etudiant/html/*.html)

for i in "${html[@]}" 

do 	nomfic=`echo ${html[i]} | rev | cut -d'/' -f 1 | rev`
	echo nomfic: > /home/etudiant/html/entete.txt
	head -4 ${html[i]} > /home/etudiant/html/entete.txt

done