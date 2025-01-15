local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.FastSpawningDriveThru then
    RegisterHook("/Game/Blueprints/Gameplay/CustomerQueue/BP_CustomerManager.BP_CustomerManager_C:GenerateDriveThruSpawnCooldown", function(context)
		if config.debug.debuggingPrints then
			print(getDriveThruSpawnCooldown())
		end
        return config.SpeedSettings.DriveSpawnSpeed
    end)
end
if config.debug.listEnabledModules then
	print("Fast Drive Thru Spawning Module Loaded")
end