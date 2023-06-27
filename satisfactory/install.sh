#!/bin/bash

sudo touch /var/log/satisfactory.{log,error} && \
sudo chown steam:steam /var/log/satisfactory*

sudo -u steam bash -i << EOF
steamcmd \
  +login 'anonymous' \
  +app_update '1690800' 'validate' \
  +quit
EOF

sudo cp \
	/home/game_server_installer/gameServers/satisfactory/server.service \
	/etc/systemd/system/satisfactory.server.service 

sudo systemctl daemon-reload

