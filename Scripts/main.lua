local UEHelpers = require("UEHelpers")
local config = require("config")

print("Loading NightMare Food mod")

local function loadMod()

	print("Now Loading Modules...")
	
	require 'modules/BiggerWasteOilCan'
	require 'modules/FastDriveThruSpawning'
	require 'modules/IncreasedAiWalkSpeed'
	require 'modules/InfiniteDriveThruPatience'
	require 'modules/CondimentBottleSize'
	require 'modules/CoffeeAndMilk'
	require 'modules/IncreasedAiWalkSpeed'

end
local isModRunning = false
--print (isModRunning) Used for Debguing
LoopAsync(5000, function()
	-- print("Looping") Used for Debuging
    if isModRunning == true then
        return
    end

	local WorldLoaded = FindFirstOf('BP_BakeryGameState_Ingame_C')

    if WorldLoaded == nil then
           loadMod()
		   print("Loading Mod")
		   return
    end
	
	local WorldAlreadyOn = WorldLoaded:GetPropertyValue('bIsRestaurantRunning')
    if WorldAlreadyOn ~= false then
        return
    end

	loadMod()
    isModRunning = true
end)