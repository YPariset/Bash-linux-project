#!/bin/bash

#Permet de creer une variable date et de la formater YYYY-MM-DD-HH-MM-SS  
varDate=$(date '+%Y-%m-%d-%H-%M-%S')

#Permet de creer un dossier passe en argument (le -p permet de verifier si 
#le dossier existe deja, si c est le cas il n en creera pas de nouveau) 
mkdir -p $2

#Permet de creer un fichier .log dans le repertoire $2 passe en argument
#avec pour format la date en variable
touch $2/Log-$varDate.log

#Permet de deplacer le contenu du fichier $1 passe en parametre dans le 
#fichier Log-$varDate.log du dossier $2
#Un nouveau fichier est ajoute a chaque fois grace au >> 
cat $1 >> $2/Log-$varDate.log 

#Permet de vider le contenu du fichier $1
echo "" > $1 

