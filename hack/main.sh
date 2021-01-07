#!/bin/bash

verde='\e[1;32m'
cyan='\e[1;36m'
rojo='\e[1;31m'
azul='\e[1;34m'
blanco='\e[1;35m'
amarillo='\e[1;33m'
click='\e[5m'
fn='\e[25m'
fnc='\e[0;0m'
mor='\e[95m'
negrita="\e[1m"


echo
echo
echo -e   "$mor			+======================================+ "
echo -e	  "			|        by:anonimo\Hacker-pc          | "
echo -e   "			+======================================+ "
sleep 0.5s
echo -e   "			|--------------------------------------| "
echo -e   "			|     Facebook:greivin.mayorga.5       | "
echo -e   "			|--------------------------------------| "
sleep 1s
echo -e   "			+======================================+ "
echo -e   "			|    Youtube By informatica y mas      | "
echo      "			+======================================+ "
sleep 1.50s
echo
echo

echo -e "$mor [01]$verde Hacktoll 
 $mor[02]$verde Hacktool-s 
 $mor[03]$verde Team-hack
 $mor[04]$verde osing-hack
 $mor[99]$verde$click salir$fnc"
echo
echo
echo -e "$verde   Elige una opcion $fnc"
read option
echo
clear
if [ $option = 1 ]; then
	cd hack
	bash hack.sh
elif [ $option = 2 ]; then
	cd ..
	cd HTP
	bash hacktoolpc.sh
elif [ $option = 3 ]; then
	cd ..
	cd HACKTC
	bash HTC.sh
elif [ $option = 3 ]; then
	cd ..
	cd HTP
	bash osing.sh
elif [ $option = 4 ]; then
	cd ..
	cd HTP
	bash osing.sh
elif [ $option = 99 ]; then
	clear
	exit 0
fi

