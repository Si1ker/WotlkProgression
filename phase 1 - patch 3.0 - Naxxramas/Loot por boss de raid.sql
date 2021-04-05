
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
