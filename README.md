```c
///  
///  This mod is still in progress. You may meet some issues like CTD/CTM. Take yourself.
///  It's designed only for FD. Do not use this in other gamemodes.
///  
///  If you have any problem(bugs, ideas, or screenshots, etc), contact me through Discord@raintrap341 or Github.
///  
///  PS. If you like this, thumbs-up please.
```


Finally. A HUD mod which helps you watch your teammates in FD. I hope it helps.

# Features

## Mod-Setting Feature

This mod supports mod-settings now. It will try to add mod-settings once it finds you install `ModSettings` or `Northstar.Client` with mod-settings feature.

It supports `Color Picker` if you installed my mod [ModSettingPlus | Thunderstore - The Northstar Mod Database](https://thunderstore.io/c/northstar/p/Team036/ModSettingPlus/).

## Basic
- Class/Suit avatar. Titans/Pilots.
- Health-bar with frac numbers.
- Colorized. Supports party/local/friend.
- Score. Everyone's in-wave-score at the end of health-bar. It only records a single wave, and get cleared every wave beginning.
- Shield-Boost. At the top right of the bar.
- Nuclear-Grenade. At the top right of the bar.
- Money-eval.  Calculate everyone's possible money and put them at the end of health-bar.
- Max to 8 players.
- ~~Colorful background color.~~ Bad ideas. But I don't remove the code.
- Show battery on pilot. Amped battery supported.
## Titan

- Titan Kit2. It shows every player's titan kit2 at the bottom right corner.

- Auto-titan.  It shows every player's auto-titan at the bottom right corner.

- Elec-Smoke.   At the top right of the bar. Turned to `Malestorm` style if you have `Malestorm` upgrade.

- Doom. Health-bar changes to orange if your titan gets doomed.
- Shield. Shield shows over the health-bar.

- Show titan building progress.


### Titan-Core
- Core display. Vanguard fully supports.

- Core charge display. 

- Core left-time display. 
### Monarch/Vanguard
- Upgrades. The 3 base upgrades will show below the bar.
- Apex Upgrade. ~~Not supported.~~ I need some rest.


# Plan
- Ability charge display.

- ~~Change Core-Charge display style.~~

- ~~Custom options like places, styles and more.~~

- Aegis level.

- Draw titan bar with segments.

  

# Screenshots
If these sreenshots get broken, check them on [Github](https://github.com/RainTrap341/EntityStatus/tree/main/screenshots).

![1.jpg](https://www.helloimg.com/i/2024/10/06/6702a9ceef435.jpg)
![2.jpg](https://www.helloimg.com/i/2024/10/06/6702a9cec10dc.jpg)
![3.jpg](https://www.helloimg.com/i/2024/10/06/6702a9cee7651.jpg)
![4.jpg](https://www.helloimg.com/i/2024/10/06/6702a9cede5d9.jpg)
![5.jpg](https://www.helloimg.com/i/2024/10/06/6702a9cf174ac.jpg)
![6.jpg](https://www.helloimg.com/i/2024/10/06/6702aa0242e33.jpg)
![7.jpg](https://www.helloimg.com/i/2024/10/06/6702aa022dc6d.jpg)
![8.jpg](https://www.helloimg.com/i/2024/10/07/6703f73eafff4.jpg)
![9.jpg](https://www.helloimg.com/i/2024/10/12/670a923ee330a.jpg)
![10.jpg](https://www.helloimg.com/i/2024/10/18/6711c0dd50fb0.jpg)

# Changelog
## 1.0.0
- Hello World

## 1.1.0
- Feature. Battery support partly.
- Feature. Titan building progress.
- Feature. Monarch Apex-Upgrade.

- Rework. Core style.
- Rework. Code refine partly.

- Bugfix. Remove code using unregistered network variable which may cause CTM(Crash To Mainmenu) 

## 1.2.0
- Feature. Support amped battery.
- Feature. Show item count on image. Note: Elec-Smoke is local, you are not able to check others'.
- Feature. Show auto-titan health, and player-on-titan's core-progress on health-bar.



- Rework. Core style. Background progress bar. Colorized progress numbers.
	
- Bugfix. Remove print code.
- Bugfix. Vanguard get wrong core-icon for next upgrade.  

## 1.2.1

- Rework. Core style. Remove core bar on health-bar.

- Bugfix. GetTitanSoulNetFloat() on unavilable Titansoul may cause CTM.

## 1.2.5

- Feature. Titan-Shield shows on the health-bar.

- Rework. Titan-shield bar.
- Rework. Auto-titan health-bar moved to the auto-titan icon.

## 1.5.0

- Feature. Mod-Settings.

- Rework. Titan-shield bar

## 1.5.1

- Rework. Translation Improved.
- Rework. Modsetting init code refined.

## 1.5.2

- Rework. Translation Improved.
- Bugfix. Make color setting like alpha by mistake. 
