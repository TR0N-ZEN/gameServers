
curl -O 'https://maven.minecraftforge.net/net/minecraftforge/forge/1.18.2-40.2.0/forge-1.18.2-40.2.0-mdk.zip'
curl -O 'https://download.oracle.com/java/17/archive/jdk-17.0.8_linux-x64_bin.deb'
curl -O 'https://mediafilez.forgecdn.net/files/4731/253/DawnCraft+1.29_f+Serverpack.zip'

mkdir forge-unzipped
mkdir dawncraft-unzipped

unzip "./forge-1.18.2-40.2.0-mdk.zip"  -d 'forge-unzipped/'
unzip "./DawnCraft+1.29_f+Serverpack.zip" -d 'dawncraft-unzipped/'
