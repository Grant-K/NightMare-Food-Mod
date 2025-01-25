local UEHelpers = require("UEHelpers")
local config = require("config")


if config.ModsEnabled.FastWalkSpeed then
	local function setServerWalkingSpeed()
			local findAllAI = FindAllOf("CharacterMovementComponent")
			local busserPattern = "CharacterMovementComponent /Game/Levels/BakeryLevel_World%.BakeryLevel_World:PersistentLevel%.BP_Player_AI_Busser_C_%d+%.CharMoveComp"
			local serverPattern = "CharacterMovementComponent /Game/Levels/BakeryLevel_World%.BakeryLevel_World:PersistentLevel%.BP_Player_AI_Server_C_%d+%.CharMoveComp"
			for _, aiCharacter in pairs(findAllAI) do
				local fullName = aiCharacter:GetFullName()
				--if(debuggingPrints)
				--	print(fullName)
				--end
				if fullName:match(busserPattern) or fullName:match(serverPattern) then
					aiCharacter:SetPropertyValue("MaxWalkSpeed", config.SpeedSettings.WalkSpeed)
				end
			end

	end
	setServerWalkingSpeed()  
end
if config.debug.listEnabledModules then
	print("Increased Ai Walk Speed Loaded Module Loaded")
end
