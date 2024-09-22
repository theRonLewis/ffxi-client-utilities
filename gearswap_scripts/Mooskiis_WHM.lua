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

require("common_functions")

function get_sets()
	--This function prepares your equipment sets, sets variables


	-- Fashion set
	sets.fashion = {
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		--ammo		= "Phtm. Tathlum",
		head		= "Clr. Cap +1",
		body		= "Aristocrat's Coat",
		hands 		= "Blessed Mitts +1",
		legs 		= "Cleric's pantaln.",
		feet		= "Herald's Gaiters",
		--neck		= "Elemental Torque",
		--waist		= "Pythia Sash +1",
		--left_ear	= "Omn. Earring +1",
		--right_ear	= "Omn. Earring +1",
		--left_ring	= "Omn. Ring +1",
		--right_ring	= "Omn. Ring +1",
		--back		= "Mahatma Cape",
	}

-------------------------------------------------
	sets.ws = {}

	-- mnd and str
	sets.ws.hexa = {
		-- head="Faerie Hairpin",
		-- neck="Beak Necklace +1",
		-- body="Mahatma Hpl.",
		-- hands="Blessed Mitts +1",
		-- legs="Bls. Trousers +1",
		-- feet="Blessed Pumps +1",
		-- back="Mahatma Cape",
		-- waist="Hierarch Belt",
		
		-- ear1="Hades Earring",
		-- ear2="Hades Earring",
		-- ring1="Celestial Ring",
		-- ring2="Celestial Ring"
	}


-------------------------------------------------
	sets.melee = {}

	sets.melee.weapons = {
		main="Brise-os +1",
		sub="Kraken Club"
	}

	sets.melee.engaged = {
		-- head="Faerie Hairpin", -- wish: optical hat
		neck="Evasion Torque",
		body="Reverend Mail",
		hands="Blessed Mitts +1",
		legs="Bls. Trousers +1",
		feet="Blessed Pumps +1",
		back="Umbra Cape",
		waist="Virtuoso Belt",
		
		ear1="Supremacy Earring",
		ear2="Paramount Earring",
		ring1="Woodsman Ring"--,
		-- ring2="Celestial Ring" -- wish: accuracy
	}

	sets.melee.idle = {
		-- head="Faerie Hairpin",
		-- neck="Beak Necklace +1",
		body="Dalmatica +1",
		-- hands="Blessed Mitts +1",
		-- legs="Bls. Trousers +1",
		feet="Herald's Gaiters",
		-- back="Mahatma Cape",
		-- waist="Hierarch Belt",
		
		-- ear1="Hades Earring",
		-- ear2="Hades Earring",
		-- ring1="Celestial Ring",
		-- ring2="Celestial Ring"
	}


-------------------------------------------------
	sets.precast = {}

	sets.precast.cure = {
		main="Chatoyant Staff",
		feet="Cure Clogs",
		sub="Vivid Strap"
	}

	sets.precast.fc = {

	}



-------------------------------------------------
	sets.midcast = {}
	
	sets.midcast.cure = {
		main="Chatoyant Staff",
		sub="Reign Grip",
		--range="",
		ammo="Hedgehog Bomb",
		head="Zenith Crown +1",
		neck="Fylgja Torque",
		body="Aristocrat's Coat",
		hands="Blessed Mitts +1",
		legs="Bls. Trousers +1",
		feet="Blessed Pumps",
		back="Dew Silk Cape +1",
		waist="Pythia Sash",
		ear1="Roundel Earring",
		ear2="Healing Earring",
		ring1="Cmn. Ring +1",
		ring2="Cmn. Ring +1",
	}

	sets.midcast.regen = {
		-- TODO
		-- main="Chatoyant Staff",
		-- sub="Reign Grip",
		-- --range="",
		-- ammo="Hedgehog Bomb",

		-- head="Faerie Hairpin",
		-- neck="Beak Necklace +1",
		body="Cleric's Bilaut",
		-- hands="Blessed Mitts +1",
		-- legs="Bls. Trousers +1",
		-- feet="Blessed Pumps +1",
		-- back="Mahatma Cape",
		-- waist="Hierarch Belt",
		
		-- ear1="Hades Earring",
		-- ear2="Hades Earring",
		-- ring1="Celestial Ring",
		-- ring2="Celestial Ring"
	}

	sets.midcast.bar = {
		body="Blessed Bliaut +1",
		legs="Cleric's pantaln."
	}

	sets.midcast.stoneskin = {
		neck="Stone Gorget"
	}

	sets.midcast.SkillEnfeebling = {
		hands="Clr. Mitts +1"
	}
	sets.midcast.MNDenfeebling = {}
	sets.midcast.INTenfeebling = {}


