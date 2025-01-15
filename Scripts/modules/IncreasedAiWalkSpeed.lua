local UEHelpers = require("UEHelpers")
local config = require("config")


if config.ModsEnabled.FastWalkSpeed then
    local function OnSpawn(player)
        local ServerWalkSpeed = player:GetPropertyValue("CharacterMovement")
        if ServerWalkSpeed then
            ServerWalkSpeed:SetPropertyValue("MaxWalkSpeed", config.SpeedSettings.WalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Server/BP_Player_AI_Server.BP_Player_AI_Server_C', OnSpawn)
	local function OnSpawn(player)
        local BusserWalkSpeed = player:GetPropertyValue("CharacterMovement")
        if BusserWalkSpeed then
           BusserWalkSpeed:SetPropertyValue("MaxWalkSpeed", config.SpeedSettings.WalkSpeed)
        end
    end
    NotifyOnNewObject('/Game/Blueprints/Characters/Player/AI_Busser/BP_Player_AI_Busser.BP_Player_AI_Busser_C', OnSpawn)
end
if config.debug.listEnabledModules then
	print("Increased Ai Walk Speed Loaded Module Loaded")
end