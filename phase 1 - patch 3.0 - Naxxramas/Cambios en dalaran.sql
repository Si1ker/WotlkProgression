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
