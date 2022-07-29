#!/bin/bash
# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1
mkdir /home/steam/garrysmod &&\
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/garrysmod \
  +login 'anonymous' \
  +app_update '4020' 'validate' \
  +quit
cp garrysmod/start.sh /home/steam/garrysmod/
sudo chmod 500 /home/steam/garrysmod/start.sh
sudo chown steam:steam /home/steam/garrysmod/start.sh
echo 'Remember to replace <x> inside ~/garrysmod/start.sh with a steam-gameserver-id :->'
sudo touch '/var/log/garrysmod.log' '/var/log/garrysmod.err' && \
sudo chown steam:steam '/var/log/garrysmod.log' '/var/log/garrysmod.err' && \
sudo cp garrysmod/server.service /etc/systemd/system/garrysmod.server.service
sudo systemctl daemon-reload
