#!/bin/bash
ORNG='\033[0;33m'
NC='\033[0m'
W='\033[1;37m'
LP='\033[1;35m'
YLW='\033[1;33m'
LBBLUE='\e[104m'
RED='\033[0;31m'

echo -e "${RED}"
figlet -f mini "iKy"
echo -e "${NC}"
cd /opt/iKy/backend
xterm -e redis-server
sleep 3
xterm -e ./celery.sh
sleep 3
xterm -e python3 app.py
sleep 3
cd /opt/iKy/frontend
xterm -e npm start
sleep 10
xterm -e firefox http://127.0.0.1:4200 &

echo -e "${W}======================================================${NC}"

sleep 2


##########################______________ VGhlIERlYWQgQnVubnkgQ2x1Yg== ______________##########################