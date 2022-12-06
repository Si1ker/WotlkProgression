/*

Written by Silker | https://github.com/Si1ker
This SQL update file will set your woltk server based on AzerothCore to the version latests 3.0 version

==== INDEX ====
Emblems
Content disables
Dungeon finder
Instances
Dalaran changes
General world changes
Wintergrasp
Weekly and daily quests
Events
Miscellaneous

*/

-- = = = = = = = = = =
-- = = = Emblems = = =
-- = = = = = = = = = =

SET @OldEmblem = 47241; -- triumph (assuming you are applying this to a clean core/db)
SET @NewLowerEmblem = 40752; -- heroism
SET @NewHigherEmblem = 40753; -- valor
-- heroism: 40752 | valor: 40753 | conquest: 45624 | triumph: 47241 | frost: 49426


-- = = = = = = = = = = =
-- = Content disables =
-- = = = = = = = = = = =
DELETE FROM `disables` WHERE `entry` IN (631, 658, 668, 632, 650, 649, 603, 249, 724);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 631, 15, "", "", "WoltkProgression - Block ICC raid"),
(2, 658, 3, "", "", "WoltkProgression - Block ICC dungeon"),
(2, 668, 3, "", "", "WoltkProgression - Block ICC dungeon"),
(2, 632, 3, "", "", "WoltkProgression - Block ICC dungeon"),
(2, 650, 3, "", "", "WoltkProgression - Block ToC dungeon"),
(2, 649, 15, "", "", "WoltkProgression - Block ToC raid"),
(2, 603, 3, "", "", "WoltkProgression - Block Ulduar"),
(2, 249, 3, "", "", "WoltkProgression - Block Onyxia"),
(2, 724, 15, "", "", "WoltkProgression - Block Rubi Sanctum");


-- = = = = = = = = = = =
-- = = Dungeon Finder = =
-- = = = = = = = = = = =

/* Normal */
-- First normal dungeon of the day | 2 emblems de heroism --------
UPDATE `quest_template` SET `RewardItem1`=@NewLowerEmblem WHERE `ID`=24790;
-- After first normal dungeon of the day | N/A --------
UPDATE `quest_template` SET `RewardItem1`=0 WHERE `ID`=24791;

/* Heroic */
-- First heroic of the day | 2 emblems de valor --------
UPDATE `quest_template` SET `RewardItem1`=@NewHigherEmblem WHERE `ID`=24788;
-- After first heroic dungeon of the day | 2 emblems of heroism --------
UPDATE `quest_template` SET `RewardItem1`=@NewLowerEmblem WHERE `ID`=24789;


-- = = = = = = = = =
-- = = Instances = =
-- = = = = = = = = =

