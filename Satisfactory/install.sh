#!/bin/bash
su steam
cd
PREFIX=~/gameServers/Satisfactory
INSTALL_TARGET=~/Satisfactory

mkdir "$INSTALL_TARGET" && \
sudo touch '/var/log/satisfactory.log' '/var/log/satisfactory.err' && \
steamcmd +force_install_dir $INSTALL_TARGET +login 'anonymous' +app_update '1690800' 'validate' +quit && \
sudo ln "$PREFIX/server.service" '/etc/systemd/system/satisfactory.server.service' && \
sudo systemctl daemon-reload
