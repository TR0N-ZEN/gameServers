#!/bin/bash
# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1
mkdir /home/steam/csgo &&\
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/csgo \
  +login 'anonymous' \
  +app_update '740' 'validate' \
  +quit
cp csgo/start.sh /home/steam/csgo/
sudo chmod 500 /home/steam/csgo/start.sh
sudo chown steam:steam /home/steam/csgo/start.sh
echo 'Remember to replace <x> inside /home/steam/csgo/start.sh with a steam-gameserver-id :->'
sudo cp csgo/server.service /etc/systemd/system/csgo.server.service
sudo systemctl daemon-reload
