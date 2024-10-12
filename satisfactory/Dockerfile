FROM steamcmd
USER steam
RUN mkdir /home/steam/SatisfactoryDedicatedServer/ && \
    ~/steamcmd/steamcmd.sh \
      +force_install_dir ~/SatisfactoryDedicatedServer \
      +login 'anonymous' \
      +app_update '1690800' \
      -beta public 'validate' \
      +quit

# savegames in a volume
RUN mkdir -p /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/
VOLUME /home/steam/.config/Epic/FactoryGame/Saved/SaveGames/

WORKDIR /home/steam/SatisfactoryDedicatedServer/
EXPOSE 7777/tcp
EXPOSE 7777/udp
ENTRYPOINT ["./FactoryServer.sh"]
CMD [ \
  "-Port=7777", \
  "-log", \
  "-unattended"]
# docker build --tag satisfactory -progress 'tty' .
# docker run --publish 7777:7777/tcp --publish 7777:7777/udp --name satisfactory satisfactory