-- Hide Emalon, Koralon and Toravon at Vaulth of Archavon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id1` IN (
33993, -- Emalon
35013, -- Koralon
38433); -- Toravon

-- - - - - - - - - Ahn kahet: The Old Kingdom - - - - - - - -
-- Amanitar: 31463
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31463 AND `Item`=@OldEmblem;
-- Elder Nadox: 31456
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31456 AND `Item`=@OldEmblem;
-- Herald Volazj: 31464
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31464 AND `Item`=@OldEmblem;
-- Jedoga Shadowseeker: 31465
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31465 AND `Item`=@OldEmblem;
-- Prince Taldaram: 31469
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31469 AND `Item`=@OldEmblem;
--  - - - - - - - - Azjol-Nerub - - - - - - - -
-- Anub arak: 31610
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31610 AND `Item`=@OldEmblem;
-- Hadronox: 31611
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31611 AND `Item`=@OldEmblem;
-- Krik thir the Gatewatcher: 31612
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31612 AND `Item`=@OldEmblem;
--  - - - - - - - - Drak Tharon Keep - - - - - - - -
-- King Dred: 31349
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31349 AND `Item`=@OldEmblem;
-- Novos the Summoner: 31350
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31350 AND `Item`=@OldEmblem;
-- Trollgore: 26630
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=26630 AND `Item`=@OldEmblem;
--  - - - - - - - - Gundrak - - - - - - - -
-- Gal darah: 31368
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31368 AND `Item`=@OldEmblem;
-- Moorabi: 30530
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30530 AND `Item`=@OldEmblem;
-- Slad ran : 31370
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31370 AND `Item`=@OldEmblem;
-- Drakkari Elemental: 31367
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31367 AND `Item`=@OldEmblem;
-- Eck the Ferocious: 29932
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=29932 AND `Item`=@OldEmblem;
--  - - - - - - - - Halls of Lightning - - - - - - - -
-- General Bjarngrim: 31533
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31533 AND `Item`=@OldEmblem;
-- Ionar: 31537
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31537 AND `Item`=@OldEmblem;
-- Loken: 31538
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31538 AND `Item`=@OldEmblem;
-- Volkhan: 31536
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31536 AND `Item`=@OldEmblem;
--  - - - - - - - - Halls of Stone - - - - - - - -
-- Krystallus: 31381
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31381 AND `Item`=@OldEmblem;
-- Maiden of Grief: 31384
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31384 AND `Item`=@OldEmblem;
-- Sjonnir The Ironshaper: 31386
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31386 AND `Item`=@OldEmblem;
-- Tribunal Chest: 26260 (gameobject_loot_template)
UPDATE `gameobject_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=26260 AND `Item`=@OldEmblem;
--  - - - - - - - - The Culling of Stratholme - - - - - - - -
-- Meathook: 31211
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31211 AND `Item`=@OldEmblem;
-- Salramm the Fleshcrafter: 31212
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31212 AND `Item`=@OldEmblem;
-- Chrono-Lord Epoch: 31215
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31215 AND `Item`=@OldEmblem;
-- Infinite Corruptor: 32313
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=32313 AND `Item`=@OldEmblem;
-- Mal Ganis (Dark Runed chest) : 24589
UPDATE `gameobject_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=24589 AND `Item`=@OldEmblem;
--  - - - - - - - - The Nexus - - - - - - - -
-- Anomalus: 30529
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30529 AND `Item`=@OldEmblem;
-- Commander Stoutbeard: 30398
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30398 AND `Item`=@OldEmblem;
-- Commander Kolurg: 30397
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30397 AND `Item`=@OldEmblem;
-- Grand Magus Telestra: 30510
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30510 AND `Item`=@OldEmblem;
-- Keristrasza: 30540
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30540 AND `Item`=@OldEmblem;
-- Ormorok the Tree-Shaper: 30532
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30532 AND `Item`=@OldEmblem;
-- - - - - - - - - The Oculus - - - - - - - -
-- Varos Cloudstrider: 31559
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31559 AND `Item`=@OldEmblem;
-- Mage-Lord Urom: 31560
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31560 AND `Item`=@OldEmblem;
-- Ley-Guardian Eregos (Cache of Eregos) : 24524
UPDATE `gameobject_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=24524 AND `Item`=@OldEmblem;
-- Drakos the Interrogator: 31558
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31558 AND `Item`=@OldEmblem;
-- - - - - - - - - Utgarde Keep - - - - - - - -
-- Prince Keleseth: 30748
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30748 AND `Item`=@OldEmblem;
-- Skarvald the Constructor: 31679
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31679 AND `Item`=@OldEmblem;
-- Dalronn the Controller: 31656
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31656 AND `Item`=@OldEmblem;
-- Ingvar the Plunderer: 31673
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31673 AND `Item`=@OldEmblem;
-- - - - - - - - - Utgarde Pinnacle - - - - - - - -
-- Svala Sorrowgrave: 30810
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30810 AND `Item`=@OldEmblem;
-- Gortok Palehoof: 30774
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30774 AND `Item`=@OldEmblem;
-- Skadi the Ruthless: 30807
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30807 AND `Item`=@OldEmblem;
-- King Ymiron: 30788
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=30788 AND `Item`=@OldEmblem;
-- - - - - - - - - The Violet Hold - - - - - - - -
-- Erekem: 31507
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31507 AND `Item`=@OldEmblem;
-- Moragg: 31510
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31510 AND `Item`=@OldEmblem;
-- Ichoron: 31508
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31508 AND `Item`=@OldEmblem;
-- Xevozz: 31511
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31511 AND `Item`=@OldEmblem;
-- Lavanthor: 31509
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31509 AND `Item`=@OldEmblem;
-- Zuramat the Obliterator: 31512
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31512 AND `Item`=@OldEmblem;
-- Cyanigosa: 31506
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31506 AND `Item`=@OldEmblem;

