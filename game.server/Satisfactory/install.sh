#!/bin/bash

PREFIX="~/steamServerInstaller/Satisfactory"
INSTALL_TARGET="~/SatisfactoryDedicatedServer"

sudo cp "$PREFIX/SatisfactoryDS.service" '/etc/systemd/system/' && \
mkdir $INSTALL_TARGET && \
# sudo cp "$PREFIX/start.sh" "~/SatisfactoryDedicatedServer/" && \
# sudo chmod +x "~/SatisfactoryDedicatedServer/start.sh" && \
sudo touch '/var/log/satisfactory.log' '/var/log/satisfactory.err' && \
steamcmd +force_install_dir $INSTALL_TARGET +login 'anonymous' +app_update '1690800' 'validate' +quit
