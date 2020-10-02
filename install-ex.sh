#!/bin/bash


mv eDEX-UI -t /$USER/.config/
mv gSifter -t /usr/sbin
sudo chmod +x /usr/sbin/gSifter
mv gSifter_eDEX-UI.AppImage -t /opt/sifter 
pwd & cd ..
sudo rm -rf gSifter