-- - - - - - - - - Cámara de Archavon - - - - - - - -
-- Archavon el Vigía de Piedra (10): 31125
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31125 AND `Item`=@OldEmblem;
-- Archavon el Vigía de Piedra (25): 31722
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=31722 AND `Item`=@OldEmblem;

--  - - - - - - - - El Ojo de la Eternidad - - - - - - - -
-- Malygos (10): 26094 (data1)
UPDATE `gameobject_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=26094 AND `Item`=@OldEmblem;
-- Malygos (25): 26097 (data1)
UPDATE `gameobject_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=26097 AND `Item`=@OldEmblem;

--  - - - - - - - - Naxxramas - - - - - - - -
-- Anub'Rekhan (10): 15956
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15956 AND `Item`=@OldEmblem;
-- Anub'Rekhan (25): 29249
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29249 AND `Item`=@OldEmblem;
-- Grand Widow Faerlina (10): 15953
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15953 AND `Item`=@OldEmblem;
-- Grand Widow Faerlina (25): 29268
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29268 AND `Item`=@OldEmblem;
-- Maexxna (10): 15952
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15952 AND `Item`=@OldEmblem;
-- Maexxna (25): 29278
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29278 AND `Item`=@OldEmblem;
-- Noth the Plaguebringer (10): 15954
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15954 AND `Item`=@OldEmblem;
-- Noth the Plaguebringer (25): 29615
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29615 AND `Item`=@OldEmblem;
-- Heigan the Unclean (10): 15936
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15936 AND `Item`=@OldEmblem;
-- Heigan the Unclean (25): 29701
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29701 AND `Item`=@OldEmblem;
-- Loatheb (10): 16011
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=16011 AND `Item`=@OldEmblem;
-- Loatheb (25): 29718
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29718 AND `Item`=@OldEmblem;
-- Instructor Razuvious (10): 16061
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=16061 AND `Item`=@OldEmblem;
-- Instructor Razuvious (25): 29940
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29940 AND `Item`=@OldEmblem;
-- Gothik the Harvester (10): 16060
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=16060 AND `Item`=@OldEmblem;
-- Gothik the Harvester (25): 29955
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29955 AND `Item`=@OldEmblem;
-- Four Horsemen (10): 25192 (data1)
UPDATE `gameobject_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=25192 AND `Item`=@OldEmblem;
-- Four Horsemen (25): 25193 (data1)
UPDATE `gameobject_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=25193 AND `Item`=@OldEmblem;
-- Patchwerk (10): 16028
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=16028 AND `Item`=@OldEmblem;
-- Patchwerk (25): 29324
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29324 AND `Item`=@OldEmblem;
-- Grobbulus (10): 15931
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15931 AND `Item`=@OldEmblem;
-- Grobbulus (25): 29373
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29373 AND `Item`=@OldEmblem;
-- Gluth (10): 15932
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15932 AND `Item`=@OldEmblem;
-- Gluth (25): 29417
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29417 AND `Item`=@OldEmblem;
-- Thaddius (10): 15928
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15928 AND `Item`=@OldEmblem;
-- Thaddius (25): 29448
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29448 AND `Item`=@OldEmblem;
-- Sapphiron (10): 15989
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15989 AND `Item`=@OldEmblem;
-- Sapphiron (25): 29991
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=29991 AND `Item`=@OldEmblem;
-- Kel'Thuzad (10): 15990
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=15990 AND `Item`=@OldEmblem;
-- Kel'Thuzad (25): 30061
UPDATE `creature_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry`=30061 AND `Item`=@OldEmblem;

