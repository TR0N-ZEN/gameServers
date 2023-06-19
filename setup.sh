#!/bin/bash

# adduser game_server_installer
# su game_server_installer

cd ~
curl 'https://github.com/charmbracelet/gum/releases/download/v0.1.0/gum_0.1.0_linux_amd64.deb' -OL &&\
sudo dpkg -i 'gum_0.1.0_linux_amd64.deb' &&\
rm 'gum_0.1.0_linux_amd64.deb' && \
find . -name 'install.sh' | gum filter | xargs bash

