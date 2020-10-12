#!/bin/bash
sudo apt-get install nodejs npm libfuse3-3 libfuse3-dev libfuse2 libfuse-dev fuse
mv eDEX-UI -t /home/$USER/.config/
cp gSifter sifter -t /usr/sbin
mv gSifter sifter -t /opt/sifter
sudo chmod +x /usr/sbin/gSifter /opt/sifter/gSifter_eDEX-UI.AppImage
mv gSifter_eDEX-UI.AppImage -t /opt/sifter 
CG=$(pwd | grep g)
if [[ ${CG} == */"g" ]];then
  cd ..
  sudo rm -rf g
fi
