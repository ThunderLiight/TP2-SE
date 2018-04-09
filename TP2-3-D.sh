#!/usr/bin/env bash

PS3="Que voulez vous ? "
select choix in \
   "apt-get update" \
   "apt-get upgrade"  \
   "apt-get dist-upgrade"  \
   "apt-get clean"  \
   "quitter"
do
   case $REPLY in
      1) sudo apt-get update || echo "Commande effectuée"       ;;
      2) sudo apt-get upgrade || echo "Commande effectuée" ;;
      3) sudo apt-get dist-upgrade || echo "Commande effectuée" ;;
	  4) sudo apt-get clean || echo "Commande effectuée" ;;
	  5) echo "Au revoir." 
         break ;;
      *) echo "Choix invalide"  ;;
   esac
done