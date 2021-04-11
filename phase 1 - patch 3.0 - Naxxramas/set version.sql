-- Disables
DELETE FROM `disables` WHERE `entry` IN (631, 658, 668, 632, 650, 649, 603, 249, 724);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 631, 15, "", "", "ICC raid"),
(2, 658, 3, "", "", "ICC dungeon"),
(2, 668, 3, "", "", "ICC dungeon"),
(2, 632, 3, "", "", "ICC dungeon"),
(2, 650, 3, "", "", "ToC dungeon"),
(2, 649, 15, "", "", "ToC raid"),
(2, 603, 3, "", "", "Ulduar"),
(2, 249, 3, "", "", "Onyxia"),
(2, 724, 15, "", "", "Rubi Sanctum");

-- Hide Emalon, Koralon and Toravon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` = 33993; -- Emalon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` = 35013; -- Koralon
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` = 38433; -- Toravon

-- Hide emblem vendores at Dalaran
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (33964, 33963); -- conquest ali/horde
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (35494, 35495); -- triumph ali/horde
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (37942, 37941); -- frost ali/horde

-- Hide gear vendors at Dalaran
/* 35496 | phase4 - triunfo/escarcha (cloth)
35497 | triunfo/escarcha (leather)
35500 | triunfo/escarcha (mail)
35498 | triunfo/escarcha (plate)
34252 | triunfo/tokens (plate) */
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (35496, 35497, 35500, 35498, 34252);

-- Hide ForgeOfSouls quest givers at Dalaran
/* 37780 | Forestal oscura Vorel
37776 | Aprendiza Nelphi */
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (37780, 37776);

-- = = = = = = = = = = = = = = = =
-- = = = = Dungeon Finder = = = =
-- = = = = = = = = = = = = = = = =

-- heroism: 40752 | valor: 40753 | conquest: 45624 | triumph: 47241 | frost: 49426
-- => This will change the rewards of emblems once a woltk dungeon is completed <=

-- = = Normal = =
-- First normal dungeon of the day | 2 emblems de heroism --------
UPDATE `quest_template` SET `RewardItem1`=40752 WHERE `ID`=24790;
-- After first heroic dungeon of the day | N/A --------
UPDATE `quest_template` SET `RewardItem1`=0 WHERE `ID`=24791;


-- = = Heroic = =
-- First heroic of the day | 2 emblems de valor --------
UPDATE `quest_template` SET `RewardItem1`=40753 WHERE `ID`=24788;
-- After first heroic dungeon of the day | 2 emblems of heroism --------
UPDATE `quest_template` SET `RewardItem1`=40752 WHERE `ID`=24789;

-- = = = = = = = = = = = = = = = =
-- = = = = = = = = = = = = = = = =




-- Hide PvP vendors at Stormwind and Orgrimmar
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (34060, 34063, 34038); -- Horde
UPDATE `creature` SET `phaseMask` = 2 WHERE `id` IN (34075, 34084, 34078); -- Alliance














-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

--------------------------------------------

-- Buscar boss de 25 basado en ID original de 10. El difficulty_entry_1 es el ID del boss en 25
-- SELECT Entry,name,difficulty_entry_1 from creature_template where Entry=Boss 10ID;


-- Esto cambia los emblemas que lotea cada boss en contenido heroico de woltk de triunfo a heroismo

-- - - - - - - - - Ahn kahet: The Old Kingdom - - - - - - - -

-- Amanitar: 31463
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31463 AND `Item`=47241;

-- Elder Nadox: 31456
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31456 AND `Item`=47241;

-- Herald Volazj: 31464
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31464 AND `Item`=47241;

-- Jedoga Shadowseeker: 31465
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31465 AND `Item`=47241;

-- Prince Taldaram: 31469
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31469 AND `Item`=47241;




--  - - - - - - - - Azjol-Nerub - - - - - - - -

-- Anub arak: 31610
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31610 AND `Item`=47241;

-- Hadronox: 31611
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31611 AND `Item`=47241;

-- Krik thir the Gatewatcher: 31612
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31612 AND `Item`=47241;




--  - - - - - - - - Drak Tharon Keep - - - - - - - -

-- King Dred: 31349
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31349 AND `Item`=47241;

-- Novos the Summoner: 31350
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31350 AND `Item`=47241;

-- Trollgore: 26630
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=26630 AND `Item`=47241;




--  - - - - - - - - Gundrak - - - - - - - -

-- Gal darah: 31368
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31368 AND `Item`=47241;

-- Moorabi: 30530
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30530 AND `Item`=47241;

-- Slad ran : 31370
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31370 AND `Item`=47241;

-- Drakkari Elemental: 31367
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31367 AND `Item`=47241;

-- Eck the Ferocious: 29932
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=29932 AND `Item`=47241;




--  - - - - - - - - Halls of Lightning - - - - - - - -

-- General Bjarngrim: 31533
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31533 AND `Item`=47241;

-- Ionar: 31537
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31537 AND `Item`=47241;

-- Loken: 31538
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31538 AND `Item`=47241;

-- Volkhan: 31536
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31536 AND `Item`=47241;




--  - - - - - - - - Halls of Stone - - - - - - - -

-- Krystallus: 31381
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31381 AND `Item`=47241;

-- Maiden of Grief: 31384
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31384 AND `Item`=47241;

-- Sjonnir The Ironshaper: 31386
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31386 AND `Item`=47241;

-- Tribunal Chest: 26260 (gameobject_loot_template)
UPDATE `gameobject_loot_template` SET `Item`=40752 WHERE `Entry`=26260 AND `Item`=47241;




--  - - - - - - - - The Culling of Stratholme - - - - - - - -

-- Meathook: 31211
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31211 AND `Item`=47241;

-- Salramm the Fleshcrafter: 31212
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31212 AND `Item`=47241;

-- Chrono-Lord Epoch: 31215
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31215 AND `Item`=47241;

-- Infinite Corruptor: 32313
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=32313 AND `Item`=47241;

-- Mal Ganis (Dark Runed chest) : 24589
UPDATE `gameobject_loot_template` SET `Item`=40752 WHERE `Entry`=24589 AND `Item`=47241;




--  - - - - - - - - The Nexus - - - - - - - -

-- Anomalus: 30529
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30529 AND `Item`=47241;

-- Commander Stoutbeard: 30398
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30398 AND `Item`=47241;

-- Commander Kolurg: 30397
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30397 AND `Item`=47241;

-- Grand Magus Telestra: 30510
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30510 AND `Item`=47241;

-- Keristrasza: 30540
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30540 AND `Item`=47241;

-- Ormorok the Tree-Shaper: 30532
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30532 AND `Item`=47241;




-- - - - - - - - - The Oculus - - - - - - - -

-- Varos Cloudstrider: 31559
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31559 AND `Item`=47241;

-- Mage-Lord Urom: 31560
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31560 AND `Item`=47241;

-- Ley-Guardian Eregos (Cache of Eregos) : 24524
UPDATE `gameobject_loot_template` SET `Item`=40752 WHERE `Entry`=24524 AND `Item`=47241;

-- Drakos the Interrogator: 31558
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31558 AND `Item`=47241;




-- - - - - - - - - Utgarde Keep - - - - - - - -

-- Prince Keleseth: 30748
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30748 AND `Item`=47241;

-- Skarvald the Constructor: 31679
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31679 AND `Item`=47241;

-- Dalronn the Controller: 31656
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31656 AND `Item`=47241;

-- Ingvar the Plunderer: 31673
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31673 AND `Item`=47241;




-- - - - - - - - - Utgarde Pinnacle - - - - - - - -

-- Svala Sorrowgrave: 30810
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30810 AND `Item`=47241;

-- Gortok Palehoof: 30774
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30774 AND `Item`=47241;

-- Skadi the Ruthless: 30807
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30807 AND `Item`=47241;

-- King Ymiron: 30788
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=30788 AND `Item`=47241;




-- - - - - - - - - The Violet Hold - - - - - - - -

-- Erekem: 31507
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31507 AND `Item`=47241;

-- Moragg: 31510
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31510 AND `Item`=47241;

-- Ichoron: 31508
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31508 AND `Item`=47241;

-- Xevozz: 31511
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31511 AND `Item`=47241;

-- Lavanthor: 31509
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31509 AND `Item`=47241;

-- Zuramat the Obliterator: 31512
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31512 AND `Item`=47241;

-- Cyanigosa: 31506
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31506 AND `Item`=47241;


























-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ------------------

-- Buscar boss de 25 basado en ID original de 10. El difficulty_entry_1 es el ID del boss en 25
-- SELECT Entry,name,difficulty_entry_1 from creature_template where Entry=Boss 10ID;


-- Esto cambia los emblemas que lotea cada boss en contenido heroico de woltk de triunfo a heroismo

-- - - - - - - - - Cámara de Archavon - - - - - - - -

-- Archavon el Vigía de Piedra (10): 31125
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=31125 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=31125 AND `Item`=40752;

-- Archavon el Vigía de Piedra (25): 31722
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31722 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=31722 AND `Item`=40753;
-- = = = = = = = = = = = = = = = = = = = = = = = = = =



--  - - - - - - - - El Ojo de la Eternidad - - - - - - - -

-- Malygos (10): 26094 (data1)
UPDATE `gameobject_loot_template` SET `Item`=40752 WHERE `Entry`=26094 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=26094 AND `Item`=40752;

-- Malygos (25): 26097 (data1)
UPDATE `gameobject_loot_template` SET `Item`=40753 WHERE `Entry`=26097 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=26097 AND `Item`=40753;
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = =




--  - - - - - - - - Naxxramas - - - - - - - -

-- Anub'Rekhan (10): 15956
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15956 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15956 AND `Item`=40752;

-- Anub'Rekhan (25): 29249
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29249 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29249 AND `Item`=40753;

-- Grand Widow Faerlina (10): 15953
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15953 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15953 AND `Item`=40752;

-- Grand Widow Faerlina (25): 29268
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29268 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29268 AND `Item`=40753;

-- Maexxna (10): 15952
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15952 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15952 AND `Item`=40752;

-- Maexxna (25): 29278
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29278 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29278 AND `Item`=40753;

-- Noth the Plaguebringer (10): 15954
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15954 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15954 AND `Item`=40752;

-- Noth the Plaguebringer (25): 29615
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29615 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29615 AND `Item`=40753;

-- Heigan the Unclean (10): 15936
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15936 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15936 AND `Item`=40752;

-- Heigan the Unclean (25): 29701
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29701 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29701 AND `Item`=40753;

-- Loatheb (10): 16011
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=16011 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=16011 AND `Item`=40752;

-- Loatheb (25): 29718
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29718 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29718 AND `Item`=40753;

-- Instructor Razuvious (10): 16061
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=16061 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=16061 AND `Item`=40752;

-- Instructor Razuvious (25): 29940
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29940 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29940 AND `Item`=40753;

-- Gothik the Harvester (10): 16060
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=16060 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=16060 AND `Item`=40752;

-- Gothik the Harvester (25): 29955
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29955 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29955 AND `Item`=40753;

-- Four Horsemen (10): 25192 (data1)
UPDATE `gameobject_loot_template` SET `Item`=40752 WHERE `Entry`=25192 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=25192 AND `Item`=40752;

-- Four Horsemen (25): 25193 (data1)
UPDATE `gameobject_loot_template` SET `Item`=40753 WHERE `Entry`=25193 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=25193 AND `Item`=40753;

-- Patchwerk (10): 16028
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=16028 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=16028 AND `Item`=40752;

-- Patchwerk (25): 29324
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29324 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29324 AND `Item`=40753;

-- Grobbulus (10): 15931
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15931 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15931 AND `Item`=40752;

-- Grobbulus (25): 29373
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29373 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29373 AND `Item`=40753;

-- Gluth (10): 15932
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15932 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15932 AND `Item`=40752;

-- Gluth (25): 29417
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29417 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29417 AND `Item`=40753;

-- Thaddius (10): 15928
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15928 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15928 AND `Item`=40752;

-- Thaddius (25): 29448
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29448 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29448 AND `Item`=40753;

-- Sapphiron (10): 15989
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15989 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15989 AND `Item`=40752;

-- Sapphiron (25): 29991
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29991 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=29991 AND `Item`=40753;

-- Kel'Thuzad (10): 15990
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=15990 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=15990 AND `Item`=40752;

-- Kel'Thuzad (25): 30061
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30061 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MaxCount`='3' WHERE  `Entry`=30061 AND `Item`=2; -- from 2 tokens to 3
UPDATE `creature_loot_template` SET `MaxCount`='6' WHERE  `Entry`=30061 AND `Item`=1; -- from 3 gear to 6
UPDATE `creature_loot_template` SET `MinCount`='4', `MaxCount`='4' WHERE  `Entry`=30061 AND `Item`=47241; -- 4 emblems of valor

