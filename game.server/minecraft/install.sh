suo useradd -m -r -d /opt/minecraft minecraft # why these options m,r and d
cd '/home/minecraft'
# sudo apt install 'default-jdk'
# sudo apt install 'openjdk-11-headless'
sudo apt install 'openjdk-17-headless'
# sudo ufw allow 25565/tcp # firewall port opening

curl 'https://launcher.mojang.com/v1/objects/c8f83c5655308435b3dcf03c06d9fe8740a77469/server.jar' -o 'minecraft_server.jar'
java -Xmx4G -Xms4G -jar ./minecraft_server.jar nogui
sed -n -i 'eula.txt' -e 's/eula=false/eula=true/gp'

cp 'MinecraftDS.service' 'etc/systemd/system'
systemctl daemon-reload
systemctl start 'MinecraftDS.service'

