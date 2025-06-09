+ https://wiki.facepunch.com/gmod/Downloading_a_Dedicated_Server#linux
+ https://wiki.facepunch.com/gmod/Downloading_a_Dedicated_Server#afterinitialinstallation
+ https://old.e-smog.org/garrys-mod-ttt-dedicated-server-erstellenpart-2/
+ https://www.troubleinterroristtown.com/config/settings/
+ https://developer.valvesoftware.com/wiki/List_of_Garry%27s_Mod_console_commands_and_variables
---

+ install game server: `steamcmd +login 'anonymous' +app_update '4020' 'validate' +quit`
+ start game server:
  ```
  srcds_run -console -game 'garrysmod' \
    +gamemode 'terrortown' \
    +sv_setsteamaccount '<your token>' \
    +host_workshop_collection '<collectionID>' \
    +maxplayers '12' \
    +map 'gm_flatgrass'
  ```
  + where `<collectionID>` can be '1526838171' for
    [*Blizzards TTT*](https://steamcommunity.com/sharedfiles/filedetails/?id=1526838171)
+ seperate configuration via ...



---

## encountered errors

+ if server doesn't start because `libstdc++.so.6` cannot be found install some packages by entering  
  `sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1`


---

## containerized


### by me (not working yet)

```
podman build -f steamcmd/containerfile -t steam-steamcmd-basis .
podman build -f garrysmod/containerized/containerfile -t garrysmod-steam-steamcmd-basis .
podman run --publish <public-ip-address>:27015:27015 garrysmod-steam-steamcmd-basis
```


### ready made garrysmod container image by someone else

```
#Base image https://hub.docker.com/r/ceifa/garrysmod
podman run \
  -e NAME="Garrysmod with workshop item 'Blizzards TTT'" \
  -e ARGS="+host_workshop_collection 1526838171" \
  -e MAP="deathrun_atomic_warfare" \
  -e GAMEMODE="terrortown" \
  -e MAXPLAYERS="12" \
  ceifa/gmod-server:latest
```
