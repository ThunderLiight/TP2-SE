#!/usr/bin/env bash
for i in $(./*) 
do 
	touch index.html
	echo "<html>" > ./$i/index.html
	echo "<head>" >> ./$i/index.html
	echo "<title>Empty</title>" >> ./$i/index.html
	echo "</head>" >> ./$i/index.html
	echo "<body>" >> ./$i/index.html
	echo "Fichier squelette" >> ./$i/index.html
	echo "</body>" >> ./$i/index.html
	echo "</html>" >> ./$i/index.html
done