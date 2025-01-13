local UEHelpers = require("UEHelpers")
local config = require("config")

print("Loading NightMare Food mod")

local function loadMod()

	print("Now Loading Modules...")
	
	require 'modules/BiggerWasteOilCan'
	require 'modules/FastDriveThruSpawning'
	require 'modules/IncreasedAiWalkSpeed'
	require 'modules/InfiniteDriveThruPatience'

end

loadMod()