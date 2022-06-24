# ALPHA=`pwd`
# sudo useradd -m -r -d /opt/minecraft minecraft # why these options m,r and d?
# sudo mkdir '/opt/minecraft/vanilla'
# cd '/opt/minecraft/vanilla'
# sudo apt install 'default-jdk'
# sudo apt install 'openjdk-11-headless'
sudo apt install 'openjdk-17-jdk-headless' # install java development kit, might need another version as in lines above
# sudo ufw allow 25565/tcp # opening a port in the firewall via the program ufw

curl 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar' -o 'server.jar' # vanilla minecraft
java -Xmx4G -Xms4G -jar /opt/minecraft/vanilla/server.jar nogui # first execution will fail
sed -n -i '/opt/minecraft/vanilla/eula.txt' -e 's/eula=false/eula=true/gp' # change false to true otherwise the server will crash

# cd $ALPHA
# cp 'minecraft.vanilla.service' 'etc/systemd/system' # copy systemd .service file to one of systemd's predefined folders
# systemctl daemon-reload # reload systemd daemon to recognize the new .service file
# systemctl start 'minecraft.vanilla.service' # start the server via systemd and theminecraft.vanilla.service file

# further configuration of the server via command line arguments or the server.properties file, here inside /opt/minecraft
