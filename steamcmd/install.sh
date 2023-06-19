#!/bin/bash

if [ -z "$PS1" ]; then
  echo This shell is not interactive
else
  echo This shell is interactive
fi

sudo apt-get install 'curl' 'lib32gcc' # 'lib32stdc++6'
sudo adduser 'steam'
sudo -u steam bash <<EOF
  mkdir ~/steamcmd && \
  cd ~/steamcmd && \
  curl 'http://media.steampowered.com/installer/steamcmd_linux.tar.gz' | tar -xzf - 
  if [ `grep steamcmd ~/.bashrc | wc -l` -eq 0 ]; then echo "alias steamcmd='~/steamcmd/steamcmd.sh'" >> ~/.bashrc; fi
EOF

sudo -u steam bash -i <<EOF
  steamcmd +quit
EOF

