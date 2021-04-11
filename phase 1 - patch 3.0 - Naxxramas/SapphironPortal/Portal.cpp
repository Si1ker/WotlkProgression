/*
-- Written By Silker | https://github.com/Si1ker
These additions must be done in the original file at https://github.com/azerothcore/azerothcore-wotlk/blob/master/src/server/scripts/Northrend/Naxxramas/boss_sapphiron.cpp
*/

/* Part 1 ============================================================================ */

enum TeleporterSpell // Add this after the initial includes
{
    SPELL_SAPPHIRON_TELEPORT          = 72613
};

/* Part 2 ============================================================================ */

class at_sapphiron_entrance : public AreaTriggerScript // Add this after the "boss_naxxramas_misc" class
{
    public:
        at_sapphiron_entrance() : AreaTriggerScript("at_sapphiron_entrance") { }

        bool OnTrigger(Player* player, AreaTrigger const* /*areaTrigger*/)
        {
            if (player->IsInCombat())
            {
                if (SpellInfo const* spell = sSpellMgr->GetSpellInfo(SPELL_SAPPHIRON_TELEPORT))
                {
                    Spell::SendCastResult(player, spell, 0, SPELL_FAILED_AFFECTING_COMBAT);
                }
                return true;
            }
            if (InstanceScript* instance = player->GetInstanceScript())
            {
                if (instance->GetBossState(BOSS_THADDIUS) == DONE &&
                    instance->GetBossState(BOSS_LOATHEB) == DONE &&
                    instance->GetBossState(BOSS_MAEXXNA) == DONE &&
                    instance->GetBossState(BOSS_HORSEMAN) == DONE)
                {
                    player->CastSpell(player, SPELL_SAPPHIRON_TELEPORT, false);
                }
            }
            return true;
        }
};

/* Part 3 ============================================================================ */

/* Add "new at_sapphiron_entrance();"
Into AddSC_instance_naxxramas()
Example: */

void AddSC_instance_naxxramas()
{
    new instance_naxxramas();
    new boss_naxxramas_misc();
    new at_sapphiron_entrance(); // Added
}
