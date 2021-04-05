
-- Tabla de emblemas
-- Emblema de heroísmo: 40752
-- Emblema de valor: 40753
-- Emblema de conquista: 45624
-- Emblema de triunfo: 47241
-- Emblema de escarcha: 49426

-- ---------------------------------------------------------------------------------------------

-- Esto cambia las recompensas de emblemas al completar una mazmorra del contenido de Woltk

-- ====  N O R M A L  ====

-- -------- Primera normal del dia, te lotea 2 emblemas de valor --------

UPDATE `quest_template` SET `RewardItem1`=40753 WHERE `ID`=24790;

-- -------- Despues de la primera normal del dia, te lotea 2 emblemas de heroismo --------

UPDATE `quest_template` SET `RewardItem1`=40752 WHERE `ID`=24791;


-- ====  H E R O I C  ====

-- -------- Primera heroica del dia, te lotea 2 emblemas de conquista --------

UPDATE `quest_template` SET `RewardItem1`=45624 WHERE `ID`=24788;

-- -------- Despues de la primera heroica del dia, te lotea 2 emblemas de valor --------

UPDATE `quest_template` SET `RewardItem1`=40753 WHERE `ID`=24789;
