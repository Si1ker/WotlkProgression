# Patch 3.0

### Summary:
- New continent: Northrend
- New dungeons: Woltk dungeons
- Max level incresed to 80
- New class: Death Knights
- New Raids: Naxxaramas - Eye of Eternity - Obsidian Sanctum - Obsidian Sanctum - Vault of Archavon: Archavon
- New arenas: Dalaran Arena - The Circle of Valor
- Arena Season 5: Savage - Hateful and Deadly

### Steps:

1- Apply the changes as shown in [Sapphironportal](https://github.com/Si1ker/WoltkProgression/tree/main/patch%203.0/SapphironPortal)
2- Apply [set version](https://github.com/Si1ker/WoltkProgression/blob/0de5dcc6809d9aeb92ab1e750bf763a863820c00/patch%203.0/set%20version.sql) into your wolrd table
3- Under your [worldserver.conf.](https://github.com/azerothcore/azerothcore-wotlk/blob/81301c67d95a1e51bd269e8f4a49f373ecefeb42/src/server/worldserver/worldserver.conf.dist) perform the following change:

[https://github.com/azerothcore/azerothcore-wotlk/blob/master/src/server/worldserver/worldserver.conf.dist#L3019](Arena.ArenaSeason.ID = 8)

