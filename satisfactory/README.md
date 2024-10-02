
## sources

+ https://satisfactory.fandom.com/wiki/Dedicated_servers/Running_as_a_Service
  + https://satisfactory.fandom.com/wiki/Dedicated_servers

---

## notes

to install server: `steamcmd +login 'anonymous' +app_update '1690800' 'validate' +quit`

to start server: `FactoryServer.sh`

savegame files: `~/.config/Epic/FactoryGame/Saved/SaveGames/server/*.sav`


lines to add to the **Engine.ini**
```
[/Script/OnlineSubsystemUtils.IpNetDriver]
NetServerMaxTickRate=60
LanServerMaxTickRate=60

[/Script/SocketSubsystemEpic.EpicNetDriver]
NetServerMaxTickRate=60
LanServerMaxTickRate=60

[/Script/Engine.Engine]
NetClientTicksPerSecond=60
```

---

## encountered errors

