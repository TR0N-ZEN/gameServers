FROM debian:stable-slim 
RUN apt update
RUN apt install -y curl 'lib32stdc++6'
RUN adduser --disabled-password --gecos "" steam
RUN passwd -l steam

USER steam

RUN mkdir /home/steam/steamcmd
WORKDIR /home/steam/steamcmd
RUN curl 'http://media.steampowered.com/installer/steamcmd_linux.tar.gz' | tar -xzf -

# RUN ls -alh /home/steam/steamcmd/ && sleep 5
RUN /home/steam/steamcmd/steamcmd.sh +quit
# docker buildx bake debian.dockerfile
