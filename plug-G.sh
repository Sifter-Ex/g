#!/bin/bash
sudo apt-get install nodejs npm libfuse3-3 libfuse3-dev libfuse2 libfuse-dev fuse
mv eDEX-UI -t /home/$USER/.config/
sudo mv gSifter -t /usr/sbin
mv gSifter_eDEX-UI.AppImage -t /opt/sifter
sudo chmod +x /usr/sbin/gSifter /opt/sifter/gSifter_eDEX-UI.AppImage
sudo chown $USER:$USER /usr/sbin/gSifter 
CG=$(pwd | grep g)
echo "alias gsif='gSifter'" >> ~/.bash_aliases
if [[ ${CG} == */"g" ]];then
  cd ..
  sudo rm -rf g
fi
