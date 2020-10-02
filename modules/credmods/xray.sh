#!/usr/bin/env bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
if [[ ! -f '/opt/xray/.shodan_api' ]]; then
    echo -e "${YLW}Please enter your Shodan API key: ${NC}"
    read SAPI
    sudo echo ${SAPI} >> /opt/xray/.shodan_api
fi
SHODAN-API=$(cat /opt/xray/.shodan_api)

listing(){
    echo -e "${YLW}"
    cat files/pingtest.pass
    echo -e "${NC}"
}

if [[ -d /opt/sifter/results/xRay ]]; then
    echo ""
else
    mkdir /opt/sifter/results/xRay
fi
echo -e "${RED}"
figlet -f mini "xRay"
echo -e "${NC}"
cd /opt/xray 
listing
echo -e "${W}Please enter your target${NC}"
read TARGET
sudo docker run --rm -it -p 8080:8080 txt3rob/xray-docker:latest xray -address 0.0.0.0 -shodan-key ${SHODAN-API} -domain ${TARGET}
echo -e "${W}When done please press enter${NC}"
read RANDOM


##########################______________ czFsM250NzggX18gUmFiYjE3J3MgRGVu ______________##########################