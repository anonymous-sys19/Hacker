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
echo -e "$rojo           Elije tu distribucion .. $fnc"
echo
echo
echo -e "$cyan [1] $rojo termux ""        ""       $cyan [2]$rojo Linux $fnc"
echo
echo
read -p " DISTRUBUCION >> $ " distribucion
echo
echo
if [ $distribucion = 1 ]; then
	cd HTP
	python3 seguridd.py
	cd ..
	clear
elif [ $distribucion = 2 ]; then
	cd hack
	g++ -o seguridad seguridad.cpp
	./seguridad
	cd ..
	clear
fi
function space {
	echo
}
space
function slowprint {
    cd HTP
    python3 script.py
	cd ..
}
echo -e   "$cyan         +============================+ "
echo -e   "         |        ESTE ESCRIPT        | "
echo -e   "         +============================+ "
sleep 0.50
echo -e   "     +====================================+ "
echo -e   "   |        LO HAGO CON MUCHO CARIÑO        | "
echo -e   "     +====================================+ "
sleep 0.50
echo -e   "      +==================================+ "
echo -e   "      |        PARA TODOS USTEDES        | "
echo -e   "      +==================================+ $fnc"
sleep 2s
clear
echo -e   "                ESPERO LES GUSTE" 
clear
slowprint
sleep 0.10s
echo -e   "$mor		+======================================+ "
echo -e	  "		|        by:anonimo\Hacker-pc          | "
echo -e   "		+======================================+ "
sleep 0.5
echo -e   "		|--------------------------------------| "
echo -e   "		|     Facebook:greivin.mayorga.5       | "
echo -e   "		|--------------------------------------| "
sleep 1s
echo -e   "		+======================================+ "
echo -e   "		|    Youtube By informatica y mas      | "
echo      "		+======================================+ "
sleep 1.50
echo
echo

echo -e "$mor [01]$verde Hacktoll 
 $mor[02]$verde Hacktool-s 
 $mor[03]$verde Team-hack
 $mor[04]$verde Osing-hack
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
	cd HTP
	bash hacktoolpc.sh
elif [ $option = 3 ]; then
	cd HACKTC
	bash HTC.sh
elif [ $option = 4 ]; then
	cd HTP
	bash osing.sh
elif [ $option = 99 ]; then
	clear
	exit 0
fi
