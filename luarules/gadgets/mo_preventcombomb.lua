--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

function gadget:GetInfo()
  return {
    name      = "preventcombomb",
    desc      = "Commanders survive commander blast and DGun",
    author    = "TheFatController",
    date      = "Aug 31, 2009",
    license   = "GNU GPL, v2 or later",
    layer     = 0,
    enabled   = true  --  loaded by default?
  }
end


if not gadgetHandler:IsSyncedCode() then
	return false
end

local GetTeamInfo = Spring.GetTeamInfo
local GetUnitPosition = Spring.GetUnitPosition
local GetGroundHeight = Spring.GetGroundHeight
local MoveCtrl = Spring.MoveCtrl
local GetGameFrame = Spring.GetGameFrame
local DestroyUnit = Spring.DestroyUnit
local UnitTeam = Spring.GetUnitTeam

local immuneDgunList = {}
local ctrlCom = {}
local cantFall = {}

local COM_BLAST = WeaponDefNames['commanderexplosion'].id

local isCommander = {}
for udefID,def in ipairs(UnitDefs) do
	if def.customParams and def.customParams.iscommander then
		isCommander[udefID] = true
	end
end
local isDGUN = {}
for udefID,_ in ipairs(isCommander) do
	if WeaponDefNames[ UnitDefs[ udefID ].name..'_disintegrator' ] then
		isDGUN[ WeaponDefNames[ UnitDefs[udefID].name..'_disintegrator' ].id ] = true
	else
		Spring.Echo('ERROR: preventcombomb: No disintegrator weapon found for: '..UnitDefs[udefID].name)
		isCommander[udefID] = nil
	end
end


function CommCount(unitTeam)

	local allyteamlist = Spring.GetAllyTeamList()
	local teamsInAllyID = {}

	for ct, allyTeamID in pairs(allyteamlist) do
		teamsInAllyID[allyTeamID] = Spring.GetTeamList(allyTeamID) -- [1] = teamID,
	end
	-- Spring.Echo(teamsInAllyID[currentAllyTeamID])
	local count = 0
	for _, teamID in pairs(teamsInAllyID[select(6,GetTeamInfo(unitTeam,false))]) do -- [_] = teamID,
		count = count + Spring.GetTeamUnitDefCount(teamID, UnitDefNames["armcom"].id) + Spring.GetTeamUnitDefCount(teamID, UnitDefNames["corcom"].id)
	end
	-- Spring.Echo(currentAllyTeamID..","..count)
	return count
end


function gadget:UnitPreDamaged(unitID, unitDefID, unitTeam, damage, paralyzer, weaponID, projectileID, attackerID, attackerDefID, attackerTeam)
	--falling & debris damage
	if weaponID < 0 and cantFall[unitID] then
		return 0, 0
	end
	
	local hp,_ = Spring.GetUnitHealth(unitID) 
	hp = hp or 0
	local combombDamage = math.min(hp*0.33, math.max(0,hp-200-math.random(1,10))) -- lose hp*0.4 damage but don't let health get <200
	combombDamage = math.min(damage,combombDamage) 
	
	if isDGUN[weaponID] then
		if immuneDgunList[unitID] then
			-- immune
			return 0, 0
		elseif (isCommander[attackerDefID] and isCommander[unitDefID]) and ((CommCount(UnitTeam(unitID)) <= 1) and (CommCount(UnitTeam(attackerID)) <= 1)) then
			-- make unitID immune to DGun, kill attackedID
			immuneDgunList[unitID] = GetGameFrame() + 45
			DestroyUnit(attackerID,false,false,unitID)
			return combombDamage, 0
		end
	elseif (weaponID == COM_BLAST and isCommander[unitDefID]) and ((CommCount(UnitTeam(unitID)) <= 1) and (CommCount(UnitTeam(attackerID)) <= 1)) then
		if unitID ~= attackerID then
			-- make unitID immune to DGun
			immuneDgunList[unitID] = GetGameFrame() + 45
			--prevent falling damage to the unitID, and lock position
			MoveCtrl.Enable(unitID)
			ctrlCom[unitID] = GetGameFrame() + 30
			cantFall[unitID] = GetGameFrame() + 30
			return combombDamage, 0
		else
			--com blast hurts the attackerID 
			return damage
		end
	end
	
	return damage
end


function gadget:GameFrame(currentFrame)
	for unitID,expirationTime in pairs(immuneDgunList) do
		if currentFrame > expirationTime then
			immuneDgunList[unitID] = nil
		end
	end
	for unitID,expirationTime in pairs(ctrlCom) do
		if currentFrame > expirationTime then
			--if the game was actually a draw then this unitID is not valid anymore
			--if that is the case then just remove it from the cantFall list and clear the ctrlCom flag
			local x,_,z = GetUnitPosition(unitID)
			if x then
				local y = GetGroundHeight(x,z)
				MoveCtrl.SetPosition(unitID, x,y,z)
				MoveCtrl.Disable(unitID)
				cantFall[unitID] = currentFrame + 220
			else
				cantFall[unitID] = nil
			end

			ctrlCom[unitID] = nil
		end
	end
	for unitID,expirationTime in pairs(cantFall) do
		if currentFrame > expirationTime then
			cantFall[unitID] = nil
		end
	end
end

