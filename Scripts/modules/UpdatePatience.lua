local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.UpdatePatience then
    local function PatienceUpdate(context)
        return 1
    end
    RegisterHook('/Game/Blueprints/Gameplay/DriveThru/BP_DriveThruCar.BP_DriveThruCar_C:UpdatePatience', PatienceUpdate)
end
if config.debug.listEnabledModules then
	print("Paitence Module Loaded")
end