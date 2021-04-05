
-- == Tabla de emblemas ==
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- --------------------------------------------

-- Buscar boss de 25 basado en ID original de 10. El difficulty_entry_1 es el ID del boss en 25
-- SELECT Entry,name,difficulty_entry_1 from creature_template where Entry=Boss 10ID;


-- Esto cambia los emblemas que lotea cada boss en contenido heroico de woltk de triunfo a heroismo

-- - - - - - - - - Ahn kahet: The Old Kingdom - - - - - - - -

-- Amanitar: 31463
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31463 AND `Item`=47241;

-- Elder Nadox: 31456
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31456 AND `Item`=47241;

-- Herald Volazj: 31464
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31464 AND `Item`=47241;

-- Jedoga Shadowseeker: 31465
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31465 AND `Item`=47241;

-- Prince Taldaram: 31469
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31469 AND `Item`=47241;




--  - - - - - - - - Azjol-Nerub - - - - - - - -

-- Anub arak: 31610
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31610 AND `Item`=47241;

-- Hadronox: 31611
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31611 AND `Item`=47241;

-- Krik thir the Gatewatcher: 31612
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31612 AND `Item`=47241;




--  - - - - - - - - Drak Tharon Keep - - - - - - - -

-- King Dred: 31349
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31349 AND `Item`=47241;

-- Novos the Summoner: 31350
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31350 AND `Item`=47241;

-- Trollgore: 26630
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=26630 AND `Item`=47241;




--  - - - - - - - - Gundrak - - - - - - - -

-- Gal darah: 31368
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31368 AND `Item`=47241;

-- Moorabi: 30530
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30530 AND `Item`=47241;

-- Slad ran : 31370
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31370 AND `Item`=47241;

-- Drakkari Elemental: 31367
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31367 AND `Item`=47241;

-- Eck the Ferocious: 29932
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=29932 AND `Item`=47241;




--  - - - - - - - - Halls of Lightning - - - - - - - -

-- General Bjarngrim: 31533
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31533 AND `Item`=47241;

-- Ionar: 31537
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31537 AND `Item`=47241;

-- Loken: 31538
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31538 AND `Item`=47241;

-- Volkhan: 31536
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31536 AND `Item`=47241;




--  - - - - - - - - Halls of Stone - - - - - - - -

-- Krystallus: 31381
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31381 AND `Item`=47241;

-- Maiden of Grief: 31384
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31384 AND `Item`=47241;

-- Sjonnir The Ironshaper: 31386
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31386 AND `Item`=47241;

-- Tribunal Chest: 26260 (gameobject_loot_template)
UPDATE `gameobject_loot_template` SET `Item`=40753 WHERE `Entry`=26260 AND `Item`=47241;




--  - - - - - - - - The Culling of Stratholme - - - - - - - -

-- Meathook: 31211
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31211 AND `Item`=47241;

-- Salramm the Fleshcrafter: 31212
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31212 AND `Item`=47241;

-- Chrono-Lord Epoch: 31215
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31215 AND `Item`=47241;

-- Infinite Corruptor: 32313
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=32313 AND `Item`=47241;

-- Mal Ganis (Dark Runed chest) : 24589
UPDATE `gameobject_loot_template` SET `Item`=40753 WHERE `Entry`=24589 AND `Item`=47241;




--  - - - - - - - - The Nexus - - - - - - - -

-- Anomalus: 30529
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30529 AND `Item`=47241;

-- Commander Stoutbeard: 30398
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30398 AND `Item`=47241;

-- Commander Kolurg: 30397
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30397 AND `Item`=47241;

-- Grand Magus Telestra: 30510
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30510 AND `Item`=47241;

-- Keristrasza: 30540
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30540 AND `Item`=47241;

-- Ormorok the Tree-Shaper: 30532
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30532 AND `Item`=47241;




-- - - - - - - - - The Oculus - - - - - - - -

-- Varos Cloudstrider: 31559
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31559 AND `Item`=47241;

-- Mage-Lord Urom: 31560
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31560 AND `Item`=47241;

-- Ley-Guardian Eregos (Cache of Eregos) : 24524
UPDATE `gameobject_loot_template` SET `Item`=40753 WHERE `Entry`=24524 AND `Item`=47241;

-- Drakos the Interrogator: 31558
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31558 AND `Item`=47241;




-- - - - - - - - - Utgarde Keep - - - - - - - -

-- Prince Keleseth: 30748
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30748 AND `Item`=47241;

-- Skarvald the Constructor: 31679
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31679 AND `Item`=47241;

-- Dalronn the Controller: 31656
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31656 AND `Item`=47241;

-- Ingvar the Plunderer: 31673
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31673 AND `Item`=47241;




-- - - - - - - - - Utgarde Pinnacle - - - - - - - -

-- Svala Sorrowgrave: 30810
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30810 AND `Item`=47241;

-- Gortok Palehoof: 30774
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30774 AND `Item`=47241;

-- Skadi the Ruthless: 30807
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30807 AND `Item`=47241;

-- King Ymiron: 30788
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=30788 AND `Item`=47241;




-- - - - - - - - - The Violet Hold - - - - - - - -

-- Erekem: 31507
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31507 AND `Item`=47241;

-- Moragg: 31510
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31510 AND `Item`=47241;

-- Ichoron: 31508
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31508 AND `Item`=47241;

-- Xevozz: 31511
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31511 AND `Item`=47241;

-- Lavanthor: 31509
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31509 AND `Item`=47241;

-- Zuramat the Obliterator: 31512
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31512 AND `Item`=47241;

-- Cyanigosa: 31506
UPDATE `creature_loot_template` SET `Item`=40753 WHERE `Entry`=31506 AND `Item`=47241;