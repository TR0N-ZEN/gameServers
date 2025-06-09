sources:
+ https://developer.valvesoftware.com/wiki/SteamCMD
+ https://unix.stackexchange.com/questions/463708/uninstall-a-steam-game-from-the-console
+ https://steamcommunity.com/sharedfiles/filedetails/?l=german&id=170589737
+ get gameserveraccounts https://steamcommunity.com/dev/managegameservers

---

`steamcmd` is an interactive tool  
<!-- as root edit the sudoers file `visudo /etc/sudoers` -->

To install it execute install.sh.

`steamcmd` is used to install games and game servers identified by their _appid_ like so:
```
steamcmd +login 'anonymous' +app_update '<app-id>' 'validate' +quit
```


| `<app-id>` | game                          |
|------------|-------------------------------|
| 1690800    | satisfactory dedicated server |
| 4000       | GarrysMod dedicated server    |
| -          | -                             |
| -          | -                             |
| -          | -                             |

Search @https://steamdb.info/apps/ for `<app-id>`

