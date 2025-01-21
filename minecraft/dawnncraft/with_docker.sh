
docker run -dit \
	-e EULA=true \
	-e JVM_OPTS="-Xms8G -Xmx16G" \
	-e MOTD="VisArcti@DawnCraft-1.29_f" \
	-e LEVEL=world \
	--mount type=volume,source=goobaroo-dawncraft-minecraft-1.29_f,target=/data \
	-p MY_IP_ADDRESS:25567:25565 \
	--name goobaroo-dawncraft-minecraft-1.29_f \
	goobaroo/dawncraft:1.29_f

