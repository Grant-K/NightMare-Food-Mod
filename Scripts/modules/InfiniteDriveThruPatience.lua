local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.InfiniteDriveThruPatience == true then
    local function HasRunOutOfPatience(context)
        return false
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:HasRunOutOfPatience', HasRunOutOfPatience)
end
if config.debug.listEnabledModules == true then
	print("Infinite Drive Thru Patience Module Loaded")
end