--  - - - - - - - - Obsidian Sanctum - - - - - - - -
-- Sartharion (10): 28860
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=28860 AND `Item`=@OldEmblem;
UPDATE `item_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=43347 AND `Item`=@OldEmblem; -- Satchel of Spoils [10mode]
-- Sartharion (25): 31311
UPDATE `creature_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=31311 AND `Item`=@OldEmblem; -- Sartharion loot
UPDATE `reference_loot_template` SET `Item`=@NewLowerEmblem WHERE  `Entry`=34349 AND `Item`=@OldEmblem; -- Mini-bosses loot
UPDATE `item_loot_template` SET `Item`=@NewLowerEmblem WHERE `Entry`=43346 AND `Item`=@OldEmblem; -- Satchel of Spoils [25mode]


-- = = = = = = = = = = = =
-- = = Dalaran changes = =
-- = = = = = = = = = = = =

-- Hide emblem vendors at Dalaran
UPDATE `creature` SET `phaseMask` = 2 WHERE `id1` IN (
33964, -- conquest ali
33963, -- conquest horde
35494, -- triumph ali
35495, -- triumph horde
37942, -- frost ali
37941, -- frost horde
-- Hide emblem gear vendors at Dalaran
35496,
35497,
35500,
35498,
34252,
-- Hide ForgeOfSouls quest givers at Dalaran
37780,
37776,
40160); -- Hide Frozo the Renowned


-- Remove rings of other contents from Harold Winston
SET @HaroldWinston = 32172;
-- upgradeitem.level 251 (Added in patch 3.3.0.10772)
DELETE FROM `npc_vendor` WHERE `entry`=@HaroldWinston AND `item` IN (51560,
51559,
51558,
51557,
-- special item.level 245 (Added in patch 3.2.0.10026)
47733,
47732,
47731,
47730,
47729,
-- upgrade item.level 226 (Added in patch 3.2.0.10048)
48957,
48956,
48955,
48954,
-- special item.level 226 (Added in patch 3.1.0.9626)
45823,
45822,
45821,
45820,
45819,
-- upgrade item.level 213 (Added in patch 3.1.0.9626)
45691,
45690,
45689,
45688);

-- Update woltk materials (needed on +20 gems) for TBC materials (for +16 gems)
UPDATE `npc_vendor` SET `item`=36918 WHERE `entry`=@HaroldWinston AND `item`=36919;
UPDATE `npc_vendor` SET `item`=36921 WHERE `entry`=@HaroldWinston AND `item`=36922;
UPDATE `npc_vendor` SET `item`=36924 WHERE `entry`=@HaroldWinston AND `item`=36925;
UPDATE `npc_vendor` SET `item`=36927 WHERE `entry`=@HaroldWinston AND `item`=36928;
UPDATE `npc_vendor` SET `item`=36930 WHERE `entry`=@HaroldWinston AND `item`=36931;
UPDATE `npc_vendor` SET `item`=36933 WHERE `entry`=@HaroldWinston AND `item`=36934;

-- Disable Timothy Jones as a vendor, this is required to disable the epic gems recipes which were included in ToC 3.2, so let's remove the flag 128
UPDATE `creature_template` SET `npcflag`=83 WHERE `entry`=28701;

-- = = = = = = = = = = = = = = =
-- = = General world changes = =
-- = = = = = = = = = = = = = = =

-- Hide PvP vendors at Stormwind and Orgrimmar
UPDATE `creature` SET `phaseMask` = 2 WHERE `id1` IN (
34060, 34063, 34038, -- Horde
34075, 34084, 34078); -- Alliance

-- Place TBC matts (for +16 gems) into jewelry vendors in the pvp vendors area at orgrimmar and stormwind
DELETE FROM `npc_vendor` WHERE `entry`=34040 AND item IN (36918, 36921, 36924, 36927, 36930, 36933);
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(34040, 0, 36918, 0, 0, 2588, 0),
(34040, 0, 36921, 0, 0, 2588, 0),
(34040, 0, 36924, 0, 0, 2588, 0),
(34040, 0, 36927, 0, 0, 2588, 0),
(34040, 0, 36930, 0, 0, 2588, 0),
(34040, 0, 36933, 0, 0, 2588, 0);


