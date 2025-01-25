local UEHelpers = require("UEHelpers")
local config = require("config")

-- FasterCoffeeMachine
if config.ModsEnabled.FasterCoffeeMachine == true then
    local FastCoffeePour = function(context)
        local coffeeMachine = context:get()
		--local defaultFilling = coffeeMachine:GetPropertyValue("CoffeeFillerFillingTime")
		--print(defaultFilling)
        coffeeMachine:SetPropertyValue("CoffeeFillerFillingTime", config.SpeedSettings.CoffeeFillSpeed) -- Default is 5
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeFillingUpdate', FastCoffeePour)
	if config.debug.listEnabledModules == true then
		print("FasterCoffeeMachine")
	end
end

-- FastCoffeeGrind
if config.ModsEnabled.FastCoffeeGrind == true then
    local FastCoffeeGrind = function(context)
        local coffeeMachine = context:get()
		--local defaultGrinding = coffeeMachine:GetPropertyValue("CoffeeGrindingTime")
		--print(defaultGrinding)
        coffeeMachine:SetPropertyValue("CoffeeGrindingTime", config.SpeedSettings.CoffeeGrindSpeed) -- Default is 3.96
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:CoffeeFillingUpdate', FastCoffeeGrind)
	if config.debug.listEnabledModules == true then
		print("FasterCoffeeGrind")
	end
end

-- FasterMilkMachine
if config.ModsEnabled.FasterMilkMachine == true then
    local MilkFrothingSpeedup = function(context)
        local coffeeMachine = context:get()
		--local defaultFroth = coffeeMachine:GetPropertyValue("MilkFlothingTime")
		--print(defaultFroth)
        coffeeMachine:SetPropertyValue("MilkFlothingTime", config.SpeedSettings.MilkFillSpeed) -- Default is 10
    end
    RegisterHook('/Game/Blueprints/Gameplay/CoffeeMachine/BP_CoffeeMachine.BP_CoffeeMachine_C:MilkFrothingUpdate', MilkFrothingSpeedup)
	if config.debug.listEnabledModules == true then
		print("FasterMilkMachine")
	end
end
