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
		--main="Chatoyant Staff",
		--sub="Reign Grip",
		--range="",
		--ammo="Hedgehog Bomb",

		--head="Faerie Hairpin",
		--neck="Beak Necklace +1",
		--body="Mahatma Hpl.",
		--hands="Blessed Mitts +1",
		--legs="Bls. Trousers +1",
		--feet="Blessed Pumps +1",
		--back="Mahatma Cape",
		--waist="Hierarch Belt",
		
		--ear1="Hades Earring",
		--ear2="Hades Earring",
		--ring1="Celestial Ring",
		--ring2="Celestial Ring"
	}

	sets.gear = {
		main="Monster Signa",
		sub="Lizard Strap +1",
		range="Cornette +2",
		--ammo="Bone Arrow",

		head="Noble's Ribbon",
		neck="Flower Necklace",
		body="Baron's Saio",
		hands="Baron's Cuffs",
		legs="Mage's Slacks",
		feet="Bounding Boots",
		back="Midnight Cape",
		waist="Gold Obi +1",
		
		ear1="Wind Earring",
		ear2="Aura Earring +1",
		ring1="Hope Ring +1",
		ring2="Hope Ring",
	}

	sets.song = {}

	sets.song.lullaby = {range="Mary's Horn"}
	sets.song.mambo = {range="Gemshorn +1"}
	sets.song.march = {range="Kingdom Horn"}
	sets.song.minne = {range="Harp +1"}
	sets.song.minuet = {range="Cornette +2"}
	sets.song.paeon = {}
	sets.song.requiem = {range="Siren Flute"}
	sets.song.finale = {range="Military Harp"}

-------------------------------------------------
	sets.precast = {}

	sets.precast.fc = {}

-------------------------------------------------
	sets.midcast = {}

	sets.midcast.chr = {
		main="Monster Signa",
		sub="Lizard Strap +1",
		--range="Cornette +2",
		--ammo="Bone Arrow",

		head="Noble's Ribbon",
		neck="Flower Necklace",
		body="Baron's Saio",
		hands="Baron's Cuffs",
		legs="Mage's Slacks",
		feet="Bounding Boots",
		back="Midnight Cape",
		waist="Gold Obi +1",
		
		ear1="Wind Earring",
		ear2="Aura Earring +1",
		ring1="Hope Ring +1",
		ring2="Hope Ring",}
	
	sets.midcast.cure = {}
	sets.midcast.bar = {}

	sets.midcast.SkillEnfeebling = {}
	sets.midcast.MNDenfeebling = {}
	sets.midcast.INTenfeebling = {}


-------------------------------------------------
	sets.aftercast = {}

	sets.aftercast.idle = {}


-------------------------------------------------
	sets.resting = {
		--main="Chatoyant Staff",
	}


	---------------
	-- Variables --
	---------------

	SongSkillupLock = false
	meleeMode = false
	debugMode = true

end

function harp_msg()
	windower.add_to_chat(8,'-- -- > you are using a harp with larger range!!')	
end

-----------------------------------------------------------------------------------

function precast(spell)
	--This function performs right before the action is sent to the server.

	if spell.english:startswith('Advancing') then -- March
		equip(sets.song.march)
		print_if_debug('March/haste set equipped')
	elseif spell.english:startswith('Knight') then -- Minne
		equip(sets.song.minne)
		print_if_debug('Minne/def set equipped')
		harp_msg()
	elseif spell.english:startswith('Army') then -- Paeon
		equip(sets.song.paeon)
		print_if_debug('Paeon/regen set equipped')
	elseif spell.english:startswith('Valor') then -- Minuet
		equip(sets.song.minuet)
		print_if_debug('Minuet/attack set equipped')
	elseif spell.english:contains('Requiem') then -- Requiem
		equip(sets.song.requiem)
		print_if_debug('Requiem/dot set equipped')
	elseif spell.english:contains('Lullaby') then -- Lullaby
		equip(sets.song.lullaby)
		print_if_debug('Lullaby/sleep set equipped')
	elseif spell.english:startswith('Sheepfoe') then -- Mambo
		equip(sets.song.mambo)
		print_if_debug('Mambo/evasion set equipped')
	elseif spell.english:startswith('Magic Finale') then -- Finale
		equip(sets.song.finale)
		print_if_debug('Finale/dispel set equipped')
	end


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
	equip(sets.midcast.chr)
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

---------------------
-- Player commands --
--------------------- 

function self_command(command)

	-- made/melee mode
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
	elseif command == "debugon" then
		debugMode = true
		windower.add_to_chat(8,'[ ==> ! DEBUG MODE ON - printing changes... ]')

	elseif command == "debugoff" then
		debugMode = false
		windower.add_to_chat(8,'[ ==> ! DEBUG MODE OFF - going silent. ]')

	elseif command == "skillupon" then
		disable('range')
		windower.add_to_chat(8,'[ ==> Song Skillup: ON - ranged equipment is locked ]')
	elseif command == "skillupoff" then
		enable('range')
		windower.add_to_chat(8,'[ ==> Song Skillup: OFF - ranged equipment is unlocked and subject to change ]')

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
job = 'BRD';
slot = '9';
send_command(
	'wait 1; input /macro book '..slot..'; '..
	'wait 1; input /macro set 1; '..
	'wait 1; input /echo .       ==> '..job..' Gearswap Loaded, Macro Book '..slot..', Set 1 equipped, all slots changeable...; '..
	'wait 1; input /lockstyleset '..slot)