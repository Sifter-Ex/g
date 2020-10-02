#!/bin/bash
mv eDEX-UI -t $USER/.config/
cp gSifter sifter -t /usr/sbin
mv gSifter sifter -t /opt/sifter
sudo chmod +x /usr/sbin/gSifter /usr/sbin/sifter
mv gSifter_eDEX-UI.AppImage -t /opt/sifter 
pwd & cd ..
sudo rm -rf gSifter
