local UEHelpers = require("UEHelpers")

return {

	ModsEnabled = {
		InfiniteDriveThruPatience = true,
		FastSpawningDriveThru = true,
		FastWalkSpeed = true,
		WasteOilSizeInc = true,
	},
	SpeedSettings = {
		DriveSpawnSpeed = 20.0, -- Lower is Faster this represents the delay
		WalkSpeed = 300.0, -- Default is 200
	},
	SizeModifiers = {
		WasteOilCanSize = 1.0, -- Default is 0.5
	},
	
	--Debuging Options
	debug = {
		listEnabledModules = true -- a debuging option to print all enabled modules
	}
}