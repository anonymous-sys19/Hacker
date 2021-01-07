#!/bin/bash/
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
function limpiar_pantalla {
    clear
}
clear
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}

function space {
    echo
}
space
echo
echo -e "
$azul 
$azul    ██▓     ██▓ ███▄    █  █    ██ ▒██   ██▒
$azul   ▓██▒    ▓██▒ ██ ▀█   █  ██  ▓██▒▒▒ █ █ ▒░
$azul   ▒██░    ▒██▒▓██  ▀█ ██▒▓██  ▒██░░░  █   ░
$azul   ▒██░    ░██░▓██▒  ▐▌██▒▓▓█  ░██░ ░ █ █ ▒ 
$azul   ░██████▒░██░▒██░   ▓██░▒▒█████▓ ▒██▒ ▒██▒
$rojo   ░ ▒░▓  ░░▓  ░ ▒░   ▒ ▒ ░▒▓▒ ▒ ▒ ▒▒ ░ ░▓ ░
$rojo   ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░░░▒░ ░ ░ ░░   ░▒ ░
$rojo     ░ ░    ▒ ░   ░   ░ ░  ░░░ ░ ░  ░    ░  
$rojo       ░  ░ ░           ░    ░      ░    ░  
$rojo                                            $fnc"
echo

while :
do
opcion=0

echo -e "$rojo  01$negrita$amarillo Wpscan""          ""$rojo /Osing o escaneo web-s" 
echo -e "$rojo  02$negrita$cyan Phonia""              ""$mor /Recolecta informacion de numeros telefonicos"
echo -e "$rojo  03$negrita$amarillo H8mail""          ""$rojo /Verifica si tu gmail esta comprometido"
echo -e "$rojo  04$negrita$cyan CC- check""           ""$mor /Generador de cc,bin"
echo -e "$rojo  05$negrita$amarillo REALHACKRH593 ""  ""$rojo /Generadoe del mundo Bin, CC"
echo -e "$rojo  06$negrita$cyan IP-GEOLocation""      ""$mor /Geolocation por medio de IP"
echo -e "$rojo  07$negrita$amarillo BruteX ""         ""$rojo /Fuerza bruta a servidores ftp, ssh,etc"
echo -e "$rojo  08$negrita$cyan Evil-Sofia""          ""$mor /Generadores de CC , y extrapolar"
echo -e "$rojo  09$negrita$amarillo Check-Nerd ""     ""$rojo /Otro de los mejores generadores de CC , BIN"
echo -e "$rojo  10$negrita$cyan HERRAMIENTAS-TERMUX"" ""$mor /Un apartado solo para termux "
echo -e "$rojo  99$amarillo$negrita Atras $fnc"
echo
echo
echo -e -n "$negrita$mor Ingrese un valor: $ $fnc"
read opcion
case $opcion in

1)
apt-get install wpscan
wpscan --update
wpscan
space
space
read -p "Se_URL --> $ " url
wpscan --url $url
read enterkey
;;

2)
cd ..
cd output
limpiar_pantalla
git clone https://github.com/coredamage/phonia.git
chmod 777 -R phonia
limpiar_pantalla
cd phonia
./install.sh
read -p "Set phone number" phone
phonia -n $phone
read enterkey
;;
3)
pip install h8mail
h8mail
space
space

echo -e "Antes de escribir su email escribe (entre ) -t o -u ,  y  el correo electronico  "
space
echo -e "EJEMPLO  -t prueba@gmail.com"
space
read -p "enter su email " email
h8mail $email
read enterkey
;;
4)
cd ..
cd output
function extrapolar {
    git clone https://github.com/AngelV1p/Bin_Resucitate.git
    cd Bin_Resucitate
    chmod 777 Bin_Resucitate.sh
    ./Bin_Resucitate.sh
}
extrapolar
read enterkey
;;
5)
cd ..
cd output
function RCH {
    git clone https://github.com/RealHackRH593/CC-MundoRH.git
    ls
    cd CC-MundoRH
    ls
    chmod 777 -R mundoccrh.sh requirement.sh
    bash requirement.sh
    bash mundoccrh.sh    
}
RCH
read enterkey
;;
6)
function IPGeoLocation {
    cd ..
    cd output
    git clone https://github.com/maldevel/IPGeoLocation
    cd IPGeoLocation
    pip3 install -r requirements.txt --user
    apt-get install python3-setuptools
    pip3 install -r requirements.txt
    read -p "Introduce IP a geolizar: $ " IP
    python3 ipgeolocation.py -t $IP
}
IPGeoLocation
read enterkey
;;
7)
function BRUTEx {
    cd ..
    cd output
    https://github.com/1N3/BruteX.git
    cd BruteX
    ./install.sh
    read -p " Ingrese ip de la web: $ " ip
    read -p " Ingrese un puerto: $ " port
    brutex $ip $port
}
BRUTEx
read enterkey
;;
8)
function Sofia {
    cd ..
    cd output
    git clone https://github.com/emiliobog/Evil-Sofia.git
    cd Evil-Sofia
    python2 Sofia.py
}
Sofia
read enterkey
;;
9)
echo -e "Si usas [Termux  [y] [ linux [n]"
read distri
if [ $distr = y ]; then
    apt update && apt upgrade -y
    pkg install python -y
    pkg install python2 -y
    pkg install w3m -y
    pkg install cmatrix -y
    pkg install bash -y
elif [ $distr = n ]; then
    apt-get install w3m -y
    sleep 0.50
    apt-get install cmatrix
fi
function checknerd {
    cd ..
    cd output
    git clone https://github.com/FearFraiming/CheckNerd.git
    chmod 777 -R CheckNerd
    cd CheckNerd
    python2 
}
checknerd
read enterkey
;;
10)
bash xterm.sh
read enterkey
;;
99)
cd ..
cd hack
bash main.sh
read enterkey
;;
*) echo " La opcion no esta en la lista"
read enterkey
;;
esac
done