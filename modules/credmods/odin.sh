#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'

echo -e "${RED}"
figlet -f mini "ODIN"
echo -e "${NC}"
cd /opt/ODIN
sudo python3 odin.py
sleep 2
echo -e "${W}======================================================${NC}"
sleep 2

##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################