-- = = = = = = = = = =
-- = = Wintergrasp = =
-- = = = = = = = = = =

-- Disable vendors (light mounts / item level 245)
UPDATE `creature_template` SET `npcflag`=0 WHERE `entry` IN (
39173, -- horde
39172 -- alliance
);

-- Remove items in heavy mount vendors (items start from item.level 245)
SET @StoneGuardMukar = 32296; -- horde
SET @KnightDameron = 32294; -- alliance

DELETE FROM `npc_vendor` WHERE `entry` IN (@StoneGuardMukar, @KnightDameron) AND `item` IN (
46057,
46058,
46059,
46060,
46061,
46062,
46063,
46064,
46065,
46066,
46071,
46072,
46073,
46074,
46075,
46076,
46077,
46078,
46079,
46080,
46081,
46082,
46083,
46084,
46085,
46086,
46087,
46088,
48974,
48975,
48976,
48977,
48978,
48979,
48980,
48981,
48982,
48983,
48987,
48988,
48990,
48991,
48992,
48993,
48994,
48997,
48998,
48999,
49000);


-- = = = = = = = = = = = = = =
-- = Weekly and daily quests =
-- = = = = = = = = = = = = = =

-- Disable weekly quests from Archmage Lan'dalock
DELETE FROM `disables` WHERE `entry` IN (24580, 24582, 24584, 24581, 24583, 24579, 24585, 24587, 24586, 24588, 24589, 24590);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(1, 24580, 0, "", "", "WoltkProgression - Disable quest - Anub'Rekhan Must Die!"),
(1, 24582, 0, "", "", "WoltkProgression - Disable quest - Instructor Razuvious Must Die!"),
(1, 24584, 0, "", "", "WoltkProgression - Disable quest - Malygos Must Die!"),
(1, 24581, 0, "", "", "WoltkProgression - Disable quest - Noth the Plaguebringer Must Die!"),
(1, 24583, 0, "", "", "WoltkProgression - Disable quest - Patchwerk Must Die!"),
(1, 24579, 0, "", "", "WoltkProgression - Disable quest - Sartharion Must Die!"),
(1, 24585, 0, "", "", "WoltkProgression - Disable quest - Flame Leviathan Must Die!"),
(1, 24587, 0, "", "", "WoltkProgression - Disable quest - Ignis the Furnace Master Must Die!"),
(1, 24586, 0, "", "", "WoltkProgression - Disable quest - Razorscale Must Die!"),
(1, 24588, 0, "", "", "WoltkProgression - Disable quest - XT-002 Deconstructor Must Die!"),
(1, 24589, 0, "", "", "WoltkProgression - Disable quest - Lord Jaraxxus Must Die!"),
(1, 24590, 0, "", "", "WoltkProgression - Disable quest - Lord Marrowgar Must Die!");


-- Enable dungeon daily quests

/* Timear Foresees - Archmage Timear in Dalaran */
DELETE FROM `creature_queststarter` WHERE `id`=31439;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(31439, 13240),
(31439, 13241),
(31439, 13243),
(31439, 13244);
DELETE FROM `creature_questender` WHERE `id`=31439;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(31439, 13240),
(31439, 13241),
(31439, 13243),
(31439, 13244);

/* Proof of Demise - Archmage Lan'dalock in Dalaran */
DELETE FROM `creature_queststarter` WHERE `id`=31439;
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES 
(20735, 13245),
(20735, 13247),
(20735, 13249),
(20735, 13251),
(20735, 13253),
(20735, 13255),
(20735, 13246),
(20735, 13248),
(20735, 13250),
(20735, 13252),
(20735, 13254),
(20735, 13256);
DELETE FROM `creature_questender` WHERE `id`=31439;
INSERT INTO `creature_questender` (`id`, `quest`) VALUES 
(20735, 13245),
(20735, 13247),
(20735, 13249),
(20735, 13251),
(20735, 13253),
(20735, 13255),
(20735, 13246),
(20735, 13248),
(20735, 13250),
(20735, 13252),
(20735, 13254),
(20735, 13256);