-------------------------------------------------
	sets.aftercast = {}

	sets.aftercast.idle = {
		main="Terra's Staff",
		sub="Reign Grip",
		head="Clr. Cap +1",
		body="Aristocrat's Coat",
		feet="Herald's Gaiters",
		back="Umbra Cape"
	}


-------------------------------------------------
	sets.resting = {
		main="Chatoyant Staff",
		sub="Reign Grip",
		--range
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
	}

	---------------
	-- Variables --
	---------------

	meleeMode = false  -- by default, use mage logic
	debugMode = false  -- by default, don't print the debug statements

end

-----------------------------------------------------------------------------------

function precast(spell)
	--This function performs right before the action is sent to the server.

	if spell.english:startswith('Cur') then
		equip(sets.precast.cure)
		print_if_debug('[ ==> Cure gear precast]')
	--elseif spell.english:startswith('Bar') then
	else
		--TODO equip typical fastcast gear
	end

end

-----------------------------------------------------------------------------------

function midcast(spell)
	--This function performs after precast but before the action is sent to the server.

	if spell.english:startswith('Bar') then
		equip(sets.midcast.bar)
		--windower.add_to_chat(8,'[ ==> Bar gear MID-Cast]')

	elseif spell.english:startswith('Cur') then
		equip(sets.midcast.cure)
		--windower.add_to_chat(8,'[ ==> Cure gear MID-Cast]')

	elseif spell.english:startswith('Stoneskin') then
		equip(sets.midcast.stoneskin)
	elseif spell.english:contains('Regen') then
		equip(sets.midcast.regen)
	elseif spell.type == 'WeaponSkill' then
		equip_ws(spell.name)
	end

end

-----------------------------------------------------------------------------------

function aftercast(spell)
	--This function performs after the action has taken place
	choose_set()
end

-----------------------------------------------------------------------------------

function status_change(new,old)
	--This function performs when player status changes between Engaged, Idle, Resting, Dead)
	choose_set()
end

-----------------------------------------------------------------------------------

function equip_ws(name)

	if name == 'Hexa Strike' then
		print_if_debug('================> TODO: no defined gear for Hexa Strike ! ')
		equip(sets.ws.hexa)
	--elseif name == 'WEAPONSKILL' then
		--print_if_debug('================> TODO: no defined gear for WEAPONSKILL ! ')
		--equip(sets.ws.WS_NAME)
	else
		print_if_debug('-- ! no defined gear for weaponskill ! --')
	end
end

-----------------------------------------------------------------------------------

function equip_rest()
	-- toggling of weapons for TP is handled in commands
	-- can just equip hMP gear w/o loss of TP
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

-- When a buff changes
function buff_change(name,gain)
	common_debuff_items()
end

---------------------
-- Player commands --
--------------------- 

function self_command(command)

	if command == "melee" then
		meleeMode = true
		enable('main', 'sub', 'range', 'ammo')
		equip(sets.melee.weapons)
		disable('main', 'sub', 'range', 'ammo')
		windower.add_to_chat(8,'[ ==> meleeMode is TRUE, Clubs set for WHM/NINJA! ]')

	elseif command == "mage" then
		meleeMode = false
		enable('main', 'sub', 'range', 'ammo')
		windower.add_to_chat(8,'[ ==> meleeMode is FALSE, GS now changing top row! ]')

	elseif command == "debugon" then
		debugMode = true
		windower.add_to_chat(8,'[ ==> ! DEBUG MODE ON - printing changes... ]')

	elseif command == "debugoff" then
		debugMode = false
		windower.add_to_chat(8,'[ ==> ! DEBUG MODE OFF - going silent. ]')

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

common_init('WHM', '2')
