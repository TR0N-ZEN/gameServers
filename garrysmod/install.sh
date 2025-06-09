#!/bin/bash

set -x

sudo apt install libc6-i386 lib32stdc++6 lib32gcc-s1 libncurses5 lib32z1

sudo touch '/var/log/garrysmod'.{log,error}
sudo chown steam:steam /var/log/garrysmod* 


# install garrys mod dedicated server
#   https://steamdb.info/app/4020/
sudo -u steam bash -i << EOF
steamcmd \
  +login 'anonymous' \
  +app_update '4020' \
  'validate' \
  +quit
EOF

# install counter strike source dedicated server
#   https://steamdb.info/app/232330/
sudo -u steam bash -i << EOF
steamcmd \
  +login 'anonymous' \
  +app_update '232330' \
  'validate' \
  +quit
EOF

# install team fortress dedicated server
#   https://steamdb.info/app/232250/
sudo -u steam bash -i << EOF
steamcmd \
  +login 'anonymous' \
  +app_update '232250' \
  'validate' \
  +quit
EOF

# installs config file for garry's mod which tells it where to look for resources
for FILE in /home/$USER/gameServers/garrysmod/*.cfg; do
  cp $FILE /home/$USER/Steam/steamapps/common/GarrysModDS/garrysmod/cfg/
done
sudo chown -R steam:steam /home/$USER/Steam/steamapps/common/GarrysModDS/garrysmod/cfg/

# install systemd .service file
sudo cp /home/$USER/gameServers/garrysmod/server.service \
        /etc/systemd/system/garrysmod.server.service
echo 'Remember to replace <x> inside "/etc/systemd/system/garrysmod.server.service" with a steam-gameserver-id'
sudo vi /etc/systemd/system/garrysmod.server.service
sudo systemctl daemon-reload

# maybe the following line can also cause installing workshop content
# echo 'resource.AddWorkshop(1526838171)'> /home/steam/Steam/steamapps/common/GarrysModDS/garrysmod/lua/autorun/server/workshop.lua

set +x
