#include "ScriptMgr.h"
#include "Player.h"
#include "Config.h"
#include "Chat.h"

enum AreaID
{
    AREA_TORNEO_ARGENTA     = 4658,
    AREA_LIZA_CAMPEONES     = 4669,
    AREA_LIZA_VALEROSOS     = 4671,
    AREA_LIZA_VALEROSOS_ALI = 4672,
    AREA_LIZA_VALEROSOS_HOR = 4673,
    AREA_LIZA_ASPIRANTES    = 4670,
    AREA_PABELLON_PACTO     = 4667,
    AREA_ATRACASOL          = 4666,
    AREA_PABELLON_ARGENTA   = 4674
};

/*
[23:33:20] Map: 571 (Northrend) Zone: 210 (Icecrown) Area: 4692 (Quel'Delar's rest) Phase: 4294967295
[23:33:20] X: 8166.394531 Y: 796.572998 Z: 484.379822 Orientation: 5.639946
*/

class ArgentTournament : public PlayerScript
{
public:

    ArgentTournament() : PlayerScript("ArgentTournament") { }

    void OnUpdateArea(Player* player, uint32 /*oldArea*/, uint32 newArea)
    {
        if (!player || player->IsGameMaster())
            return;

        if (newArea == AREA_TORNEO_ARGENTA || newArea == AREA_LIZA_CAMPEONES || newArea == AREA_LIZA_VALEROSOS || newArea == AREA_LIZA_VALEROSOS_ALI ||
            newArea == AREA_LIZA_VALEROSOS_HOR || newArea == AREA_LIZA_ASPIRANTES || newArea == AREA_PABELLON_PACTO || newArea == AREA_ATRACASOL || newArea == AREA_PABELLON_ARGENTA)
            player->TeleportTo(571, 8166.394531, 796.572998, 484.379822, 5.639946);
    }
};

void AddArgentTournamentScripts() {
    new ArgentTournament();
}
