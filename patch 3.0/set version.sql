/*
Written by Silker | https://github.com/Si1ker
This SQL update file will set your woltk server based on AzerothCore to the version latests 3.0 version
*/

-- Disables
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
SET @OldEmblem = 47241; -- triumph (assuming you are applying this to a clean core/db)
SET @NewLowerEmblem = 40752; -- heroism
SET @NewHigherEmblem = 40753; -- valor
-- heroism: 40752 | valor: 40753 | conquest: 45624 | triumph: 47241 | frost: 49426

-- = = Normal = =
-- First normal dungeon of the day | 2 emblems de heroism --------
UPDATE `quest_template` SET `RewardItem1`=@NewLowerEmblem WHERE `ID`=24790;
-- After first heroic dungeon of the day | N/A --------
UPDATE `quest_template` SET `RewardItem1`=0 WHERE `ID`=24791;

-- = = Heroic = =
-- First heroic of the day | 2 emblems de valor --------
UPDATE `quest_template` SET `RewardItem1`=@NewHigherEmblem WHERE `ID`=24788;
-- After first heroic dungeon of the day | 2 emblems of heroism --------
UPDATE `quest_template` SET `RewardItem1`=@NewLowerEmblem WHERE `ID`=24789;


-- = = = = = = = = =
-- = = Instances = =
-- = = = = = = = = =

-- Hide Emalon, Koralon and Toravon at Vaulth of Archavon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (
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
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (
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


-- Remove rings from Harold Winston
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
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (
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

-- ===============================================
-- Eso deshabilita que los vendedores en monturas livianas sean vendedores, item lvl 245 , probablemente en ToC revertir estos cambios

-- Eliminar items de otros contenidos de Guardia de piedra Mutaha (32296)
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46057 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46058 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46059 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46060 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46061 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46062 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46063 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46064 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46065 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46066 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46071 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46072 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46073 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46074 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46075 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46076 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46077 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46078 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46079 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46080 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46081 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46082 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46083 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46084 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46085 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46086 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46087 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=46088 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48974 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48975 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48976 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48977 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48978 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48979 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48980 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48981 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48982 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48983 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48987 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48988 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48990 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48991 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48992 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48993 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48994 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48997 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48998 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=48999 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32296 AND `item`=49000 AND `ExtendedCost`=2577;

-- Eliminar items de otros contenidos de Caballero Dameron (32294)
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46057 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46058 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46059 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46060 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46061 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46062 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46063 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46064 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46065 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46066 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46071 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46072 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46073 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46074 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46075 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46076 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46077 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46078 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46079 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46080 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46081 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46082 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46083 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46084 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46085 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46086 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46087 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=46088 AND `ExtendedCost`=2578;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48974 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48975 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48976 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48977 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48978 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48979 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48980 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48981 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48982 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48983 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48987 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48988 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48990 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48991 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48992 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48993 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48994 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48997 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48998 AND `ExtendedCost`=2579;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=48999 AND `ExtendedCost`=2577;
DELETE FROM `npc_vendor` WHERE  `entry`=32294 AND `item`=49000 AND `ExtendedCost`=2577;




-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ------------------

-- NPC: Archmage Lan'dalock | 20735


-- ========
-- Phase 1
-- ========

-- Anub'Rekhan Must Die! | 24580
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24580;

-- Instructor Razuvious Must Die! | 24582
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24582;

-- Malygos Must Die! | 24584
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24584;

-- Noth the Plaguebringer Must Die! | 24581
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24581;

-- Patchwerk Must Die! | 24583
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24583;

-- Sartharion Must Die! | 24579
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24579;


-- ========
-- Phase 2 (Disabled)
-- ========

-- Flame Leviathan Must Die! | 24585
DELETE FROM `quest_template` WHERE  `ID`=24585;

-- Ignis the Furnace Master Must Die! | 24587
DELETE FROM `quest_template` WHERE  `ID`=24587;

-- Razorscale Must Die! | 24586
DELETE FROM `quest_template` WHERE  `ID`=24586;

-- XT-002 Deconstructor Must Die! | 24588
DELETE FROM `quest_template` WHERE  `ID`=24588;


-- ========
-- Phase 3 (Disabled)
-- ========

-- Lord Jaraxxus Must Die! | 24589
DELETE FROM `quest_template` WHERE  `ID`=24589;


-- ========
-- Phase 4 (Disabled)
-- ========

-- Lord Marrowgar Must Die! | 24590
DELETE FROM `quest_template` WHERE  `ID`=24590;







13241
UPDATE `quest_template` SET `RewardItem1`='40753' WHERE  `ID`=13241;

13244
UPDATE `quest_template` SET `RewardItem1`='40753' WHERE  `ID`=13244;

13240
UPDATE `quest_template` SET `RewardItem1`='40753' WHERE  `ID`=13240;

13243
UPDATE `quest_template` SET `RewardItem1`='40753' WHERE  `ID`=13243;

-- Fix raid weekly quest loot

24580





-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ------------------


-- Loot of "Satchel of Chilled Goods" item 54536
-- Phase 1 (Valor x2)

UPDATE `item_loot_template` SET `Item`='40753' WHERE  `Entry`=54536 AND `Item`=49426;
