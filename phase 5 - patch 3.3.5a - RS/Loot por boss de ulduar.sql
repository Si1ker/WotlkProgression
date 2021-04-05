
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