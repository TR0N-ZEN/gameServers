# sudo useradd -m -r -d /opt/minecraft minecraft
# sudo passwd minecraft
# su minecraft
# sudo mkdir '/opt/minecraft/vanilla'
# cd '/opt/minecraft/vanilla'
sudo apt install 'openjdk-8-jre-headless' && \
# sudo ufw allow 25565/tcp # opening a port in the firewall via the program ufw
curl 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar' -o 'server.jar' -L && \ # vanilla minecraft 
java -Xmx4G -Xms4G -jar /opt/minecraft/vanilla/server.jar nogui # first execution will fail
sleep 15 && \
sed -n -i 'eula.txt' -e 's/eula=false/eula=true/gp' && \ # change false to true otherwise the server will crash
# cp ~/gameServers/minecraft/minecraft.vanilla.service 'etc/systemd/system'
# or
sudo ln ~/gameServers/minecraft/vanilla/server.service 'etc/systemd/system/minecraft.vanilla.server.service' && \
sudo systemctl daemon-reload
# systemctl start 'minecraft.vanilla.service'

# further configuration of the server via command line arguments or the server.properties file, here inside /opt/minecraft
