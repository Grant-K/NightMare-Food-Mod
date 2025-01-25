local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.FastSpawningDriveThru == true then
    RegisterHook("/Game/Blueprints/Gameplay/CustomerQueue/BP_CustomerManager.BP_CustomerManager_C:GenerateDriveThruSpawnCooldown", function(context)
		print("Debug")
        return config.SpeedSettings.DriveSpawnSpeed
    end)
end
if config.debug.listEnabledModules == true then
	print("Fast Drive Thru Spawning Module Loaded")
end