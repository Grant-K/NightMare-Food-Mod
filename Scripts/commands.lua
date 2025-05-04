local Message = nil

function Log(Console)
	if Message ~= nil then
		Message:Log(Console)
	end
end

function ModCommands()
	Log('Avaliable Mod Commands:')
	Log('ModHelp: Lists Mod Commands')
	Log('Reload: Reloads Mod and Config')
end
	
function RegisterConsoleCommand(Command, Parameters, Inp)
	Message = Inp
	
	if #Parameters < 1 then
        ModCommands()
        return false    
    end
	
	if Parameters[1] == 'ModHelp' then
        ModCommands()
        return true
    end
	

    -- Reload the mod
    if Parameters[1] == 'reload' then
        Log('ModReloaded')
        loadMod()
        return true
    end

    -- Show the help by default
    return false
	
end
