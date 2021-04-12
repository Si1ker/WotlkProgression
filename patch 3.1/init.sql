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

-- = = = = = = = = = = U L D U A R = = = = = = = = = =

-- - - - - - - - - - - The Siege of Ulduar - - - - - - - - - -

-- Flame Leviathan (10): 33113
UPDATE `reference_loot_template` SET `Item`='45624', `MinCount`='1', `MaxCount`='1' WHERE  `Entry`=34349 AND `Item`=47241;


-- Flame Leviathan (25): 34003
-- xxxx ????






-- =|=|=|=|=|=|=|=|=|=|

-- Ignis the Furnace Master (10): 33118
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33118 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33118 AND `Item`=45624;

-- Ignis the Furnace Master (25): 33190
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33190 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33190 AND `Item`=45624;

-- Razorscale (10): 33186
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33186 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33186 AND `Item`=45624;

-- Razorscale (25): 33724
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33724 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33724 AND `Item`=45624;

-- XT-002 Deconstructor (10): 33293
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33293 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33293 AND `Item`=45624;

-- XT-002 Deconstructor (25): 33885
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33885 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33885 AND `Item`=45624;

-- - - - - - - - - - - The Antechamber of Ulduar - - - - - - - - - -

-- - 0 - 0 - 0 - 0 - 0 - 0 - Assembly of Iron - 0 - 0 - 0 - 0 - 0 - 0 - 0 -
-- Steelbreaker (10): 32867
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=32867 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=32867 AND `Item`=45624;

-- Steelbreaker (25): 33693
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33693 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33693 AND `Item`=45624;

-- Runemaster Molgeim (10): 32927
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=32927 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=32927 AND `Item`=45624;

-- Runemaster Molgeim (25): 33692
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33692 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33692 AND `Item`=45624;

-- Stormcaller Brundir (10): 32857
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=32857 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=32857 AND `Item`=45624;

-- Stormcaller Brundir (25): 33694
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33694 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33694 AND `Item`=45624;

-- - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 - 0 -

-- Kologarn (10): 27061
UPDATE `gameobject_loot_template` SET `Item`=45624 WHERE `Entry`=27061 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=27061 AND `Item`=45624;

-- Kologarn (25): 26929
UPDATE `gameobject_loot_template` SET `Item`=45624 WHERE `Entry`=26929 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=26929 AND `Item`=45624;

-- Auriaya (10): 33515
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=33515 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=33515 AND `Item`=45624;

-- Auriaya (25): 34175
UPDATE `creature_loot_template` SET `Item`=45624 WHERE `Entry`=34175 AND `Item`=47241;
UPDATE `creature_loot_template` SET `MinCount`=2, `MaxCount`=2 WHERE  `Entry`=34175 AND `Item`=45624;

-- - - - - - - - - - - The Antechamber of Ulduar - - - - - - - - - -

-- Freya (10): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=26959 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=26961 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=27078 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=27080 AND `Item`=47241;

-- Freya (25): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=27081 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=27079 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=26962 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=26960 AND `Item`=47241;

-- Hodir (10): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27068 AND `Item`=47241;

-- Hodir (25): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=26946 AND `Item`=47241;

-- Mimiron (10): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27085 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27086 AND `Item`=47241;

-- Mimiron (25): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=26963 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=26967 AND `Item`=47241;

-- Thorim (10): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27073 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27074 AND `Item`=47241;

-- Thorim (25): 27061
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=26955 AND `Item`=47241;
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=26956 AND `Item`=47241;

--  - - - - - - - - - - The Descent into Madness - - - - - - - - - -

-- General Vezax (10): 33271
UPDATE `creature_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=33271 AND `Item`=47241;

-- General Vezax (25): 33449
UPDATE `creature_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=33449 AND `Item`=47241;

-- Yogg-Saron (10): 33288
UPDATE `creature_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=33288 AND `Item`=47241;

-- Yogg-Saron (25): 33955
UPDATE `creature_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=33955 AND `Item`=47241;

--  - - - - - - - - - - Celestial Planetarium - - - - - - - - - -

-- Algalon (10)
UPDATE `gameobject_loot_template` SET `Item`='45624', `MinCount`='2', `MaxCount`='2' WHERE  `Entry`=27030 AND `Item`=47241;

-- Algalon (25)
UPDATE `gameobject_loot_template` SET `Item`='45624' WHERE  `Entry`=26974 AND `Item`=47241;