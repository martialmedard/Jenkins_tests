#!/bin/bash

echo "Que voulez-vous faire ?
       1. Scanner un réseau ?
       2. Scanner une plage d'adresse IP ?
       3. Scanner un port d'une adresse IP?
       4. Scanner tous les ports d'une adresse IP cible"
read choice

if [ $choice == 1 ];
 then
      echo "Veuillez entrer votre adresse IP :"
      read IP
      nmap -sT $IP -F -oG Monscan 
      cat Monscan 

      
fi
 	
if [ $choice == 2 ]; 

then
	echo "Veuillez entrer la première adresse IP :" 
	read FisrtIP

	echo "Veuillez entrer la deuxième adresse IP :"
	read LastIP
	nmap -sT $FisrtIP-$LastIP -F -oG fscan
	cat fscan 
	#tab2=("Adresse:$FirstIP à $LastIP \t" "\t Port:" "\t Service\n")
	#echo " RAPPORT DU SCAN"
	#echo -e ${tab2[@]}
fi

if [ $choice == 3 ]; 
then
	echo " Veuillez entrer l'adresse IP ciblée :"
	read Ipcible

	echo " Veuillez entrer le numéro du port à scanner :"
	read porscan

	nmap -sT $Ipcible -p$porscan -oG scanf
	cat scanf |
	awk -F// '{print$2}'/home/martial/Bureau/MyScripts/scanf
	tab=("Adresse:$Ipcible \t" "\t Port:$porscan" "\t Service:") cat scanf
	echo " RAPPORT DU SCAN"
	echo -e ${tab[@]}
    
fi
if [ $choice == 4 ];
 then
      echo "Veuillez entrer l'adresse IP :"
      read IP4
      nmap -sT $IP4 -F -oG Monscan1
      cat Monscan1 

      
fi

