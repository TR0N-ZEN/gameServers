#!/bin/bash
# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1

sudo touch /var/log/csgo.{log,error} && \
sudo chown steam:steam /var/log/csgo*

sudo -u steam bash -i <<EOF
steamcmd \
  +login 'anonymous' \
  +app_update '740' 'validate' \
  +quit
EOF

sudo cp csgo/server.service /etc/systemd/system/csgo.server.service && \
echo 'Remember to replace <x> inside "/etc/systemd/system/csgo.server.service" with a steam-gameserver-id' && \
sudo nano /etc/systemd/system/csgo.server.service && \
sudo systemctl daemon-reload

