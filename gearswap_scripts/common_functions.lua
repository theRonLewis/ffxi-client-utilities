--[[
        -----------------------------------------------
        -- Common Gearswap Functions & Functionality --
        -----------------------------------------------

        write up some notes about how to use and integrate...

--]]


-- common init method for fashion, macros, etc
function common_init(job, macroBook)

    if (true) then 
        send_command(
            'input /echo .       ==>             ...; '..
            'input /echo .       ==> '..job..' Gearswap Initializing...; '..
            'input /echo .       ==>             ...; '..
            'wait 2; input /lockstyle off; '..
            'wait 1; input /macro book '..macroBook..'; '..
            'wait 1; input /macro set 1; '..
            'wait 1; gs equip fashion; '..
            'wait 10; input /lockstyle on; '..
            'wait 3; gs c idle; '..
            'wait 1; input /echo .       ==> '..job..' Gearswap Loaded; '..
            'input /echo .       ==> Macro Book: '..macroBook..' - Set :1 equipped; '..
            'input /echo .       ==> all slots changeable...;'..
            'input /echo .       ==>             ...; '
        )
    else
        send_command(
            'input /echo .       ==> GS Quick Reload;'
        )
    end

end

function common_debuff_items()

	if buffactive['Silence'] then
        send_command('@ input /item "Echo Drops" <me>')
        windower.add_to_chat(256,'[Silence Removed!]')

    elseif buffactive['Curse'] then
        send_command('@ input /item "Holy Water" <me>')
        windower.add_to_chat(201,'[Curse Removed!]')

    elseif buffactive['Doom'] then
        send_command('@ input /item "Hallowed Water" <me>')
        windower.add_to_chat(002,'[Doom Removed!]')

    elseif buffactive['Blindness'] then
        send_command('@ input /item "Eye Drops" <me>')
        windower.add_to_chat(160,'[Blindness Removed!]')

    elseif buffactive['Poison'] then
        send_command('@ input /item "Antidote" <me>')
        windower.add_to_chat(259,'[Poison Removed!]')

	elseif buffactive['Paralyzed'] then
		send_command('@ input /item "Remedy" <me>')
		windower.add_to_chat(259,'[Paralysis Removed!]')
    end

end

function common_commands(command)

--[[
        ---------------------------------
        -- Craft Looping Functionality --
        ---------------------------------

        Needs to be disabled by default in your main job lua at the end of get_sets, with:
        loopCrafting = false 
        killCountdownCrafting = false

        Commands:
            clOn        Enable looping of crafting
            clOff       Disable looping of crafting
            clGo        Attempt to start looping of /lastsynth
            kraft #   Initiates a loop of /lastsynth for # of times
            kraftKill Kill command to abort Craftdown

--]]

    if command == "clGo" then
        if (loopCrafting) then
            windower.add_to_chat(259,'        -- [Loop Crafting: Attempting /lastsynth and queueing next... ]')
            send_command('input /lastsynth;wait 22; gs c clGo;')
        else
            windower.add_to_chat(259,'        -- [Loop Crafting: Loop crafting is currently disabled!! ]')
        end

    elseif command == "clOn" then
        windower.add_to_chat(259,'        -- [Loop Crafting: ENABLED! ]')
        loopCrafting = true

    elseif command == "clOff" then
        windower.add_to_chat(259,'        -- [Loop Crafting: DISABLED! ]')
        loopCrafting = false

    elseif command == "kraftKill" then
        killCountdownCrafting = true
        windower.add_to_chat(259,'        -- [Loop Crafting: Craftdown abort started. ]')

    elseif command:startswith('kraft') then
        count = get_split_index(command, 1)
        if killCountdownCrafting then
            windower.add_to_chat(259,'        -- [Loop Crafting: Craftdown abort complete. ]')
            killCountdownCrafting = false

        elseif tonumber(count) > 0 then
            windower.add_to_chat(259,'        -- [Loop Crafting: Crafting down from: '..count..']')
            repeatCommand = 'input /lastsynth;wait 22; gs c clCount '..tostring(tonumber(count)-1)
            send_command(repeatCommand)
        end

--[[
        ----------------
        -- Catch all  --
        ----------------
]]--

    else
        windower.add_to_chat(259,'        -- [GS Commands: Default  Command ['..command..'] not recognized!]')
    end
end

-- helper method to grab parts from multi input commands
function get_split_index(stringToSplit, desiredIndex)
    indexCounter = 0
    for str in string.gmatch(stringToSplit, "([^ ]+)") do
        if indexCounter == desiredIndex then
            return str
        end
        indexCounter = indexCounter + 1
    end
end
