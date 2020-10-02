#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
if [[ ! -f '$HOME/.config/deadtrap/deadtrap.conf' ]]; then
	echo -e "${YLW}Please enter your NumVerify API key${NC}"
	read NVAPI
	echo ${NVAPI} > $HOME/.config/deadtrap/deadtrap.conf
fi

cd /opt/DeadTrap
echo -e "${RED}"
figlet -f mini "DeadTrap"
echo -e "${NC}"
sudo deadtrap
echo -e "	============================================"


##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################