#!/bin/bash
#su steam && cd
mkdir /home/steam/satisfactory && \
sudo touch '/var/log/satisfactory.log' '/var/log/satisfactory.err' && \
sudo chown steam:steam '/var/log/satisfactory.log' '/var/log/satisfactory.err' && \
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir '/home/steam/satisfactory' \
  +login 'anonymous' \
  +app_update '1690800' 'validate' \
  +quit && \
sudo ln '/home/steam/gameServers/satisfactory/server.service' '/etc/systemd/system/satisfactory.server.service' && \
sudo systemctl daemon-reload
