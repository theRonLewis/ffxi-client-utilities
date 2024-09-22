--[[
		-----------------------
		--  Sample Full Set  --
		-----------------------

		main="Chatoyant Staff",
		sub="Reign Grip",
		--range="",
		ammo="Hedgehog Bomb",

		head="Faerie Hairpin",
		neck="Beak Necklace +1",
		body="Mahatma Hpl.",
		hands="Blessed Mitts +1",
		legs="Bls. Trousers +1",
		feet="Blessed Pumps +1",
		back="Mahatma Cape",
		waist="Hierarch Belt",
		
		ear1="Hades Earring",
		ear2="Hades Earring",
		ring1="Celestial Ring",
		ring2="Celestial Ring"
--]]

function get_sets()
	--This function prepares your equipment sets, sets variables

	-- Fashion set
	sets.fashion = {
		--main		= "Treat Staff II",
		--sub			= "Reign Grip",
		--range		= "Aureole",
		--ammo		= "Phtm. Tathlum",
		head		= "Tlahtlamah Glasses",
		body		= "Carpenter's Apron",
		--hands 		= "Summoner's Brcr.",
		--legs 		= "Summoner's Spats",
		--feet		= "Herald's Gaiters",
		--neck		= "Elemental Torque",
		--waist		= "Pythia Sash +1",
		--left_ear	= "Omn. Earring +1",
		--right_ear	= "Omn. Earring +1",
		--left_ring	= "Omn. Ring +1",
		--right_ring	= "Omn. Ring +1",
		--back		= "Mahatma Cape",
	}

	sets.gear = {
		main		= "Solid Wand",
		sub			= "Flat Shield",
		range		= "Shortbow +1",
		ammo		= "Bone Arrow",

		head		= "Baron's Chapeau",
		neck		= "Solon Torque",
		body		= "Baron's Saio",
		hands		= "Garrison Gloves",
		legs		= "Mage's Slacks",
		feet		= "Garrison Boots",
		back		= "Black Cape +1",
		waist		= "Reverend Sash",
		
		ear1		= "Morion Earring +1",
		ear2		= "Morion Earring +1",
		ring1		= "Eremite's Ring +1",
		ring2		= "Eremite's Ring +1"
	}

-------------------------------------------------
	sets.precast = {}

	sets.precast.cure = {
	}

	sets.precast.fc = {}



-------------------------------------------------
	sets.midcast = {}
	
	sets.midcast.cure = {}

	sets.midcast.bar = {}

	sets.midcast.SkillEnfeebling = {}
	sets.midcast.MNDenfeebling = {}
	sets.midcast.INTenfeebling = {}


-------------------------------------------------
	sets.aftercast = {}

	sets.aftercast.idle = {}


-------------------------------------------------
	sets.resting = {}


	---------------
	-- Variables --
	---------------

	meleeMode = false
	debugMode = false

end






-----------------------------------------------------------------------------------

function precast(spell)
	--This function performs right before the action is sent to the server.

	--if spell.english:startswith('Cur') then
		--equip(sets.precast.cure)
		--windower.add_to_chat(8,'[ ==> Cure gear precast]')
	--elseif spell.english:startswith('Bar') then
	--else
		--TODO equip typical fastcast gear
	--end

end

-----------------------------------------------------------------------------------

function midcast(spell)
	--This function performs after precast but before the action is sent to the server.


end

-----------------------------------------------------------------------------------

function aftercast(spell)
	--This function performs after the action has taken place

end

-----------------------------------------------------------------------------------

function status_change(new,old)
	--This function performs when player status changes between Engaged, Idle, Resting, Dead)
	choose_set()
end

-----------------------------------------------------------------------------------

function equip_ws(name)

	if name == 'Slice' then
		print_if_debug('-- ! no defined gear for Slice weaponskill ! --')
	--elseif name == 'WEAPONSKILL' then
		--print_if_debug('================> TODO: no defined gear for WEAPONSKILL ! ')
		--equip(sets.ws.WS_NAME)
	else
		print_if_debug('-- ! no defined gear for weaponskill ! --')
	end
end

-----------------------------------------------------------------------------------

function equip_rest()
	-- toggling of weapons for TPis handled in commands
	-- can just equip hMP gear w/o loss of TP if it matters
	equip(sets.resting)
	print_if_debug('================> Resting')
end

-----------------------------------------------------------------------------------

function equip_engaged()
	if meleeMode == true then
		equip(sets.melee.engaged)
		print_if_debug('================> Melee ENGAGED')
	elseif meleeMode == false then
		print_if_debug('================> Enaged, but idle/refresh')
		equip(sets.aftercast.idle)
	end
end

-----------------------------------------------------------------------------------

function equip_idle()
	if meleeMode == true then
		equip(sets.melee.idle)
		print_if_debug('================> Melee IDLE')
	elseif meleeMode == false then
		equip(sets.aftercast.idle)
		print_if_debug('================> Idle (refresh')
	end
end

-----------------------------------------------------------------------------------

function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    elseif player.status == "Resting" then
		equip_rest()
	else
        equip_idle()
    end
end

-----------------------------------------------------------------------------------

function print_if_debug(msg)
	if debugMode == true then
		windower.add_to_chat(8, msg)
	end
end

-----------------------------------------------------------------------------------

---------------------
-- Player commands --
--------------------- 

function self_command(command)

	-- mage/melee mode
	if command == "melee" then
		meleeMode = true
		--enable('main', 'sub', 'range', 'ammo')
		--equip(sets.melee.weapons)
		disable('main', 'sub', 'range', 'ammo')
		windower.add_to_chat(8,'[ ==> meleeMode is TRUE! ]')
	elseif command == "mage" then
		meleeMode = false
		enable('main', 'sub', 'range', 'ammo')
		windower.add_to_chat(8,'[ ==> meleeMode is FALSE, GS now changing top row! ]')

	-- debug toggles
	elseif command == "debug" then
		if debugMode == false then
			debugMode = true
			windower.add_to_chat(8,'[ ==> ! DEBUG MODE ON - printing changes... ]')
		else -- debugMode == true
			debugMode = false
			windower.add_to_chat(8,'[ ==> ! DEBUG MODE OFF - going silent. ]')
		end

	elseif command == "idle" then
		choose_set()

		-- catch all
	elseif true == true then
		windower.add_to_chat(8,'[ ==> ! unrecognized command!!! ]')
	end

end
-----------------------------------------------------------------------------------




---------------
-- Init code --
--------------- 

enable('main','sub','range','ammo','head','neck','left_ear','right_ear','body','hands','left_ring','right_ring','back','waist','legs','feet') 

common_init('RDM', '8')
