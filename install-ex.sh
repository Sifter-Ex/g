#!/bin/bash
####################
#    Root Check    #
####################

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as ROOT USER"
   exit 1
fi
if [[ -d "/root/.config" ]]; then
  mkdir /root/.config
 fi
mv eDEX-UI -t /root/.config/
cp gSifter sifter -t /usr/sbin
mv gSifter sifter -t /opt/sifter
sudo chmod +x /usr/sbin/gSifter /usr/sbin/sifter
mv gSifter_eDEX-UI.AppImage -t /opt/sifter 
pwd & cd ..
sudo rm -rf gSifter