-- = Kel'Thuzad 25 special reward
INSERT INTO `creature_loot_template` (`Entry`, `Item`, `Reference`, `Chance`, `QuestRequired`, `LootMode`, `GroupId`, `MinCount`, `MaxCount`, `Comment`) VALUES 
('30061', '13335', '0', '100', '0', '1', '0', '1', '1', 'Deathcharger\'s Reins');
-- = = = = = = = = = = = = = = = = = = = = = = = = = = = =




--  - - - - - - - - Santuario obsidiana - - - - - - - -

-- Sartharion (10): 28860
UPDATE `creature_loot_template` SET `Item`=40752 WHERE `Entry`=28860 AND `Item`=47241;
UPDATE `item_loot_template` SET `Item`=40752 WHERE `Entry`=43347 AND `Item`=47241; -- Cartera de botin [modo 10]

-- Sartharion (25): 31311
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31311 AND `Item`=47241; -- Loot de Sartharion
UPDATE `reference_loot_template` SET `Item`=40753 WHERE  `Entry`=34349 AND `Item`=47241; -- Loot de los Drakes
UPDATE `item_loot_template` SET `Item`=40753 WHERE `Entry`=43346 AND `Item`=47241; -- Cartera de botin grande [modo 25]



































-- ==== Cambios en sortijas y gemas | Dalaran ====

