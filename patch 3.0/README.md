# SapphironPortal
Author: [Silker](https://github.com/Si1ker)

Naxxramas customization to make a Sapphiron's portal pre-ICC version on an AzerothCore based server.


### Sapphiron's portal pre-ICC version

These files/changes will help you to make the Sapphiron's Portal in your World of Warcraft 3.3.5a server to be active
only after the four end-wing bosses have been defeated as it was before the version 3.3

![image](https://user-images.githubusercontent.com/61223313/113535683-63acd600-9591-11eb-8c51-3591255ab6b0.png)

NOTE: This process is intended for [AzerothCore](https://github.com/azerothcore/azerothcore-wotlk) based servers.

Steps:

1- Run the sql update file into the "world" table of your DB
[Portal.sql](https://github.com/Si1ker/WoltkProgression/blob/1194957ffad887aab9521e2d2e58ab2a48f292aa/phase%201%20-%20patch%203.0%20-%20Naxxramas/SapphironPortal/Portal.sql)

2- Do the additions to your "instance_naxxaramas.cpp" file as shown in [Portal.cpp](https://github.com/Si1ker/WoltkProgression/blob/1194957ffad887aab9521e2d2e58ab2a48f292aa/phase%201%20-%20patch%203.0%20-%20Naxxramas/SapphironPortal/Portal.cpp)

### Is something not working?
Please let me know by [opening a report](https://github.com/Si1ker/WoltkProgression/issues/new) and I will make sure to fix it at my earliest convenience.
