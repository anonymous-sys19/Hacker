#!/usr/bin/bash
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

echo -e "$negrita$verde                 veryficacion  $fnc"
echo
echo
echo -e "$rojo               PANEL DE INSTALACIÓN     $fnc"
echo
echo
echo -e "$rojo       [1]$mor Termux ""                ""$rojo[2]$mor Linux $fnc"
echo
echo
read -p "Dist set: > " user
echo
if [ $user = 1 ]; then
        echo
        echo
        echo -e "$negrita$rojo Prosesando/e/instalando los requeriments$fnc"
        sleep 1
        pkg install python2
        pkg install python
        pkg install clang
        pkg install git
        cd run
        git clone https://github.com/zoelabbb/conio.h.git
        cd conio.h
        mv conio.h /data/data/com.termux/files/usr/include/
        cd ..
        rm -rf conio.h
        chmod 777 -R hacker
        mv hacker /data/data/com.termux/files/usr/bin
        chmod 777 -R termux.sh
        bash termux.sh
        echo
        echo
        echo -e "$amarillo ESPERE ... INSTALANDO DEPENDENCIAS TERMUX$fnc"
        echo
        echo
        pkg install unstable-repo
        pkg install x11-repo
        clear
        echo
        echo -e "$mor$negrita Requeriments listo/ Instalando nmap,sql $fnc"
        echo
        echo
        echo -e "$verde Quiere instalar [wpscan/nmap/sqlmap/etc [y/n]$fnc"
        read y
        if [ $y = y ]; then

                echo -e "$rojo Instalando sql $fnc"
                echo
                echo -e " Esta opcion sql no siempre instalara "
                echo -e " Recomiendo instalar manual [pkg install sqlmap] "
                echo
                pkg install sqlmap
                echo
                echo -e " Instalando nmap"
                sleep 1
                echo
                pkg install nmap
                echo
                echo
                echo -e "$negrita$rojo Proseso terminado $fnc"
                echo
                echo -e "$blanco -------------------------------->$fnc"
                echo

                echo -e "$rojo    EJECUTA LA HERRAMIENTA ESCRIBIENDO hacker$fnc"
                echo
                echo -e "$blanco -------------------------------->$fnc"
        elif [ $y = n ]; then
                echo
                echo
                echo -e "$verde Bienvenido al mundo del hacking... $fnc"
                sleep 2
                echo -e "$rojo    EJECUTA LA HERRAMIENTA ESCRIBIENDO hacker$fnc"
                exit 0
                fi
elif [ $user = 2 ]; then
        echo -e "                                                                       
        $rojo    ^    ^    ^    ^    ^  
        $blanco   /l\  /i\  /n\  /u\  /x\ 
        $azul  <___><___><___><___><___>$fnc"
        sleep 1
        echo
        echo
        echo -e "$rojo Prosesando/e/instalando los requeriments$fnc"
        sleep 1
        echo
        cd run
        git clone https://github.com/zoelabbb/conio.h.git
        cd conio.h
        sudo mv conio.h /usr/include/
        cd ..
        rm -r conio.h
        chmod 777 -R Hacker
        mv Hacker /usr/bin/
        cd ..
        cd ..
        mkdir  /usr/anonimo
        mv Hacker /usr/anonimo/
        echo -e "$rojo    EJECUTA LA HERRAMIENTA ESCRIBIENDO Hacker$fnc"
        exit 0
fi
