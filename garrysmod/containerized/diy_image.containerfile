FROM steam-server-basis
USER root
RUN apt -y install libc6-i386 lib32stdc++6 lib32gcc-s1 libncurses5 lib32z1

USER steam
RUN ~/steamcmd/steamcmd.sh \
  +login 'anonymous' \
  +app_update '4020' 'validate' \
  +quit

#EXPOSE 27015

WORKDIR /home/steam/Steam/steamapps/common/GarrysModDS

CMD [ "/home/steam/Steam/steamapps/common/GarrysModDS/srcds_run", \
             "-console", \
             "-game garrysmod", \
             "+gamemode terrortown", \
             "+sv_setsteamaccount $set_setsteamaccount", \
             "+host_workshop_collection 1526838171", \
             "+maxplayers 12", \
             "+map ttt_metropolis", \
             "-tickrate 128" ]
