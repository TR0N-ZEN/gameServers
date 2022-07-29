#!/bin/bash
# if errors uccur involving uninstalled packages like the following uncomment the following lines
#sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1
mkdir /home/steam/GarrysModDS &&\
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir /home/steam/GarrysModDS \
  +login 'anonymous' \
  +app_update '4020' 'validate' \
  +quit
cp GarrysMod/start.sh /home/steam/GarrysModDS/
sudo chmod 500 /home/steam/GarrysModDS/start.sh
sudo chown steam:steam /home/steam/GarrysModDS/start.sh
echo 'Remember to replace <x> inside ~/GarrysModDS/start.sh with a steam-gameserver-id :->'
sudo cp GarrysMod/GarrysModDS.service /etc/systemd/system/
sudo systemctl daemon-reload
