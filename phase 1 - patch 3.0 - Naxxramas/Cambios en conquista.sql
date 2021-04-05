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
