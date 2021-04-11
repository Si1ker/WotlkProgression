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

-- ==========================================
-- This will reenable the vendor capability on Timothy Jones (28701) to let him sell epic gems recipes (+20) by adding the npcflag 128 back
UPDATE `creature_template` SET `npcflag`='211' WHERE `entry`=28701;


-- ==========================================
-- This will place again the epic matts instead the tbc matts
-- epic matts // tbc matts
-- 36919 | 36918
-- 36922 | 36921
-- 36925 | 36924
-- 36928 | 36927
-- 36931 | 36930
-- 36934 | 36933

UPDATE `npc_vendor` SET `item`='36919' WHERE  `entry`=32172 AND `item`=36918 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36922' WHERE  `entry`=32172 AND `item`=36921 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36925' WHERE  `entry`=32172 AND `item`=36924 AND `ExtendedCost`=2706;
UPDATE `npc_vendor` SET `item`='36928' WHERE  `entry`=32172 AND `item`=36927 AND `ExtendedCost`=2484;
UPDATE `npc_vendor` SET `item`='36931' WHERE  `entry`=32172 AND `item`=36930 AND `ExtendedCost`=2484;
UPDATE `npc_vendor` SET `item`='36934' WHERE  `entry`=32172 AND `item`=36933 AND `ExtendedCost`=2484;


-- ==========================================
-- This will place the epic matts instead the tbc matts on Honor vendors at stormwind and orgrimmar

UPDATE `npc_vendor` SET `item`='36919' WHERE  `entry`=34040 AND `item`=36918 AND `ExtendedCost`=2588;
UPDATE `npc_vendor` SET `item`='36922' WHERE  `entry`=34040 AND `item`=36921 AND `ExtendedCost`=2588;
UPDATE `npc_vendor` SET `item`='36925' WHERE  `entry`=34040 AND `item`=36924 AND `ExtendedCost`=2588;
UPDATE `npc_vendor` SET `item`='36928' WHERE  `entry`=34040 AND `item`=36927 AND `ExtendedCost`=2588;
UPDATE `npc_vendor` SET `item`='36931' WHERE  `entry`=34040 AND `item`=36930 AND `ExtendedCost`=2588;
UPDATE `npc_vendor` SET `item`='36934' WHERE  `entry`=34040 AND `item`=36933 AND `ExtendedCost`=2588;

-- ==========================================
-- = Reenable gear 226 from kirintor vendor =
INSERT INTO `npc_vendor` (`entry`, `slot`, `item`, `maxcount`, `incrtime`, `ExtendedCost`, `VerifiedBuild`) VALUES 


-- 45823
('32172', '0', '45823', '0', '0', '2606', '0'),
-- 45822
('32172', '0', '45822', '0', '0', '2606', '0'),
-- 45821
('32172', '0', '45821', '0', '0', '2606', '0'),
-- 45820
('32172', '0', '45820', '0', '0', '2606', '0'),
-- 45819
('32172', '0', '45819', '0', '0', '2606', '0'),


-- = Reenable rings 213 from kirintor =

-- 45691
('32172', '0', '45691', '0', '0', '2595', '0'),
-- 45690
('32172', '0', '45690', '0', '0', '2594', '0'),
-- 45689
('32172', '0', '45689', '0', '0', '2593', '0'),
-- 45688
('32172', '0', '45688', '0', '0', '2592', '0');
-- ============================================



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
