## sources

+ https://satisfactory.fandom.com/wiki/Dedicated_servers
  + https://satisfactory.fandom.com/wiki/Dedicated_servers/Running_as_a_Service



## how to

+ install server: `steamcmd +login 'anonymous' +app_update '1690800' 'validate' +quit`
+ start server: `FactoryServer.sh`
+ location of savegame files: `~/.config/Epic/FactoryGame/Saved/SaveGames/server/*.sav`
+ lines to add to the **Engine.ini** according to
    https://satisfactory.wiki.gg/wiki/Dedicated_servers/Configuration_files
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



## encountered errors
