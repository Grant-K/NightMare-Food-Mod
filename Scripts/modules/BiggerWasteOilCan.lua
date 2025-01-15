local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.WasteOilSizeInc == true then
    local function GetItemHoldingTransform(context)
        local wasteOilSize = context:get()
        wasteOilSize:SetPropertyValue("MaxCapacity", config.SizeModifiers.WasteOilCanSize)
    end
    RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_WasteOilBarelLittle.BP_WasteOilBarelLittle_C:GetItemHoldingTransform', GetItemHoldingTransform)
end
if config.debug.listEnabledModules == true then
	print("Bigger Waste Oil Can Module Loaded")
end