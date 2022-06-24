# sudo useradd -m -r -d /opt/minecraft minecraft
# sudo passwd minecraft
# sudo mkdir '/opt/minecraft/tekxit'
# cd '/opt/minecraft/tekxit'
sudo apt install 'openjdk-8-jre-headless' 'unzip'
# sudo ufw allow 25565/tcp # opening a port in the firewall via the program ufw

curl 'https://www.tekxit.xyz/downloads/1.0.6TekxitPiServer.zip' -LO
unzip '1.0.6TekxitPiServer.zip' && cd 1.0.6TekxitPiServer

java -server -Xmx4G -Xms4G -jar /opt/minecraft/tekxit/1.0.6TekxitPiServer/forge-1.12.2-14.23.5.2854.jar nogui # first execution will fail
sed -n -i 'eula.txt' -e 's/eula=false/eula=true/gp' # change false to true otherwise the server will crash

# cp ~/gameServers/minecraft/minecraft.tekxit.service 'etc/systemd/system'
# systemctl daemon-reload
# systemctl start 'minecraft.tekxit.service'

# further configuration of the server via command line arguments or the server.properties file, here inside /opt/minecraft
