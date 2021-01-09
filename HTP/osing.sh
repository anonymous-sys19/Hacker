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

echo
echo -e "$cyan$click                    MUNDO DEL OSING    $fn"

echo -e "$blanco
    ██████   ██████                           █████         
   ░░██████ ██████                           ░░███          
    ░███░█████░███  █████ ████ ████████    ███████   ██████ 
    ░███░░███ ░███ ░░███ ░███ ░░███░░███  ███░░███  ███░░███
    ░███ ░░░  ░███  ░███ ░███  ░███ ░███ ░███ ░███ ░███ ░███
    ░███      ░███  ░███ ░███  ░███ ░███ ░███ ░███ ░███ ░███
    █████     █████ ░░████████ ████ █████░░████████░░██████ 
$rojo   ░░░░░     ░░░░░   ░░░░░░░░ ░░░░ ░░░░░  ░░░░░░░░  ░░░░░░  
                                                            
$azul$click -------------------------------------------------------------$fn                                                           
                                                            
$blanco                         ███                                
$rojo                        ░░░                                 
$blanco        ██████   █████  ████  ████████    ███████           
       ███░░███ ███░░  ░░███ ░░███░░███  ███░░███           
      ░███ ░███░░█████  ░███  ░███ ░███ ░███ ░███           
      ░███ ░███ ░░░░███ ░███  ░███ ░███ ░███ ░███           
      ░░██████  ██████  █████ ████ █████░░███████           
$rojo       ░░░░░░  ░░░░░░  ░░░░░ ░░░░ ░░░░░  ░░░░░$blanco███           
                                         ███ ░███           
                                        ░░██████            
$rojo                                         ░░░░░░                                                                       
$fnc"
echo -e "
 $amarillo[01]$verde Th3inspector               $amarillo[06]$verde GVNsearch

 $amarillo[02]$blanco Dev-ploit                  $amarillo[07]$blanco HOICig 

 $amarillo[03]$rojo Infoga                     $amarillo[08]$rojo Mosint

 $amarillo[04]$blanco WAScan                     $amarillo[09]$blanco DracNmap

 $amarillo[05]$verde UserRecon                  $amarillo[10]$verde Code_and_Security

 $amarillo[99]$rojo Atras                      $amarillo[00]$rojo Salir$fnc
"
echo
echo
echo -e "$negrita$amarillo-->             ELIGE UNA OPCION            <--$negrita$rojo"
echo
read -p " osing $ " osing
echo -e " $fnc "
if [ $osing = 1 ]; then
    function Th3inspector {
        cd ..
        cd output
        git clone https://github.com/Moham3dRiahi/Th3inspector.git
        cd Th3inspector
        chmod 777 -R *
        bash install.sh
        perl Th3inspector.pl
    }
    Th3inspector
elif [ $osing = 2 ]; then
    function Devploit {
        git clone https://github.com/SHAFIT/Devploit-v3.git
        cd Devploit-v3
        chmod 777 -R *
        python3 Devploit.py 

    }
    Devploit
elif [ $osing = 3 ]; then
    function Infoga {
        git clone https://github.com/m4ll0k/Infoga.git
        cd Infoga
        chmod 777 -R *
        python setup.py install
        echo
        read -p " Set url $ " url
        python infoga.py -d $url
    }
    Infoga
elif [ $osing = 4 ]; then
    function wascan {
        cd ..
        cd output
        git clone https://github.com/m4ll0k/WAScan.git wascan
        cd wascan 
        pip install BeautifulSoup
        echo -e "$cyan Introduce la URL $rojo"
        read -p "$ " URL
        echo -e "$fnc "
        python wascan.py --url $URL --scan 5
    }
    wascan
elif [ $osing = 5 ]; then
    function userrecon {
        cd ..
        cd output
        git clone https://github.com/issamelferkh/userrecon.git
        cleanScreen
        cd userrecon
        chmod 777 -R *
        bash userrecon.sh
    }
    userrecon
elif [ $osing = 6 ]; then
    function GvngSearch {
        cd ..
        cd output
        git clone https://github.com/ByDog3r/GvngSearch
        cd GvngSearch
        chmod 777 -R install.sh
        bash install.sh
        cleanScreen
        bash gvngs.sh
    }
    GvngSearch
elif [ $osing = 7 ]; then
    function HOICig {
        cd ..
        cd output
        git clone https://github.com/hackersonlineclub/HOCig.git
        cd HOCig
        python hocig.py
    }
    HOICig
