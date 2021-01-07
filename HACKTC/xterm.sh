#!/bin/bash
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


function lineBreak {
        echo
}
function cleanScreen {
        clear
}
cleanScreen
lineBreak




lineBreak
lineBreak
echo -e "$rojo              Bienvenido al apartado Termux ... $fnc"
lineBreak
lineBreak
echo -e "
$azul   █████                                                             
$blanco   ░░███                                                              
$azul   ███████    ██████  ████████  █████████████   █████ ████ █████ █████
$blanco  ░░░███░    ███░░███░░███░░███░░███░░███░░███ ░░███ ░███ ░░███ ░░███ 
$rojo    ░███    ░███████  ░███ ░░░  ░███ ░███ ░███  ░███ ░███  ░░░█████░  
$blanco    ░███ ███░███░░░   ░███      ░███ ░███ ░███  ░███ ░███   ███░░░███ 
$azul    ░░█████ ░░██████  █████     █████░███ █████ ░░████████ █████ █████
$blanco     ░░░░░   ░░░░░░  ░░░░░     ░░░░░ ░░░ ░░░░░   ░░░░░░░░ ░░░░░ ░░░░░ 
$azul                                                                                  $fnc"


lineBreak
lineBreak
echo -e "$rojo        [01]$cyan Ubuntu" "          " "$rojo[06]$cyan Parrot-xfce"
lineBreak
echo -e "$amarillo        [02]$verde Ubuntuxfce" "      " "$amarillo[07]$verde Metasploit"
lineBreak
echo -e "$rojo        [03]$cyan Kali-linux" "      " "$rojo[08]$cyan Kali-linux-nethunter"
lineBreak
echo -e "$amarillo        [04]$verde Kali-xfce" "       " "$amarillo[09]$verde Termux-escritorio-xfce"
lineBreak
echo -e "$rojo        [05]$cyan Wiki-Termux" "     " "$rojo[10]$cyan Aircrack-ng  "
lineBreak
echo -e "$amarillo        [11]$verde UBUNTU-18" "       " "$amarillo[12]$verde DEBIAN"
lineBreak
echo -e "$rojo        [13]$cyan ARCHI-LINUX" "     " "$rojo[14]$cyan FEDORA "
lineBreak
echo -e "$amarillo        [99]$verde Atras" "           " "$amarillo[00]$verde Volver al menu \n$fnc"
lineBreak
read -p " Ingrese un valor $ " numero

if [ $numero = 1 ]; then
        cd
        mkdir ubuntu20
        cd ubuntu20
        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20.sh | bash
elif [ $numero = 2 ]; then
        cd
        mkdir ubu-xfce
        cd ubu-xfce
        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu20/ubuntu20-xfce.sh | bash
elif [ $numero = 3 ]; then
        cd
        mkdir kali
        cd kali
        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali.sh | bash
elif [ $numero = 4 ]; then
        cd
        mkdir kali-xfce
        cd kali-xfce
        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Kali/kali-xfce.sh | bash
elif [ $numero = 5 ]; then
        cd
        pkg install git -y
        git clone https://github.com/theb3st/wiki-termux
        cd wiki-termux
        bash home.sh
elif [ $numero = 6 ]; then
        cd
        mkdir Parrot-desk
        cd Parrot-desk
        pkg update
        pkg upgrade
        pkg install wget openssl-tool proot -y && hash -r && wget https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Parrot/parrot.sh && bash parrot.sh
        ./start-parrot.sh
        wget https://raw.githubusercontent.com/EXALAB/AnLinux-Resources/master/Scripts/DesktopEnvironment/Apt/Xfce4/de-apt-xfce4.sh && bash de-apt-xfce4.sh
elif [ $numero = 7 ]; then
        pkg update
        pkg upgrade
        pkg install git
        pkg install root-repo
        pkg install unstable-repo
        pkg install x11-repo
        pkg install matasploit
elif [ $numero = 8 ]; then
        lineBreak
        echo -e " Recomendable tener [6GB] "
        sleep 3
        cd
        mkdir kali-net
        cd kali-net
        curl -LO https://raw.githubusercontent.com/Hax4us/Nethunter-In-Termux/master/kalinethunter
        chmod +x kalinethunter
        sleep 2
        echo -e " ESPERE ...  "
        sleep 1
        echo -e " Instalando ... "
        sleep 0.50
        cleanScreen
        ./kalinethunter
        lineBreak
        lineBreak
        echo -e "$rojo RECMENDACIONES"
        lineBreak
        echo -e "Si eres usuario no root [startkali]"
        lineBreak
        echo -e "Si eres usuario root [ startkali -r ]"
        lineBreak
        echo
        echo -e "Para iniciar VNC [vnc start] stop [vnc stop]
        status [vnc status] si eres root [ip=5901] no root [ip=5902]$fnc"
