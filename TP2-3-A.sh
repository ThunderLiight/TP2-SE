#!/usr/bin/env bash

i=0
for image in ( $1/*.jpeg $1/*.gif $1/*.png )
do touch $2/image-$i.jpg 
convert $2/image-$i.jpg -resize $3x$3 $2/image-$i.jpg
done