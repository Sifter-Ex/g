#!/bin/bash
sudo apt-get install nodejs npm libfuse3-3 libfuse3-dev libfuse2 libfuse-dev
mv eDEX-UI -t /home/$USER/.config/
cp gSifter sifter -t /usr/sbin
mv gSifter sifter -t /opt/sifter
sudo chmod +x /usr/sbin/gSifter /usr/sbin/sifter /opt/sifter/gSifter_eDEX-UI.AppImage
mv gSifter_eDEX-UI.AppImage -t /opt/sifter 
pwd & cd ..
sudo rm -rf gSifter
