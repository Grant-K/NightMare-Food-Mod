local UEHelpers = require("UEHelpers")
local config = require("config")

local SauceBottleSize = {}

local function LocateCondimentBottles()
    local ListOfCondimnetBottles = FindAllOf("BP_SauceBottle_C")
	print ("Condiment Bottles", ListOfCondimnetBottles)
    if ListOfCondimnetBottles then
        return ListOfCondimnetBottles
    else
        return nil
		--print("ERROR VALUE NIL")
    end
end

local function ConvertToID(condiment)
    local condimentName = condiment:GetFullName()
    local condimentID = condimentName:match("BP_SauceBottle_C_([%d]+)$")
    return condimentID
end
--LocateCondimentBottles()
local function ChangeSize()
	local condimentBottles = LocateCondimentBottles()
	 for _, condiment in pairs(condimentBottles) do
		print("tableList", condiment)
		local ConID = ConvertToID(condiment)
		print("CondID:", ConID)
		local currentMaxSize = condiment:GetPropertyValue("MaxSauceCount")
		print("Old Max Size", currentMaxSize)
		condiment:SetPropertyValue("MaxSauceCount", 30)
		currentMaxSize = condiment:GetPropertyValue("MaxSauceCount")
		print("New Max Size", currentMaxSize)
		
	end
end
ChangeSize()

if config.debug.listEnabledModules == true then
	print("CondimentBottleSize Module Loaded")
end

	 