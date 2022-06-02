+ https://old.e-smog.org/garrys-mod-ttt-dedicated-server-erstellenpart-2/
+ https://www.troubleinterroristtown.com/config/settings/

---

install: `steamcmd +force_install_dir '~/GarrysModDS' +login 'anonymous' +app_update '4020' 'validate' +quit`

server: `~/GarrysModDS/srcds_run -console -game 'garrysmod' +gamemode 'terrortown' +sv_setsteamaccount '<your token>' +host_workshop_collection '<collectionID>' +maxplayers '12' +map 'gm_flatgrass'`

---

## encountered errors

if server doesn't start because `libstdc++.so.6` cannot be found install some packages by entering  
`sudo apt-get install libc6-i386 lib32stdc++6 lib32gcc1 libncurses5 lib32z1`
 `<collectionID>` '1526838171' for *Blizzards TTT*