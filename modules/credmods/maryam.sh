#!/usr/bin/env bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'
listing(){
    echo -e "${YLW}"
    cat files/pingtest.pass
    echo -e "${NC}"
}

if [[ -d /opt/sifter/results/Maryam ]]; then
    echo ""
else
    mkdir /opt/sifter/results/Maryam
fi
echo -e "${RED}"
figlet -f mini "MaryaM"
echo -e "${NC}"
cd /opt/Maryam
sudo ./maryam


##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################s