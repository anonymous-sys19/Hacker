#!/bin/bash
clear
verde='\e[1;32m'
cyan='\e[1;36m'
rojo='\e[1;31m'
azul='\e[1;34m'
blanco='\e[1;35m'
amarillo='\e[1;33m'
click='\e[5m'
fn='\e[25m'
fnc='\e[0;34m'
mor='\e[95m'
clear
while :
do
opcion=0

echo
echo
echo -e "
$blanco  ===============================  $azul    ██▓     ██▓ ███▄    █  █    ██ ▒██   ██▒
  =  ====  ================  ====  $azul   ▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒▒ █ █ ▒░
  =  ====  ================  ====  $azul   ▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░░  █   ░
  =  ====  ================  ====  $azul   ▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░ ░ █ █ ▒ 
  =  ====  ===   ====   ===  =  =  $azul   ░██████▒░██░▒██░   ▓██░▒▒█████▓ ▒██▒ ▒██▒
  =        ==  =  ==  =  ==    ==  $rojo   ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ ▒▒ ░ ░▓ ░
  =  ====  =====  ==  =====   ===  $rojo   ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░ ░░   ░▒ ░
  =  ====  ===    ==  =====    ==  $rojo     ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░  ░    ░  
  =  ====  ==  =  ==  =  ==  =  =  $rojo       ░  ░ ░           ░    ░      ░    ░  
  =  ====  ===    ===   ===  =  =  $rojo                                            $fnc
$blanco  ===============================$fnc"
echo
echo

echo -e  " $cyan 01$fnc $rojo pydictor$fnc"  "$azul Herramienta para la creación de diccionarios de F-bruta."
echo -e  " $cyan 02$fnc $rojo instagram-hack$fnc"  "$azul Crackea cualquier instagram con esta herramienta."
echo -e  " $cyan 03$fnc $rojo OSINTed$fnc"  "$azul Recolecta informacion de instagram suma mente avanzada."
echo -e  " $cyan 04$fnc $rojo PhoneInfoga$fnc"  "$azul Te brinda toda la informacion posible de numeros de telefonos."
echo -e  " $cyan 05$fnc $rojo Osi.ig$fnc"  "$azul Obtiene una variedad de información "
echo -e  " $cyan 06$fnc $rojo Metagoofil$fnc"  "$azul Diseñada para extraer documentos pertenecientes a una empresa objetivo"
echo -e  " $cyan 07$fnc $rojo KawaiiDeauther$fnc"  "$azul Dale kill ah cualquier red wifi con solo la ISSD."
echo -e  " $cyan 08$fnc $rojo WiFi-Pumpkin$fnc"  "$azul Crea un doble wifi  con esta herramienta para tu victima. "
echo -e  " $cyan 09$fnc $rojo Info$fnc"  "$azul obtiene informacion de sitios webs"
echo -e  " $cyan 10$fnc $rojo ID-F-BOOK$fnc" "$azul Saca el ID de facebook de una victima mas facil y rapido"
echo -e  " $cyan 99$fnc $click Atras $fn"

echo -e -n "  \e[32mIngrese un valor :> $fnc"
read opcion
case $opcion in

1)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
function pydictor {
    git clone --depth=1 --branch=master https://www.github.com/landgrey/pydictor.git
    cd pydictor/
    chmod +x pydictor.py
    python pydictor.py
    echo
    echo
    echo -e "ingrese nombre de posible victima ... "
    read nombre
    echo
    echo -e " Ingrese un level entre  [1,5] ... "
    read level
    echo
    echo
    echo -e " Ingrese un maximo a generar [ejp] [1 10]... "
    read maximo
    echo
    echo
    echo -e " Ingresa la ruta a guardar tu diccionario ... "
    read ruta
    echo
    echo
    echo -e " Ingresa el nombre de tu diccionario ... "
    read pas
    python pydictor.py -extend $nombre --level $level --len $maximo -o $ruta/$pas.txt
    echo
    echo
}
pydictor
read enterkey
;;
2)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
function instagram {
    limpiar_pantalla
    git clone https://github.com/Bitwise-01/Instagram-.git
    chmod 777 -R Instagram-
    limpiar_pantalla
    cd Instagram-
    pip3 install -r requirements.txt
    limpiar_pantalla
    echo
    echo -e $blue " 
    _//        _//           _//                                        
    _//        _//           _//                                        
    _//   _/   _//   _//     _//   _///   _//    _/// _// _//    _//    
    _//  _//   _// _/   _//  _// _//    _//  _//  _//  _/  _// _/   _// 
    _// _/ _// _//_///// _// _//_//    _//    _// _//  _/  _//_///// _//
    _/ _/    _////_/         _// _//    _//  _//  _//  _/  _//_/        
    _//        _//  _////   _///   _///   _//    _///  _/  _//  _////     "

    echo
    
    echo -e $red "                                      ENPESEMOS "
    echo -e "--> Username "
    read u
    echo -e "--> Ruta-Password "
    read p
    echo -e $green " ELIGE UN MODO ENTRE 0, 1, 2, 3, 4"
    echo -e "Mode "
    read m
    python3 instagram.py $u $p -m $m
}
instagram
read enterkey
;;
3)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
function OSINTed {
    git clone https://github.com/SpookySec/OSINTed.git
    limpiar_pantalla
    chmod 777 -R OSINTed
    cd OSINTed
    bash install.sh
    python3 osinted.py
}
OSINTed
read enterkey
;;
4)

