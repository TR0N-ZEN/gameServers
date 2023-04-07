#!/bin/bash

sudo apt-get install 'curl' 'lib32gcc1' && \ 
# sudo apt-get install 'lib32stdc++6' && \
sudo adduser 'steam' && \
su 'steam' && \
mkdir ~/steamcmd && \
cd ~/steamcmd && \
curl 'http://media.steampowered.com/installer/steamcmd_linux.tar.gz' | tar -xzf - && \
echo "alias steamcmd='/home/steam/steamcmd/steamcmd.sh'" >> ~/.bashrc && \
source ~/.bashrc && \ # not sure if necessary or just open new shell
#sudo apt-get install 'lib32gcc1' && \
steamcmd
