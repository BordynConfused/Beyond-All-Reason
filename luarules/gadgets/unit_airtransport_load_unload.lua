
function gadget:GetInfo()
   return {
	  name = "Load/unload",
	  desc = "Sets up a constant 10 or 15 elmos load/unload radius for air transports and allows unload as soon as distance is reached (104.0.1 - maintenace 686+)",
	  author = "Doo",
	  date = "2018",
	  license = "PD",
	  layer = 0,
	  enabled = true,
   }
end

--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

local isAirTransport = {}
for udefID,def in ipairs(UnitDefs) do
	if def.canFly and def.isTransport then
		isAirTransport[udefID] = true
	end
end


if (gadgetHandler:IsSyncedCode()) then

	local math_sqrt = math.sqrt

	function gadget:Distance(pos1, pos2)
		local difX = pos1[1] - pos2[1]
		local difY = pos1[2] - pos2[2]
		local difZ = pos1[3] - pos2[3]
		local sqDist = difX*difX + difY*difY + difZ*difZ
		local dist = math_sqrt(sqDist)
		return (dist)
	end

	function gadget:AllowUnitTransportLoad(transporterID, transporterUnitDefID, transporterTeam, transporteeID, transporteeUnitDefID, transporteeTeam, goalX, goalY, goalZ)
		if isAirTransport[transporterUnitDefID] then
			--local terDefs = UnitDefs[transporterUnitDefID]
			--local teeDefs = UnitDefs[transporteeUnitDefID]
			local pos1 = {Spring.GetUnitPosition(transporterID)}
			local pos2 = {goalX, goalY, goalZ}
			if gadget:Distance(pos1, pos2) <= isAirTransport[transporterUnitDefID] then
				Spring.SetUnitVelocity(transporterID, 0,0,0)
				return true
			else
				return false
			end			
		else
			return true
		end
	end
	
	function gadget:AllowUnitTransportUnload(transporterID, transporterUnitDefID, transporterTeam, transporteeID, transporteeUnitDefID, transporteeTeam, goalX, goalY, goalZ)
		if isAirTransport[transporterUnitDefID] then
			--local terDefs = UnitDefs[transporterUnitDefID]
			--local teeDefs = UnitDefs[transporteeUnitDefID]
			local pos1 = {Spring.GetUnitPosition(transporterID)}
			local pos2 = {goalX, goalY, goalZ}
			if gadget:Distance(pos1, pos2) <= isAirTransport[transporterUnitDefID] then
				Spring.SetUnitVelocity(transporterID, 0,0,0)
				return true
			else
				return false
			end
		else
			return true
		end
	end
end