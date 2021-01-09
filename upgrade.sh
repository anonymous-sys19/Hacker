#!/usr/bin/bash/

function tabl_space {
    echo
}
function time_sleep {
    sleep 1s
}
function tabl_space {
    echo
}
echo -e " 
      __  __  ____   ___  ____    __    ____  ____ 
      (  )(  )(  _ \ / __)(  _ \  /__\  (  _ \( ___)
       )(__)(  )___/( (_-. )   / /(__)\  )(_) ))__) 
      (______)(__)   \___/(_)\_)(__)(__)(____/(____)
  
" 

echo "            Update_And_Upgrade "
tabl_space
time_sleep
echo -e "            Please wait"
time_sleep
echo -e "             Updating "
# Creating file temporal ...
echo -e "               Wait"
# Updating Hacker ...
git config pull.rebase true
time_sleep
echo -e "[*]          Terminando ;"
tabl_space
echo -e "           __Refrescando__"
git pull
tabl_space

