-- == Cambios y faseos de Conquista del invierno ==

-- ===============================================
-- Eso deshabilita que los vendedores en monturas livianas no sean vendedores, item lvl 245 , probablemente en ToC revertir estos cambios


-- Cmpaoen Ros slai [Horda]
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=39173;

-- Mariscal Magruder [Alianza]
UPDATE `creature_template` SET `npcflag`='0' WHERE  `entry`=39172;

-- ===============================================
-- Delete/add items according to phase 2 in both vendores

-- Eliminar items de otros contenidos de Guardia de piedra Mutaha (32296)
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(32296,0,46057,0,0,2579,0),
(32296,0,46058,0,0,2579,0),
(32296,0,46059,0,0,2579,0),
(32296,0,46060,0,0,2579,0),
(32296,0,46061,0,0,2579,0),
(32296,0,46062,0,0,2579,0),
(32296,0,46063,0,0,2579,0),
(32296,0,46064,0,0,2579,0),
(32296,0,46065,0,0,2579,0),
(32296,0,46066,0,0,2579,0),
(32296,0,46071,0,0,2577,0),
(32296,0,46072,0,0,2577,0),
(32296,0,46073,0,0,2577,0),
(32296,0,46074,0,0,2577,0),
(32296,0,46075,0,0,2577,0),
(32296,0,46076,0,0,2577,0),
(32296,0,46077,0,0,2577,0),
(32296,0,46078,0,0,2577,0),
(32296,0,46079,0,0,2577,0),
(32296,0,46080,0,0,2577,0),
(32296,0,46081,0,0,2578,0),
(32296,0,46082,0,0,2578,0),
(32296,0,46083,0,0,2578,0),
(32296,0,46084,0,0,2578,0),
(32296,0,46085,0,0,2578,0),
(32296,0,46086,0,0,2578,0),
(32296,0,46087,0,0,2578,0),
(32296,0,46088,0,0,2578,0);


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
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 
(32294,0,46057,0,0,2579,0),
(32294,0,46058,0,0,2579,0),
(32294,0,46059,0,0,2579,0),
(32294,0,46060,0,0,2579,0),
(32294,0,46061,0,0,2579,0),
(32294,0,46062,0,0,2579,0),
(32294,0,46063,0,0,2579,0),
(32294,0,46064,0,0,2579,0),
(32294,0,46065,0,0,2579,0),
(32294,0,46066,0,0,2579,0),
(32294,0,46071,0,0,2577,0),
(32294,0,46072,0,0,2577,0),
(32294,0,46073,0,0,2577,0),
(32294,0,46074,0,0,2577,0),
(32294,0,46075,0,0,2577,0),
(32294,0,46076,0,0,2577,0),
(32294,0,46077,0,0,2577,0),
(32294,0,46078,0,0,2577,0),
(32294,0,46079,0,0,2577,0),
(32294,0,46080,0,0,2577,0),
(32294,0,46081,0,0,2578,0),
(32294,0,46082,0,0,2578,0),
(32294,0,46083,0,0,2578,0),
(32294,0,46084,0,0,2578,0),
(32294,0,46085,0,0,2578,0),
(32294,0,46086,0,0,2578,0),
(32294,0,46087,0,0,2578,0),
(32294,0,46088,0,0,2578,0);

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