-- Esto quita las sortijas de otros contenidos que vende Harold Winston (32172)
-- Solo quedaran las del contenido de Naxx, al pasar a Ulduar hay que revisar cuales poner nuevamente (deberian ser los IDs de menor valor)

-- 51560
-- 51559
-- 51558
-- 51557
-- 48957
-- 48956
-- 48955
-- 48954
-- 47733
-- 47732
-- 47731
-- 47730
-- 47729
-- 45823
-- 45822
-- 45821
-- 45820
-- 45819
-- 45691
-- 45690
-- 45689
-- 45688

DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=51560 AND `ExtendedCost`=2738;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=51559 AND `ExtendedCost`=2736;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=51558 AND `ExtendedCost`=2737;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=51557 AND `ExtendedCost`=2735;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=48957 AND `ExtendedCost`=2705;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=48956 AND `ExtendedCost`=2704;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=48955 AND `ExtendedCost`=2703;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=48954 AND `ExtendedCost`=2702;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=47733 AND `ExtendedCost`=2685;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=47732 AND `ExtendedCost`=2685;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=47731 AND `ExtendedCost`=2685;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=47730 AND `ExtendedCost`=2685;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=47729 AND `ExtendedCost`=2685;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45823 AND `ExtendedCost`=2606;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45822 AND `ExtendedCost`=2606;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45821 AND `ExtendedCost`=2606;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45820 AND `ExtendedCost`=2606;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45819 AND `ExtendedCost`=2606;

DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45691 AND `ExtendedCost`=2595;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45690 AND `ExtendedCost`=2594;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45689 AND `ExtendedCost`=2593;
DELETE FROM `npc_vendor` WHERE  `entry`=32172 AND `item`=45688 AND `ExtendedCost`=2592;

-- ===============================================
-- Esto cambia los matts que vienen por defecto (matts de gemas epicas) por los matts para las gemas de +16  (esto se tiene que revertir al iniciar contenido de ToC)

-- 36919 por 36918
-- 36922 por 36921
-- 36925 por 36924
-- 36928 por 36927
-- 36931 por 36930
-- 36934 por 36933

UPDATE `npc_vendor` SET `item`='36918' WHERE  `entry`=32172 AND `item`=36919 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36921' WHERE  `entry`=32172 AND `item`=36922 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36924' WHERE  `entry`=32172 AND `item`=36925 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36927' WHERE  `entry`=32172 AND `item`=36928 AND `ExtendedCost`=2484;
UPDATE `npc_vendor` SET `item`='36930' WHERE  `entry`=32172 AND `item`=36931 AND `ExtendedCost`=2484;
UPDATE `npc_vendor` SET `item`='36933' WHERE  `entry`=32172 AND `item`=36934 AND `ExtendedCost`=2484;

-- ============ esto pone las gemas tbc por 10k de honor =========
-- horda y alianza (ambos vendor estan linkeados)
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
('34040', '0', '36918', '0', '0', '2588', '0'),
('34040', '0', '36921', '0', '0', '2588', '0'),
('34040', '0', '36924', '0', '0', '2588', '0'),
('34040', '0', '36927', '0', '0', '2588', '0'),
('34040', '0', '36930', '0', '0', '2588', '0'),
('34040', '0', '36933', '0', '0', '2588', '0');

-- esto reduce la dual spec a 500 de oro instead of 1000g
UPDATE `gossip_menu_option` SET `BoxMoney` = '5000000' WHERE `OptionType` = 18



-- ===============================================
-- Eso deshabilita que Timothy Jones (28701) sea un vendedor para que no venda las recetas de gemas epicas (+20) al quitarle el flag 128

UPDATE `creature_template` SET `npcflag`='83' WHERE `entry`=28701;











































-- == Cambios y faseos de Conquista del invierno ==

-- ===============================================
-- Eso deshabilita que los vendedores en monturas livianas sean vendedores, item lvl 245 , probablemente en ToC revertir estos cambios


-- Cmpaoen Ros slai [Horda]
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=39173;

-- Mariscal Magruder [Alianza]
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=39172;

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