elif [ $osing = 8 ]; then
    function mosing {
        cd ..
        cd output
        git clone https://github.com/alpkeskin/mosint.git
        sleep 0.50s
        echo
        echo
        echo -e "$cyan Press Enter si eres $rojo[linux]$cyan$negrita [ruta a guardar si eres $rojo[termux] $fnc"
        read ruta
        mv mosint $ruta
        echo
        echo -e "$azul$negrita Tu Herramienta se guardo en [root] y no se automatizo$fnc "
        mv mosint /root/
        
    }
    mosint
elif [ $osing = 9 ]; then
    function Dracnmap {
        cd ..
        cd output
        git clone https://github.com/Screetsec/Dracnmap.git
        cd Dracnmap
        chmod 777 -R *
        bash dracnmap-v2.2.sh
    }
    Dracnmap
elif [ $osing = 10 ]; then
    echo
    echo -e "$amarillo   [01]$cyan Kalitorify  $amarillo [02]$cyan visual_studio  $amarillo [03]$cyan Red_tor_64-bit$fnc "
    echo
    echo -e "$azul ELIGA SU OPCION ..$fnc"
    echo
    read -p "$ " opcion
    if [ $opcion = 1 ]; then
        cd ..
        cd output
        echo
        echo -e "$verde ELIGE LA RUTA A GUARDAR LA HERRAMIENTA ..$rojo"
        echo
        read -p " Ruta a guardar .. $ " ruta 
        echo -e " $fnc "
        git clone https://github.com/brainfucksec/kalitorify
        apt-get install -y tor curl
        cd kalitorify
        make install
        cd ..
        mv kalitorify $ruta
        echo
        echo
        echo -e "$rojo  [$verde 01 $rojo]$rojo [$amarillo Menu $rojo]         $rojo [$verde 02 $rojo]$rojo [$amarillo Salir$rojo]$fnc"
        echo
        echo -e "$cyan ELIGE LA OPCION $verde"
        read -p " $ " opcion
        echo
        echo -e "$fnc"
        if [ $opcion = 1 ]; then
            cd
            Hacker
            if [ $Hacker != $Hacker ]; then
                echo
                echo -e "$click$amarillo Esta opcion solo esta disponible, si instala los requeriments $fn$fnc"
            fi
        elif [ $opcion = 2 ]; then
            exit 0
        else
        echo -e "$click$amarillo Esta Funcion solo funciona si tienes los requerimentos $fn$fnc"
        exit 0
        fi
elif [ $opcion = 2 ]; then
    echo -e "$amarillo Seguro que quiere descargar $rojo[y/n] $fnc"
    echo
    echo -e "$blanco Visual_estudio_code$fnc"
    read -p "# " programa
    echo
    if [ $programa = y ]; then
        cd
        cd
        wget https://az764295.vo.msecnd.net/stable/ea3859d4ba2f3e577a159bc91e3074c5d85c0523/code_1.52.1-1608136922_amd64.deb
        echo
        echo -e " Se a Guardado en [root]"
        echo
        echo -e " [instalacion ][dpkg -i nombre del archivo  ] "
        echo
    elif [ $programa = n ]; then
        clear
        echo
        echo -e "$cyan       //ADIOS UN GUSTO SOMOS EL MUNDO CODE // $fnc"
        exit 0
    fi
elif [ $opcion = 3 ]; then
    echo
    echo -e "$blanco Seguro que quiere descargar$rojo [y/n] $fnc"
    echo
    echo -e "$rojo Web-Tor $fnc"
    read -p "# " programa2
    echo
    if [ $programa2 = y ]; then
        cd
        cd
        wget https://dist.torproject.org/torbrowser/10.0.7/tor-browser-linux64-10.0.7_en-US.tar.xz
        echo
        echo -e " Tu programa se guardo en [Root]  "
        echo -e " [unzip nombre del programa]  "
        echo -e " [Instala] [dpkg -i nombre del programa]  "
    elif [ $programa2 = n ]; then
        echo
        echo -e "$cyan ADIOS del mundo anonimo  $fnc"
        exit 0
    fi
fi
elif [ $osing = 00 ]; then
echo -e " SALIENDO .... "
sleep 1s
exit 0
exit 0
else 
echo -e " La opcion no esta en la lista  .... "
fi
