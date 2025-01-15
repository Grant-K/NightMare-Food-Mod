local UEHelpers = require("UEHelpers")

return {

	ModsEnabled = {
		InfiniteDriveThruPatience = false,
		FastSpawningDriveThru = false,
		FastWalkSpeed = false,
		WasteOilSizeInc = false,
		IncreaseConBottleSize = false,
	},
	SpeedSettings = {
		DriveSpawnSpeed = 60.0, -- Lower is Faster this represents the delay (Default is 60)
		WalkSpeed = 300.0, -- Default is 200
	},
	SizeModifiers = {
		WasteOilCanSize = 1.0, -- Default is 0.5
		ConBottleSize = 30, -- default is 15
	},
	
	--Debuging Options
	debug = {
		listEnabledModules = true -- a debuging option to print all enabled modules
		debuggingPrints = false --Enables Print Functions used to debug.
	}
}