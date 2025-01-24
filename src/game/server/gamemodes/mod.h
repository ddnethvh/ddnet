#ifndef GAME_SERVER_GAMEMODES_MOD_H
#define GAME_SERVER_GAMEMODES_MOD_H

#include "DDRace.h"

class CGameControllerMod : public CGameControllerDDRace
{
public:
	CGameControllerMod(class CGameContext *pGameServer);
	~CGameControllerMod();

	void Tick() override;
	void HandleCharacterTiles(class CCharacter *pChr, int MapIndex) override;
};
#endif // GAME_SERVER_GAMEMODES_MOD_H