-- Timear Foresees rewards 1 heroism per quest in patch 3.0
-- Proof of Demise rewards 2 heroism per quest in patch 3.0
UPDATE `quest_template` SET `RewardItem1`=@NewLowerEmblem WHERE `ID` IN (13240,13241,13243,13244,13245,13247,13249,13251,13253,13255,13246,13248,13250,13252,13254,13256);


-- = = = = = = = = =
-- = = = Events = = =
-- = = = = = = = = =

-- Loot of "Satchel of Chilled Goods"
UPDATE `item_loot_template` SET `Item`=@NewHigherEmblem WHERE `Entry` IN (
54536, -- item: Satchel of Chilled Goods / event: Midsummer Fire Festival.
54535, -- item: Keg-Shaped Treasure Chest / event: Brewfest
54516, -- item: Loot-Filled Pumpkin / event: Halloween
54537) -- item: Heart-Shaped Box / event: Love is in the Air
AND `Item`=49426; -- emblem of frost (assuming you are applying this to a clean core/db)


-- = = = = = = = = =
-- = Miscellaneous =
-- = = = = = = = = =

-- Cardinal Ruby
update quest_template SET minlevel=90 WHERE id IN (14151);

-- Assault on the Sanctum
update quest_template SET minlevel=90 WHERE id IN (26013);

-- Usuri Brightcoin <Money Changer>
update creature_template set flags_extra = 128 WHERE entry = 35790;

-- Transmute
delete from npc_trainer WHERE spellid IN (66658,66660,66662,66663,66664,67025);

-- Wormhole Generator: Northrend
delete FROM npc_trainer WHERE spellid IN (67920);

-- Runescroll of Fortitude
delete FROM npc_trainer WHERE spellid IN (69385);

-- Icy Prism - (ReferenceTable)
DELETE FROM item_loot_template item_loot_template WHERE entry=44943 and reference =10008;

-- Icy Prism - Dragon's Eye
DELETE FROM item_loot_template item_loot_template WHERE entry=44943 and item =42225;

-- (ReferenceTable) - Titanium Ore
DELETE FROM prospecting_loot_template WHERE reference=13005;

-- Drums of the Wild & Drums of Forgotten Kings
DELETE FROM npc_trainer WHERE spellid IN (69386,69388);

-- For Jewelcrafting Trainers on Shattrath City
DELETE FROM npc_vendor WHERE entry IN (33680,33637) AND item BETWEEN 46897 AND 49112;

-- Disable Heirloom Vendor
UPDATE `creature_template` SET flags_extra = 128 WHERE `entry` IN (
35507, -- Enchanter Isian
35508); -- Enchanter Erodin

-- Tome of Cold Weather Flight | Added in patch 3.2.0.10192
delete from npc_vendor where entry=31238;

-- Arcanum of Burning Mysteries | Added in patch 3.3.0.10623
DELETE FROM npc_vendor WHERE item=50368;

-- Arcanum of Blissful Mending | Added in patch 3.3.0.10623
DELETE FROM npc_vendor WHERE item=50370;

-- Arcanum of the Savage Gladiator (Alliance and horde versions) | Added in patch 3.3.0.10623
DELETE FROM npc_vendor  WHERE item IN (50372,50373);

-- Added in patch 3.3.0.10623
DELETE FROM npc_vendor  WHERE item IN (
50337, -- Greater Inscription of the Pinnacle
50335, -- Greater Inscription of the Axe
50336, -- Greater Inscription of the Crag
50338); -- Greater Inscription of the Storm

-- Arcanum of the Stalwart Protector | Added in patch 3.3.0.10623
DELETE FROM npc_vendor  WHERE item = 50369;

-- Arcanum of Torment | Added in patch 3.3.0.10623
DELETE FROM npc_vendor where item=50367;

