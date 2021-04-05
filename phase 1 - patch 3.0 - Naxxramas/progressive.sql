
-- ====================== General SQL update for Phase 1: Naxx/Malygos/So/Archavon/SEASON 5 PVP ======================

-- Disable further instances
DELETE FROM `disables` WHERE `entry` IN (631, 658, 668, 632, 650, 649, 603, 249, 724);
INSERT INTO `disables` (`sourceType`, `entry`, `flags`, `params_0`, `params_1`, `comment`) VALUES 
(2, 631, 15, "", "", "Naxxathar - ICC"),
(2, 658, 3, "", "", "Naxxathar - ICC DUNGEONS"),
(2, 668, 3, "", "", "Naxxathar - ICC DUNGEONS"),
(2, 632, 3, "", "", "Naxxathar - ICC DUNGEONS"),
(2, 650, 3, "", "", "Naxxathar - ToC DUNGEON"),
(2, 649, 15, "", "", "Naxxathar - ToC RAID"),
(2, 603, 3, "", "", "Naxxathar - Ulduar"),
(2, 249, 3, "", "", "Naxxathar - Onyxia"),
(2, 724, 15, "", "", "Naxxathar - Rubi");

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
-- First heroic of the day | 2 emblems de heroism --------
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


