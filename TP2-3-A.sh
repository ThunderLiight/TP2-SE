#!/usr/bin/env bash
echo "Saisissez un répertoire source: "
read x

echo "Saisissez un répertoire cible: "
read y

echo "Saisissez une taille d'image: "
read z

for image in ($x.jpeg $x.gif $x.png)
do convert -thumbnail z abc.png thumb.abc.png > y
done
