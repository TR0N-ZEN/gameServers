#!/bin/bash

sudo apt install libc6-i386 lib32stdc++6 lib32gcc-s1 libncurses5 lib32z1

sudo touch '/var/log/garrysmod'.{log,error}
sudo chown steam:steam /var/log/garrysmod* 

sudo -u steam bash -i << EOF
steamcmd \
  +login 'anonymous' \
  +app_update '4020' 'validate' \
  +quit
EOF

sudo cp /home/game_server_installer/gameServers/garrysmod/server.service /etc/systemd/system/garrysmod.server.service
echo 'Remember to replace <x> inside "/etc/systemd/system/garrysmod.server.service" with a steam-gameserver-id'
sudo nano /etc/systemd/system/garrysmod.server.service 
sudo systemctl daemon-reload

