#!/bin/bash

sudo systemctl stop satisfactory.server.service

sudo touch /var/log/satisfactory.{log,error} && \
sudo chown steam:steam /var/log/satisfactory*

sudo -u steam bash -i << EOF
rm -r ~/SatisfactoryDedicatedServer
mkdir ~/SatisfactoryDedicatedServer && \
steamcmd \
  +force_install_dir ~/SatisfactoryDedicatedServer \
  +login 'anonymous' \
  +app_update '1690800' \
  -beta public 'validate' \
  +quit
EOF

sudo cp \
  ${PATH_TO_GIT_REPOSITORY:-${USER}/gameServers}/satisfactory/server.service \
  /etc/systemd/system/satisfactory.server.service

sudo systemctl daemon-reload
sudo systemctl status satisfactory.server.service
sudo systemctl start satisfactory.server.service
sudo systemctl status satisfactory.server.service

cat <<'EOF'
to inspect logs use the following commands:
  tail -f /var/log/satisfactory.log
  tail -f /var/log/satisfactory.error
  sudo journalctl -u satisfactory.server.service
EOF
