#!/bin/bash

sudo systemctl stop satisfactory.server.service

sudo touch /var/log/satisfactory.{log,error} && \
sudo chown steam:steam /var/log/satisfactory*

sudo -u steam bash -i << EOF
mkdir ~/SatisfactoryDedicatedServer && \
steamcmd \
  +force_install_dir ~/SatisfactoryDedicatedServer \
  +login 'anonymous' \
  +app_update '1690800' \
  -beta public 'validate' \
  +quit
EOF

sudo cp \
	${PATH_TO_GIT_REPOSITORY}/satisfactory/server.service \
	/etc/systemd/system/satisfactory.server.service 

sudo systemctl daemon-reload
sudo systemctl status satisfactory.server.service
sudo systemctl start satisfactory.server.service
sudo systemctl status satisfactory.server.service

# to inspect logs use the following commands:
#   sudo tail -f /var/log/satisfactory.log
#   sudo tail -f /var/log/satisfactory.error
#   sudo systemctl -u satisfactory.server.service -f
