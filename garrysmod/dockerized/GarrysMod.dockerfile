#Base image https://hub.docker.com/r/ceifa/garrysmod
FROM ceifa/gmod-server:latest

ENV NAME="Garrysmod with workshop item 'Blizzards TTT'"
ENV ARGS="+host_workshop_collection 1526838171"
ENV MAP="deathrun_atomic_warfare"
ENV GAMEMODE="terrortown"
ENV MAXPLAYERS="12"
