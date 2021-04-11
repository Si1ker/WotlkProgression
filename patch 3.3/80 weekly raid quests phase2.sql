
-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ------------------

-- NPC: Archmage Lan'dalock | 20735


-- ========
-- Phase 2
-- ========

-- Anub'Rekhan Must Die! | 24580
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24580;

-- Instructor Razuvious Must Die! | 24582
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24582;

-- Malygos Must Die! | 24584
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24584;

-- Noth the Plaguebringer Must Die! | 24581
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24581;

-- Patchwerk Must Die! | 24583
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24583;

-- Sartharion Must Die! | 24579
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24579;



-- Delete's

-- Flame Leviathan Must Die! | 24585
DELETE FROM `quest_template` WHERE  `ID`=24585;
-- Ignis the Furnace Master Must Die! | 24587
DELETE FROM `quest_template` WHERE  `ID`=24587;
-- Razorscale Must Die! | 24586
DELETE FROM `quest_template` WHERE  `ID`=24586;
-- XT-002 Deconstructor Must Die! | 24588
DELETE FROM `quest_template` WHERE  `ID`=24588;


-- = Reenable quests =

INSERT INTO `quest_template` (`ID`, `QuestType`, `QuestLevel`, `MinLevel`, `QuestSortID`, `QuestInfoID`, `SuggestedGroupNum`, `RequiredFactionId1`, `RequiredFactionId2`, `RequiredFactionValue1`, `RequiredFactionValue2`, `RewardNextQuest`, `RewardXPDifficulty`, `RewardMoney`, `RewardBonusMoney`, `RewardDisplaySpell`, `RewardSpell`, `RewardHonor`, `RewardKillHonor`, `StartItem`, `Flags`, `RequiredPlayerKills`, `RewardItem1`, `RewardAmount1`, `RewardItem2`, `RewardAmount2`, `RewardItem3`, `RewardAmount3`, `RewardItem4`, `RewardAmount4`, `ItemDrop1`, `ItemDropQuantity1`, `ItemDrop2`, `ItemDropQuantity2`, `ItemDrop3`, `ItemDropQuantity3`, `ItemDrop4`, `ItemDropQuantity4`, `RewardChoiceItemID1`, `RewardChoiceItemQuantity1`, `RewardChoiceItemID2`, `RewardChoiceItemQuantity2`, `RewardChoiceItemID3`, `RewardChoiceItemQuantity3`, `RewardChoiceItemID4`, `RewardChoiceItemQuantity4`, `RewardChoiceItemID5`, `RewardChoiceItemQuantity5`, `RewardChoiceItemID6`, `RewardChoiceItemQuantity6`, `POIContinent`, `POIx`, `POIy`, `POIPriority`, `RewardTitle`, `RewardTalents`, `RewardArenaPoints`, `RewardFactionID1`, `RewardFactionValue1`, `RewardFactionOverride1`, `RewardFactionID2`, `RewardFactionValue2`, `RewardFactionOverride2`, `RewardFactionID3`, `RewardFactionValue3`, `RewardFactionOverride3`, `RewardFactionID4`, `RewardFactionValue4`, `RewardFactionOverride4`, `RewardFactionID5`, `RewardFactionValue5`, `RewardFactionOverride5`, `TimeAllowed`, `AllowableRaces`, `LogTitle`, `LogDescription`, `QuestDescription`, `AreaDescription`, `QuestCompletionLog`, `RequiredNpcOrGo1`, `RequiredNpcOrGo2`, `RequiredNpcOrGo3`, `RequiredNpcOrGo4`, `RequiredNpcOrGoCount1`, `RequiredNpcOrGoCount2`, `RequiredNpcOrGoCount3`, `RequiredNpcOrGoCount4`, `RequiredItemId1`, `RequiredItemId2`, `RequiredItemId3`, `RequiredItemId4`, `RequiredItemId5`, `RequiredItemId6`, `RequiredItemCount1`, `RequiredItemCount2`, `RequiredItemCount3`, `RequiredItemCount4`, `RequiredItemCount5`, `RequiredItemCount6`, `Unknown0`, `ObjectiveText1`, `ObjectiveText2`, `ObjectiveText3`, `ObjectiveText4`, `VerifiedBuild`) VALUES 
-- Flame Leviathan Must Die! | 24585
(24585,2,80,80,4273,62,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,32968,0,49426,5,47241,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1090,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Flame Leviathan Must Die!','Kill Flame Leviathan.$B$BThis quest can be completed with any difficulty or size raid.','Within the Formation Grounds sits Ulduar\'s first line of defense: Flame Leviathan.$B$BThe Kirin Tor have been provided with information suggesting that this Keeper-created machine is soon to be transported to an undisclosed location and let loose to wreak havoc upon the mortals of Azeroth.$B$BThis must not come to pass. The Council of Six has decreed that Flame Leviathan must die!','','Return to Archmage Lan\'dalock in Dalaran.',33113,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',12340),

-- Ignis the Furnace Master Must Die! | 24587
(24587,2,80,80,4273,62,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,32968,0,49426,5,47241,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1090,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Ignis the Furnace Master Must Die!','Kill Ignis the Furnace Master.$B$BThis quest can be completed with any difficulty or size raid.','The great fire giant, Ignis the Furnace Master toils away inside of Ulduar\'s Colossal Forge. Under orders from Loken, Ignis creates weapons that are terrifying in their power.$B$BThe Council of Six has decreed that Ignis must die!','','Return to Archmage Lan\'dalock in Dalaran.',33118,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',12340),

-- Razorscale Must Die! | 24586
(24586,2,80,80,4273,62,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,32968,0,49426,5,47241,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1090,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Razorscale Must Die!','Kill Razorscale.$B$BThis quest can be completed with any difficulty or size raid.','Razorscale normally keeps to her aerie near the Colossal Forge in Ulduar. Of late, however, she has been spotted reigning fire down upon lands outside of the titan complex.$B$BThough the broodmother\'s is a sad tale, she poses an imminent threat to all of Northrend. The Council of Six has decreed that Razorscale must die!','','Return to Archmage Lan\'dalock in Dalaran.',33186,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',12340),

-- XT-002 Deconstructor Must Die! | 24588
(24588,2,80,80,4273,62,0,0,0,0,0,0,0,296000,0,0,0,0,0,0,32968,0,49426,5,47241,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1090,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'XT-002 Deconstructor Must Die!','Kill XT-002 Deconstructor.$B$BThis quest can be completed with any difficulty or size raid.','Yet another strange construct of Mimiron, the XT-002 Deconstructor actually thinks that it is the keeper\'s son. Do not be fooled by its feigned innocence. It is a deadly machine!$B$BYou will find the Deconstructor within Ulduar\'s Scrapyard. The Council of Six has decreed that XT-002 Deconstructor must die!','','Return to Archmage Lan\'dalock in Dalaran.',33293,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'','','','',12340);

-- = Adjust rewards for recenlty added quests =

-- Flame Leviathan Must Die! | 24585
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24585;
-- Ignis the Furnace Master Must Die! | 24587
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24587;
-- Razorscale Must Die! | 24586
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24586;
-- XT-002 Deconstructor Must Die! | 24588
UPDATE `quest_template` SET `RewardItem1`='45624', `RewardItem2`='40753' WHERE  `ID`=24588;






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
