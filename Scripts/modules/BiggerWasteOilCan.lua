local UEHelpers = require("UEHelpers")
local config = require("config")

if config.ModsEnabled.WasteOilSizeInc == true then
    local function GetItemHoldingTransform(context)
        local OilCan = context:get()
        OilCan:SetPropertyValue("MaxCapacity", config.SizeModifiers.WasteOilCanSize)
    end
    RegisterHook('/Game/Blueprints/Gameplay/Restaurant/BP_WasteOilBarelLittle.BP_WasteOilBarelLittle_C:GetItemHoldingTransform', GetItemHoldingTransform)
end
if config.debug.listEnabledModules == true then
	print("Bigger Waste Oil Can Module Loaded")
end