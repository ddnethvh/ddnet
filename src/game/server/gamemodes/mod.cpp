#include "mod.h"
#include <engine/shared/config.h>

#define GAME_TYPE_NAME "DD.HvH"

CGameControllerMod::CGameControllerMod(class CGameContext *pGameServer) :
	CGameControllerDDRace(pGameServer)
{
	// Set the game type name
	m_pGameType = GAME_TYPE_NAME;
	
	// Keep the race game flag from DDRace
	m_GameFlags = protocol7::GAMEFLAG_RACE;
}

CGameControllerMod::~CGameControllerMod() = default;

void CGameControllerMod::Tick()
{
	CGameControllerDDRace::Tick();
}

void CGameControllerMod::HandleCharacterTiles(CCharacter *pChr, int MapIndex)
{
	CGameControllerDDRace::HandleCharacterTiles(pChr, MapIndex);
}