function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
function phoneinfoga {
    git clone https://github.com/la-deep-web/Phoneinfoga.git
    cd Phoneinfoga
    python3 -m pip install -r requirements.txt
    python3 phoneinfoga.py
    echo
    echo -e "$cyan Ingresa el numero de telefono ... $azul"
    read -p "--> " numero
    python3 phoneinfoga.py -n $numero
}
phoneinfoga
read enterkey
;;
5)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
function information {
    git clone https://github.com/th3unkn0n/osi.ig.git
    limpiar_pantalla
    chmod 777 -R osi.ig
    limpiar_pantalla
    cd osi.ig
    mkdir informacion-instagran
    python3 -m pip install requirements.txt
    clear
    read -p " ENTER USER-NAME $ " usr
    echo
    echo -e "Espere ..."
    sleep 1s
    echo
    python3 main.py -u $usr
}
information
read enterkey
;;
6)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
apt-get install metagoofil
metagoofil
echo
echo "   "
echo -e "$mor ENTER YOUR PAGE-WEB: > $fnc " 
read p
echo -e "$mor RETA A GUARDAR SU INFORMACION: $fnc > " 
read r
echo "  --->                                  ESTE PROSESO PODRIA TADAR        <---"
echo
metagoofil -d $p -t pdf,doc,xls,ppt,docx,pptx,xlsx -l 20 -n 10 -o $r
read enterkey
;;
7)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output

function raudead {
    limpiar_pantalla
    git clone https://github.com/aryanrtm/KawaiiDeauther
    limpiar_pantalla
    chmod 777 -R KawaiiDeauther
    cd KawaiiDeauther
    bash install.sh
    bash KawaiiDeauther.sh
}
raudead
read enterkey
;;
8)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output
echo
echo -e "$rojo  ELIGE UNA OPCION .."
echo
echo -e "$blanco           [01] WIFIPUNPKING          [02] WIFIPUNPKINGV3   "
echo
echo
read -p " Dead$ " opcion
if [ $opcion = 1 ]; then
    echo
    echo -e " $rojo "
    read -p " Ya instalaste WIFI-PUNPKING [y/n] " install
    echo
    echo -e " $fnc "
    if [ $install = n ]; then
        git clone https://github.com/zackhaikal/WiFi-Pumpkin.git
        limpiar_pantalla
        chmod 777 -R WiFi-Pumpkin
        cd WiFi-Pumpkin
        chmod 777-R installer.sh
        ./installer.sh --install
        python wifi-pumpkin.py 
    elif [ $install = y ]; then
        cd ..
        cd output
        cd WiFi-Pumpkin
        python wifi-pumpkin.py
    fi
elif [ $opcion = 2 ]; then
    echo
    echo -e "$azul       [01]$verde UBUNTU       $azul  [02]$verde LINUX  $rojo  [termux/windows [not sopported] ] $fnc"
    echo
    echo
    echo -e "$cyan ELIGE OPCION... "
    echo
    read -p "dist--> " dist
    if [ $dist = 1 ]; then
        echo
        echo -e "$azul  Nota " " No fue probado este scryp para ubuntu [Quieres instalar ] [y/n] "
        echo
        read -p "# " scryp
        if [ $scryp = y ]; then
            sudo apt install python3.7-dev libssl-dev libffi-dev build-essential python3.7
            git clone https://github.com/P0cL4bs/wifipumpkin3.git
            cd wifipumpkin3
            sudo make install
        elif [ $scryp = n ]; then
            bash main.sh
        fi
    elif [ $dist = 2 ]; then
        echo -e " $rojo "
        read -p " Ya instalaste WIFI-PUNPKINGv3 [y/n] " wifii
        echo
        if [ $wifii = n ]; then
            sudo apt install libssl-dev libffi-dev build-essential
            echo -e " Listo .."
            git clone https://github.com/P0cL4bs/wifipumpkin3.git
            limpiar_pantalla
            chmod 777 -R wifipumpkin3
            cd wifipumpkin3
            sudo apt install python3-pyqt5
            python3 -c "from PyQt5.QtCore import QSettings; print('done')"
            sudo python3 setup.py install
            echo
            echo
            echo -e "$blanco  La proxima vez solo ejecuta [sudo wifipumpkin3]"
            echo
            echo
            sudo  wifipumpkin3
        elif [ $wifii = y ]; then
            cd ..
            cd output
            cd wifipumpkin3
            wifipumpkin3


        fi
    fi
fi
read enterkey
;;
9)
function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output

function infoWeb {
    git clone https://github.com/b4rc0d37/Info.git
    limpiar_pantalla
    chmod 777 -R info.sh
    cd Info
    bash info.sh
}
infoWeb

read enterkey
;;
10)

function limpiar_pantalla {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
cd ..
cd output/url/
function ID {
    python2 ID-F-BOOK.py
}
ID
read enterkey
;;
99)
function Atras {
bash main.sh
}
Atras
read enterkey
;;
*) echo " La opcion no esta en la lista"
read enterkey
;;
esac
done
