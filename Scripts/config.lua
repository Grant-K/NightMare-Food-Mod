local UEHelpers = require("UEHelpers")

return {

	ModsEnabled = {
		InfiniteDriveThruPatience = false,
		FastSpawningDriveThru = false,
		FastWalkSpeed = false,
		WasteOilSizeInc = false,
		IncreaseConBottleSize = false,
		UpdatePatience = false,
		FasterCoffeeMachine = false,
		FastCoffeeGrind = false,
		FasterMilkMachine = false,
	},
	SpeedSettings = {
		DriveSpawnSpeed = 60.0, -- Lower is Faster this represents the delay (Default is 60)
		WalkSpeed = 300.0, -- Default is 200
		DrivePatience = 1, -- Default is 2 Lower means longer patience
		CoffeeFillSpeed = 1, -- Default is 5 Lower is Faster
		CoffeeGrindSpeed = 1, -- Default is 3.96 Lower is Faster
		MilkFillSpeed = 1, -- Default is 10 Lower Is Faster
	},
	SizeModifiers = {
		WasteOilCanSize = 1.0, -- Default is 0.5
		ConBottleSize = 30, -- default is 15
	},
	
	--Debuging Options
	debug = {
		listEnabledModules = true, -- a debuging option to print all enabled modules
		debuggingPrints = true, --Enables Print Functions used to debug.
	}
}