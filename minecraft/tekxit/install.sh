# sudo useradd -m -r -d /opt/minecraft minecraft
# sudo passwd minecraft
# su minecraft 
# sudo mkdir '/opt/minecraft/tekxit'
# cd '/opt/minecraft/tekxit'
cd '/opt/minecraft/tekxit' && \
sudo apt install 'openjdk-8-jre-headless' 'unzip' && \
# sudo ufw allow 25565/tcp # opening a port in the firewall via the program ufw
curl 'https://www.tekxit.xyz/downloads/1.0.6TekxitPiServer.zip' -LO && \
unzip '1.0.6TekxitPiServer.zip' && cd 1.0.6TekxitPiServer && \
java -server -jar /opt/minecraft/tekxit/1.0.6TekxitPiServer/forge-1.12.2-14.23.5.2854.jar nogui # first execution will fail
sleep 15 && \
sed -n -i 'eula.txt' -e 's/eula=false/eula=true/gp' && \ # change false to true otherwise the server will crash
# cp ~/gameServers/minecraft/minecraft.tekxit.service '/etc/systemd/system'
# or
sudo ln ~/gameServers/minecraft/tekxit/server.service '/etc/systemd/system/minecraft.tekxit.server.service' && \
sudo systemctl daemon-reload
# systemctl start 'minecraft.tekxit.server.service'

# further configuration of the server via command line arguments or the server.properties file, here inside /opt/minecraft
