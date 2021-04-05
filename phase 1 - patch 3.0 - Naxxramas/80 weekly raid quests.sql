
-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ------------------

-- NPC: Archmage Lan'dalock | 20735


-- ========
-- Phase 1
-- ========

-- Anub'Rekhan Must Die! | 24580
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24580;

-- Instructor Razuvious Must Die! | 24582
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24582;

-- Malygos Must Die! | 24584
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24584;

-- Noth the Plaguebringer Must Die! | 24581
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24581;

-- Patchwerk Must Die! | 24583
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24583;

-- Sartharion Must Die! | 24579
UPDATE `quest_template` SET `RewardItem1`='40753', `RewardItem2`='40752' WHERE  `ID`=24579;


-- ========
-- Phase 2 (Disabled)
-- ========

-- Flame Leviathan Must Die! | 24585
DELETE FROM `quest_template` WHERE  `ID`=24585;

-- Ignis the Furnace Master Must Die! | 24587
DELETE FROM `quest_template` WHERE  `ID`=24587;

-- Razorscale Must Die! | 24586
DELETE FROM `quest_template` WHERE  `ID`=24586;

-- XT-002 Deconstructor Must Die! | 24588
DELETE FROM `quest_template` WHERE  `ID`=24588;


-- ========
-- Phase 3 (Disabled)
-- ========

-- Lord Jaraxxus Must Die! | 24589
DELETE FROM `quest_template` WHERE  `ID`=24589;


-- ========
-- Phase 4 (Disabled)
-- ========

-- Lord Marrowgar Must Die! | 24590
DELETE FROM `quest_template` WHERE  `ID`=24590;
