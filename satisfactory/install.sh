#!/bin/bash
#su steam && cd

sudo touch /var/log/satisfactory.{log,error} && \
sudo chown steam:steam /var/log/satisfactory* && \

mkdir /home/steam/satisfactory && \
/home/steam/steamcmd/steamcmd.sh \
  +force_install_dir '/home/steam/satisfactory' \
  +login 'anonymous' \
  +app_update '1690800' 'validate' \
  +quit && \

sudo chown -R steam:steam /home/steam && \


sudo cp satisfactory/server.service /etc/systemd/system/satisfactory.server.service && \
sudo systemctl daemon-reload
