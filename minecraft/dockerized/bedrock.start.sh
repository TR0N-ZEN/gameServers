#!/bin/bash

docker run -d -it \
  -e EULA=TRUE \
  -p 19132:19132/udp \
  -v mc-bedrock-data:/data \
  itzg/minecraft-bedrock-server

