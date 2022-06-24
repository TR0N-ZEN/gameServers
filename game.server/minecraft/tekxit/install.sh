ALPHA=`pwd`
sudo useradd -m -r -d /opt/minecraft minecraft # why these options m,r and d?
sudo mkdir '/opt/minecraft/tekxit'
cd '/opt/minecraft'
# sudo apt install 'default-jdk'
# sudo apt install 'openjdk-11-headless'
sudo apt install 'openjdk-17-headless' # install java development kit, might need another version as in lines above
# sudo ufw allow 25565/tcp # opening a port in the firewall via the program ufw

curl 'https://www.tekxit.xyz/downloads/1.0.6TekxitPiServer.zip' -o 'minecraft.tekxit.zip' #
sudo apt install unzip
unzip 'minecraft.tekxit.zip' -d ./tekxit

java -server -Xmx4G -Xms4G -jar forge-1.12.2-14.23.5.2854.jar nogui # first execution will fail
sed -n -i '/opt/minecraft/tekxit/eula.txt' -e 's/eula=false/eula=true/gp' # change false to true otherwise the server will crash

cd $ALPHA
cp 'minecraft.tekxit.service' 'etc/systemd/system' # copy systemd .service file to one of systemd's predefined folders
systemctl daemon-reload # reload systemd daemon to recognize the new .service file
systemctl start 'minecraft.tekxit.service' # start the server via systemd and the minecraft.tekxit.service file

# further configuration of the server via command line arguments or the server.properties file, here inside /opt/minecraft