elif [ $numero = 9 ]; then
        lineBreak
        echo -e " Instalando el termux-desktop ..."
	sleep 2
        pkg install root-repo
	pkg install unstable-repo
	pkg install x11-repo
	pkg update
	pkg upgrade && pkg install git
	git clone --depth=1 https://github.com/adi1090x/termux-desktop.git
	cd termux-desktop
	chmod +x setup.sh
	./setup.sh --install
elif [ $numero = 10 ]; then
	pkg update
	pkg upgrade
	pkg install aircrack-ng
	clear
elif [ $numero = 11 ]; then
        lineBreak
        echo -e " [1] UBUNTU-18              [2] UBUNTU-18-XFCE  "
        lineBreak
        echo -e " ELIJE LA OPCION A INSTALAR ... "
        read opcion 
        if [ $opcion = 1 ]; then
                function ubuntu18 {
                        cd
                        mkdir UBUNTU-18
                        cd UBUNTU-18
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu/ubuntu.sh | bash
                        lineBreak
                        echo -e " Listo Proceso terminado [ Habre otra pestaña y ejecuta la dist ]"
                }
                ubuntu18
        elif [ $opcion = 2 ]; then
                function ubuntu18-xfce {
                        cd 
                        mkdir UBUNTU-XFCE
                        cd UBUNTU-XFCE
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Ubuntu/ubuntu-xfce.sh | bash
                        lineBreak
                        echo -e " TERMINADO PARA EJECUTAR VNC [ VNCSERVER ]"
                }
                ubuntu18-xfce
        fi
elif [ $numero = 12 ]; then
        lineBreak
        echo -e " [01] DEBIAN                       [02] DEBIAN-XFCE"
        
        read -p "ELIJE TU OPCION $ " debian
        if [ $debian = 1 ]; then
                function DEV {
                        cd
                        mkdir DEBIAN
                        cd DEBIAN
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian.sh | bash
                        lineBreak
                        echo -e "TERMINADO ...
                        PARA EJECUTAR [./start-debian.sh] "
                }
                DEV
        elif [ $debian = 2 ]; then
                function devi {
                        cd
                        mkdir DEBIAN-XFCE
                        cd DEBIAN-XFCE
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Debian/debian-xfce.sh | bash
                        lineBreak
                        echo -e " PARA EJECUTAR [vncserver] "
                }
                devi
        fi
elif [ $numero = 13 ]; then
        echo -e " [01] Archi-linux                       [02] Archi-linux-xfce "
        lineBreak
        lineBreak
        echo -e " ELIGE UNA OPCION ... "
        lineBreak
        read -p " $ " archi
        lineBreak
        if [ $archi = 1 ]; then
                function archi {
                        cd
                        mkdir ARCHI-LINUX
                        cd ARCHI-LINUX
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch.sh | bash
                        lineBreak
                        echo -e " Prosseso terminado ... "
                }
                archi
        elif [ $archi = 2 ]; then
                function archi {
                        cd
                        mkdir ARCHI-XFCE
                        pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Arch/armhf/arch-xfce.sh | bash
                        lineBreak
                        echo -e " Prosseso terminado ...[vncserver[para ejecuta vnc]] "
                }
fi
elif [ $numero = 14 ]; then
        echo -e " [01] Fedora                      [02] Fedora-xfce"
        lineBreak
        lineBreak
        echo -e " ELIGE UNA OPCION ... "
        lineBreak
        read -p " $ " Fedora

        if [ $Fedora = 1 ]; then
                cd
                mkdir Fedora
                cd Fedora
                pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora.sh | bash
                echo
                echo -e " PROSESO TERMINADO "
                exit 0
        elif [ $Fedora = 2 ]; then
                cd
                mkdir FEDORA-XFCE
                cd FEDORA-XFCE
                pkg update -y && pkg install curl proot tar -y && curl https://raw.githubusercontent.com/AndronixApp/AndronixOrigin/master/Installer/Fedora/fedora-xfce.sh | bash
                echo -e " PROSESO TERMINADO-EJECUTA Y ESCRIBE [VNCSERVER] "
                exit 0
        fi
elif [ $numero = 99 ]; then
        cleanScreen
        bash HTC.sh
elif [ $numero = 00 ]; then
        cleanScreen
        cd ..
        cd hack
        bash main.sh
        bash main.sh
else
        lineBreak
        echo -e "  La opcion no esta en la lista"
	echo
fi
