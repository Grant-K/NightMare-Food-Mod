local UEHelpers = require("UEHelpers")
local config = require("config")

local SauceBottleSize = {}

if config.ModsEnabled.IncreaseConBottleSize then
	local function LocateCondimentBottles()
		local ListOfCondimnetBottles = FindAllOf("BP_SauceBottle_C")
		print ("Condiment Bottles", ListOfCondimnetBottles)
		if ListOfCondimnetBottles then
			return ListOfCondimnetBottles
		else
			return nil
				print("ERROR VALUE NIL")
		end
	end

	local function ConvertToID(condiment)
		local condimentName = condiment:GetFullName()
		local condimentID = condimentName:match("BP_SauceBottle_C_([%d]+)$")
		return condimentID
	end

	local function ChangeSize()
		local condimentBottles = LocateCondimentBottles()
		 for _, condiment in pairs(condimentBottles) do
			if config.debug.debuggingPrints then
				print("tableList", condiment)
			end
			local ConID = ConvertToID(condiment)
			if config.debug.debuggingPrints then
				print("CondID:", ConID)
			end
			local currentMaxSize = condiment:GetPropertyValue("MaxSauceCount")
			if config.debug.debuggingPrints then	
				print("Old Max Size", currentMaxSize)
			end
			condiment:SetPropertyValue("MaxSauceCount", config.SizeModifiers.ConBottleSize)
			currentMaxSize = condiment:GetPropertyValue("MaxSauceCount")
			if config.debug.debuggingPrints then
				print("New Max Size", currentMaxSize)
			end
			
		end
	end
	ChangeSize()

	if config.debug.listEnabledModules == true then
		print("CondimentBottleSize Module Loaded")
	end
end
	 