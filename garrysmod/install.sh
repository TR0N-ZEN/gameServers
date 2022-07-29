#!/bin/bash
# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1

sudo touch '/var/log/garrysmod.{log,error} && \
sudo chown steam:steam /var/log/garrysmod* && \

mkdir /home/steam/garrysmod &&\
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/garrysmod \
  +login 'anonymous' \
  +app_update '4020' 'validate' \
  +quit
cp garrysmod/start.sh /home/steam/garrysmod/ && \
sudo chown -R steam:steam /home/steam/garrysmod && \
sudo chmod 500 /home/steam/garrysmod/start.sh && \

sudo cp garrysmod/server.service /etc/systemd/system/garrysmod.server.service && \
sudo systemctl daemon-reload && \

echo 'Remember to replace <x> inside "/home/steam//garrysmod/start.sh" with a steam-gameserver-id :->'
