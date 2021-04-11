-- Written By Silker | https://github.com/Si1ker
-- ===================================================== N A X X A T H A R ===========================================================================

-- ======== Backup: In case you wanna go back after the below changes in "Sapphiron requirement" ===============
/*
DELETE FROM `areatrigger_teleport` WHERE  `ID`=4156;
INSERT INTO `areatrigger_teleport` (`ID`, `Name`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES 
('4156', 'Naxxramas (to frostwyrm lair)', '533', '3500.87', '-5339.03', '145', '1.34');

DELETE FROM `gameobject` WHERE `guid`=65853;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES 
('65853', '181229', '533', '0', '0', '3', '2', '3005.78', '-3434.36', '300.328', '3.14159', '-0', '-0', '-1', '-0.00000126759', '0', '0', '0', '0');

DELETE FROM `spell_target_position` WHERE ID=72617;
INSERT INTO `spell_target_position` (`ID`, `EffectIndex`, `MapID`, `PositionX`, `PositionY`, `PositionZ`, `Orientation`, `VerifiedBuild`) VALUES 
('72617', '0', '533', '3038.98', '-3434.47', '298.22', '0', '0');

DELETE FROM `gameobject` WHERE `guid`=5216;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `zoneId`, `areaId`, `spawnMask`, `phaseMask`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`, `VerifiedBuild`) VALUES 
('5216', '202277', '533', '0', '0', '3', '1', '3495.97', '-5357.84', '144.964', '0.541051', '0', '0', '0', '1', '7200', '255', '1', '0');
*/

-- ======== Sapphiron requirement ===============

-- 1 = Delete trigger teleport
DELETE FROM `areatrigger_teleport` WHERE `ID`=4156;

-- 2 = Create scripted trigger
DELETE FROM `areatrigger_scripts` WHERE `entry`=4156;
INSERT INTO `areatrigger_scripts` (`entry`, `ScriptName`) VALUES (4156, 'at_sapphiron_entrance');

-- 3 = Create "at_frozen_throne_teleport" script into "instance_naxxramas.cpp" // Add the cpp modifications which are located in this folder

-- 4 = Modify spell target position
UPDATE `spell_target_position` SET `PositionX`=3500.87, `PositionY`=-5339.03, `PositionZ`=145, `Orientation`=1.34 WHERE `ID`=72613 AND `EffectIndex`=0;

-- 5 = Change phaseMask for gameobejct "Portal"
UPDATE `gameobject` SET `phaseMask`=2 WHERE  `guid`=65853;

