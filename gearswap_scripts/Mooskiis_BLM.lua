--[[
		----------------------
		--  Gear Wish List  --
		----------------------

		-- Relic Staff
		main		= "Claustrum", 			-- Relic Weapon BLM augment has Refresh

		range		= "Aureole", 			-- Absolute Virtue (Sin of Indolence)
		
		neck		= "Bloodbead Gorget",	-- lv82 NM in Eldieme Nec [S]

		head 		= "Karura Hachigane"	-- Z-NM in Wajaom Woodlands
		head		= "Maat's Cap", 		-- All jobs 75
		head		= "Src. Petasos +1", 	-- Relic +1
		head		= "Nashira Turban",		-- 
		head		= "Walahra Turban",		-- 
		head		= "Oracle's Cap",		-- 

		body		= "Wzd. Coat +1",		-- AF +1
		body		= "Goliard Saio",		-- 

		hands		= "Src. Gloves +1",		-- Relic +1
		hands		= "Bricta's Cuffs",		-- Garliage [S] NM Elatha
		hands		= "Dvt. Mitts +1", 		-- HQ

		legs		= "Goliard Trews",		-- 
		legs		= "Src. Tonban +1"		-- Relic +1

		feet		= "Rostrum Pumps", 		-- NM in Attowha Chasm
		feet		= "Shrewd Pumps",		-- 
		feet		= "Goliard Clogs",		-- 
		
		neck		= "Uggalepih Pendant",	-- 
		neck		= "Fylgja Torque +1", 	-- HQ
		neck		= "Gnole Torque",		-- Absolute Virtue

		back		= "Astute Cape", 		-- Ix'DRG
		back		= "Ixion Cape",			-- 
		back		= "Merciful Cape", 		-- Ix'MNK
		back		= "Veela Cape",			-- ABsolute Virtue
		back		= "Altruistic Cape",	-- Ix'DRK
		back		= "Invigorating Cape"	-- Ilrusi Atoll Assault points

		waist		= "Penitent's Rope",

		left_ear	= "Novia Earring",		-- 
		left_ear	= "Novio Earring",		-- 
		right_ear	= "Ethereal Earring",	-- 
		right_ear	= "Incubus Earring +1",	-- HQ
		right_ear	= "Loquac. Earring",	-- Limbus, 75 coins
		left_ear	= "Relaxing Earring",	-- sea obi chips
		right_ear	= "Antivenom Earring",	-- mamool ja assault points

		left_ring	= "Galdr Ring",			-- 
		left_ring	= "Shadow Ring",		-- 
		right_ring	= "Defending Ring",		-- 
		right_ring	= "Balrahn's Ring",		-- ToAU missions


]]--

--[[

----------------
-- Properties --
----------------

Only job-specific properties are shown here. For the general list, more info, tips etc. visit my Gearswap page: https://enedin.be/gs/

AUTOMATIC
- Equips Sorcerer's Ring for nuking when your HP is low enough.
- Equips Uggalepih Pendant for nuking when your MP is low enough.

COMMANDS
- toyellowHP					Induce yellow HP (for use with Sorcerer's Ring).
- meleeMode						Cycle melee and weapon sets. Weapon/grip/ammo is locked except in mage mode.
- nukeDmg						Toggle nuking in potency/skill.
- dispmp						Toggle showing spells' MP cost and other info.
- use_terras					toggle the use of Claustrum/Terra's Staff in idle (useful for BLM Augment's Refresh).

---------------------
-- About this file --
---------------------

CHANGELOG
- v2.42:    updated and outfitted for Ron (Mooskiis) gear
- v2.41:	using Sorc. Ring by default when weakened (because the latent is active when weak due to the way it's calculated)
- v2.4:		using nakedHP values in Sorc. Ring calculation
			added throwing weapon/melee set
- v2.31:	adjusted Ugg. Pendant handling to be more accurate
- v2.3:		updated Obi, Relic pants and Ugg. Pendant handling
- v2.2:		improved message accuracy for Bind and Sleep
- v2.1:		added melee.staffhaste for situations where you can build TP on easier stuff
			added use_terras to switch between Terra's Staff and Claustrum in idle (for BLM augmented staff)
			added switch for display_mp_cost (show MP cost)
- v2.0:		base (core functionality)

CREDITS
- Adapted this from Wren's GearSwap luas: https://supernovaffxi.fandom.com/wiki/Wren%27s_Gearswaps

]]--

----------
-- Sets --
----------

function get_sets()

	-- Including this gives an easy way of defining cyclic/trigger/etc variables, 
	-- makes handling self_commands easier.
	-- Motes also uses this, but this is completely independent from Motes
	include('Modes.lua')
	
	-- Idle sets
	
	sets.idle = { -- Movement, PDT, MDT, Refresh, HP, MP
--		main		= "Claustrum", -- BLM augment has Refresh
		main		= "Terra's Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		ammo		= "Brio Dart",
		head		= "Zenith Crown +1",
		body		= "Dalmatica +1",
		hands		= "Mahatma Cuffs", 
		--legs		= "Goliard Trews",
		legs		= "Genie Lappas",
		feet		= "Herald's Gaiters",
		--neck		= "Bloodbead Gorget",
		neck		= "Orochi Nodowa",
		waist		= "Hierarch Belt",
		--left_ear	= "Novia Earring",
		left_ear	= "Omn. Earring +1",
		--right_ear	= "Ethereal Earring",
		right_ear	= "Omn. Earring +1",
		--left_ring	= "Shadow Ring",
		--right_ring	= "Defending Ring",
		back		= "Umbra Cape",
		
	}
	
	-- Magic sets
	
	sets.elemental_magic = { -- Magic Attack Bonus > INT > Skill
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Wise Strap",
		ammo		= "Phtm. Tathlum",
		--head		= "Maat's Cap",
		head		= "Demon Helm +1",
		body		= "Genie Weskit",
		hands		= "Zenith Mitts +1",
		legs		= "Mahatma Slops",
		--feet		= "Shrewd Pumps",
		feet		= "Sorcerer's Sabots",
		neck		= "Lmg. Medallion +1",
		waist		= "Witch Sash",
		--left_ear	= "Novio Earring",
		--right_ear	= "Moldavite Earring",
		left_ear	= "Helenus's Earring",
		right_ear	= "Cass. Earring",
		--left_ring	= "Galdr Ring",
		left_ring	= "Omn. Ring +1",
		right_ring	= "Omn. Ring +1",
		--back		= "Ixion Cape",
		back		= "Prism Cape",
	}
	
	sets.elemental_magic.skill = set_combine(sets.elemental_magic,{ -- Skill
		--head		= "Src. Petasos +1",
		head		= "Elite Beret +1",
		hands		= "Wizard's Gloves",
		--range		= "Aureole",
		ammo		= "Brio Dart",
	})
	sets.elemental_magic.debuffs={ -- INT
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Bugard Strap +1",
		ammo		= "Phtm. Tathlum",
		--head		= "Maat's Cap",
		head		= "Demon Helm +1",
		body		= "Mahatma Hpl.",
		hands		= "Mahatma Cuffs",
		legs		= "Mahatma Slops",
		--feet		= "Goliard Clogs",
		feet		= "Sorcerer's Sabots",
		neck		= "Lmg. Medallion +1",
		waist		= "Witch Sash",
		left_ear	= "Omn. Earring +1",
		right_ear	= "Omn. Earring +1",
		--left_ring	= "Galdr Ring",
		left_ring	= "Omn. Ring +1",
		right_ring	= "Omn. Ring +1",
		--back		= "Ixion Cape",
		back		= "Prism Cape",
	}

	sets.dark_magic = { -- Skill (pot/macc) > INT (macc)
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Dark Grip",
		--range		= "Aureole",
		ammo		= "Brio Dart",
		--head		= "Nashira Turban",
		head		= "Wizard's Petasos",
		--body		= "Nashira Manteel",
		body		= "Mahatma Hpl.",
		--hands		= "Src. Gloves +1",
		hands		= "Sorcerer's Gloves",
		legs		= "Wizard's Tonban",
		feet		= "Genie Huaraches",
		neck		= "Dark Torque",
		waist		= "Witch Sash",
		left_ear	= "Dark Earring",
		--right_ear	= "Incubus Earring +1",
		right_ear	= "Incubus Earring",
		--left_ring	= "Galdr Ring",
		--right_ring	= "Balrahn's Ring",
		left_ring	= "Omn. Ring +1",
		right_ring	= "Omn. Ring +1",
		--back		= "Merciful Cape", -- ix'mnk
		back		= "Prism Cape",
	}
	sets.dark_magic.stun = set_combine(sets.dark_magic,{ -- Fast Cast = Haste
		sub			= "Vivid Strap +1",
		head		= "Walahra Turban",
		feet		= "Rostrum Pumps",
		waist		= "Ninurta's Sash",
		right_ear	= "Loquac. Earring",
		back		= "Veela Cape",
	})
	
	sets.enfeebling_magic = {}
	sets.enfeebling_magic.int = { -- Skill (macc) > INT (pot)
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		ammo		= "Phtm. Tathlum",
		head		= "Genie Tiara",
		--body		= "Wzd. Coat +1",
		body		= "Wizard's Coat",
		--hands		= "Bricta's Cuffs",
		hands		= "Mahatma Cuffs",
		legs		= "Genie Lappas",
		feet		= "Goliard Clogs",
		neck		= "Enfeebling Torque",
		waist		= "Witch Sash",
		--left_ear	= "Incubus Earring +1",
		--right_ear	= "Incubus Earring +1",
		left_ear	= "Incubus Earring",
		right_ear	= "Incubus Earring",
		left_ring	= "Galdr Ring",
		right_ring	= "Balrahn's Ring",
		back		= "Altruistic Cape",
	}
	sets.enfeebling_magic.mnd = { -- Skill (macc) > MND (pot)
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		range		= "Aureole",
		head		= "Genie Tiara",
		body		= "Wzd. Coat +1",
		--hands		= "Bricta's Cuffs", -- Garliage [S] NM Elatha
		hands		= "Seer's Mitts +1",
		legs		= "Genie Lappas",
		--feet		= "Goliard Clogs",
		feet		= "Mahatma Pigaches",
		neck		= "Enfeebling Torque",
		waist		= "Pythia Sash +1",
		--left_ear	= "Incubus Earring +1",
		--right_ear	= "Incubus Earring +1",
		left_ear	= "Incubus Earring",
		right_ear	= "Incubus Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		--right_ring	= "Balrahn's Ring", -- ToAU Missions
		--back		= "Altruistic Cape",
		back		= "Prism Cape",
	}

	sets.enhancing_magic = { -- Skill (pot)
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Vivid Strap +1",
		ammo		= "Phtm. Tathlum",
		head		= "Walahra Turban",
		--body		= "Goliard Saio",
		body		= "Mahatma Hpl.",
		hands		= "Zenith Mitts +1",
		legs		= "Zenith Slacks +1",
		feet		= "Genie Huaraches",
		neck		= "Enhancing Torque",
		waist		= "Pythia Sash +1",
		left_ear	= "Augment. Earring",
		right_ear	= "Celestial Earring",
		--right_ear	= "Loquac. Earring",
		left_ring	= "Serket Ring",
		--right_ring	= "Defending Ring",
		right_ring	= "Celestial Ring",
		--back		= "Merciful Cape",
		back		= "Prism Cape",
	}
	sets.enhancing_magic.stoneskin = { -- MND (pot), Fast Cast/MP when cap is reached
	-- With 226 (200+16merits+10claustrum) skill and 450 being SN cap, you need 135 MND on BLM to get cap 	
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Phtm. Tathlum",
		head		= "Zenith Crown +1",
		body		= "Mahatma Hpl.",
		--hands		= "Dvt. Mitts +1", -- HQ
		hands		= "Devotee's Mitts",
		legs		= "Mahatma Slops",
		feet		= "Mahatma Pigaches",
		neck		= "Stone Gorget",
		waist		= "Pythia Sash +1",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Dew Silk Cape +1",
	}
	
	sets.healing_magic = { -- Cure Potency > 1MND = 3VIT = 5skill
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Phtm. Tathlum",
		--head		= "Maat's Cap",
		head		= "Zenith Crown +1",
		body		= "Mahatma Hpl.",
		--hands		= "Dvt. Mitts +1", -- HQ
		hands		= "Devotee's Mitts",
		legs		= "Mahatma Slops",
		feet		= "Mahatma Pigaches",
		--neck		= "Fylgja Torque +1", -- HQ
		neck		= "Fylgja Torque",
		waist		= "Pythia Sash +1",
		left_ear	= "Roundel Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Dew Silk Cape +1",
	}
	
	-- Fast Cast and Haste sets
	
	sets.precastfastcast = { -- Fast Cast (casting time)
		sub			= "Vivid Strap +1",
		right_ear   = "Loquac. Earring",
		feet		= "Rostrum Pumps",
		back		= "Veela Cape"
	}
	sets.fastcasthaste = { -- Fast Caste = Haste (recast time)
	    main		= "Claustrum",
		sub			= "Vivid Strap +1",
		ammo		= "Phtm. Tathlum",
		head		= "Walahra Turban",
		body		= "Goliard Saio",
		hands		= "Zenith Mitts +1",
		legs		= "Nashira Seraweels",
		feet		= "Rostrum Pumps",
		neck		= "Bloodbead Gorget",
		waist		= "Ninurta's Sash",
		left_ear	= "Merman's Earring",
		right_ear	= "Loquac. Earring",
		left_ring	= "Shadow Ring",
		right_ring	= "Defending Ring",
		back		= "Veela Cape",
	}
	
	-- Other sets
	
	sets.yellowHP = { -- HP-, HP to MP
		sub			= "Dark Grip",
		head		= "Zenith Crown +1",
		body		= "Dalmatica +1",
		hands		= "Zenith Mitts +1",
		legs		= "Zenith Slacks +1",
		feet		= "Zenith Pumps +1",
		back		= "Ixion Cape",
		left_ear	= "Astral Earring",
		right_ear	= "Loquac. Earring",
		left_ring	= "Serket Ring",
		right_ring	= "Ether Ring"
	}

	sets.matching_day = {
		waist		= "Hachirin-no-Obi",
		--legs		= "Src. Tonban +1"
		legs		= "Sorcerer's Tonban"
	}
	sets.matching_dayweather = {waist = "Hachirin-no-Obi"}
	
	sets.resting = { -- hMP
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Phtm. Tathlum",
		head		= "Oracle's Cap",
		body		= "Mahatma Hpl.",
		hands		= "Oracle's Gloves",
		legs		= "Oracle's Braconi",
		feet		= "Goliard Clogs",
		--neck		= "Gnole Torque",
		neck		= "Beak Necklace +1",
		waist		= "Qiqirn Sash +1",
		--left_ear	= "Relaxing Earring",
		--right_ear	= "Antivenom Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Invigorating Cape"
	}

	sets.darkgrip = {sub = 'Dark Grip'}
	
	-- Melee sets

	sets.melee = {}
	sets.melee.club = { -- Haste > whatever is best in that slot
	    head		="Walahra Turban",
		body		="Goliard Saio",
		hands		="Hydra Gloves",
		legs		="Nashira Seraweels",
		feet		="Hydra Gaiters",
		neck		="Ire Torque +1",
		waist		="Ninurta's Sash",
		left_ear	="Merman's Earring",
		right_ear	="Merman's Earring",
		left_ring	="Rajas Ring",
		right_ring	="Defending Ring",
		back		="Umbra Cape",
	}
	sets.melee.staffhaste = { -- Haste > whatever is best in that slot
	    head		="Walahra Turban",
		body		="Goliard Saio",
		hands		="Hydra Gloves",
		legs		="Nashira Seraweels",
		feet		="Hydra Gaiters",
		neck		="Ancient Torque",
		waist		="Ninurta's Sash",
		left_ear	="Merman's Earring",
		right_ear	="Brutal Earring",
		left_ring	="Rajas Ring",
		right_ring	="Defending Ring",
		back		="Umbra Cape",
	}
	sets.melee.staffacc = { -- Accuracy > Haste
		head		="Optical Hat",
		body		="Hydra Doublet",
		hands		="Hydra Gloves",
		legs		="Hydra Brais",
		feet		="Hydra Gaiters",
		neck		="Ancient Torque",
		waist		="Virtuoso Belt",
		left_ear	="Pixie Earring",
		right_ear	="Brutal Earring",
		left_ring	="Toreador's Ring",
		right_ring	="Defending Ring",
		back		="Ixion Cape",
	}
	sets.throwing = {
		range		= "Aureole",
		head		= "Optical Hat",
		neck		= "Peacock Amulet",
		left_ring	= "Dragon Ring +1",
		right_ring	= "Dragon Ring +1",
	}

	sets.weapons = {}
	sets.weapons.club = {
		main		= "Kraken Club",
		sub			= "Genbu's Shield",
	}	
	sets.weapons.staff = {
		main		= "Claustrum",
		sub			= "Pole Grip",
		range		= "Aureole",
	}
	
	sets.ws = {}
	sets.ws.gateoftartarus = set_combine(sets.melee.staffacc,{ -- Accuracy
		right_ring	= "Toreador's Ring",
	})
	sets.ws.blackhalo = { -- 30%STR, 50%MND
	    head		= "Maat's Cap",
		body		= "Hydra Doublet",
		hands		= "Dvt. Mitts +1",
		legs		= "Jet Seraweels",
		feet		= "Goliard Clogs",
		neck		= "Fotia Gorget",
		waist		= "Pythia Sash +1",
		left_ear	= "Harmonius Earring",
		right_ear	= "Harmonius Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Flame Ring",
		back		= "Dew Silk Cape +1",
	}
	sets.ws.spirittaker = { -- 50%INT, 50%MND
		head		= "Maat's Cap",
		body		= "Mahatma Hpl.",
		hands		= "Mahatma Cuffs",
		legs		= "Mahatma Slops",
		feet		= "Goliard Clogs",
		neck		= "Lmg. Medallion +1",
		waist		= "Pythia Sash +1",
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Omniscient Ring",
		right_ring	= "Galdr Ring",
		back		= "Prism Cape",
	}

	---------------
	-- Variables --
	---------------

	-- Default values, feel free to change
	nukeDmg = true											-- nuking in damage or skill
	display_mp_cost = true									-- true: show cost of MP
	use_terras = true										-- true: use Terra's Staff in idle (over BLM augmented Claustrum)
	
	-- Lists of options. Default value is the first one
	clippingPlane = M{'1', '0.75', '0.5', '10', '5', '2'}	-- config ClippingPlane value
	meleeMode = M{'mage','staffhaste','staffacc','club'}	-- melee modes
	
	initializeNakedHPMP() -- initialize HP and MP values for use in Uggalepih Pendant calculation

end

---------------
-- Functions --
---------------

function initializeNakedHPMP() -- magic numbers because the HP/MP % checks for latents aren't coded properly on LSB. It uses naked HP/MP, no gear, no food, no max HP/MP boost traits, but it does include HP and MP merits. Others will have to figure out these values for themselves for their own character.
    if player.sub_job == 'RDM' then
        nakedHP = 792
        nakedMP = 868
    elseif player.sub_job == 'WHM' then
        nakedHP = 774
        nakedMP = 887
    elseif player.sub_job == 'SCH' then
		-- TODO: level SCH and fill in
        nakedHP = 1030
        nakedMP = 755
    else
		-- dunno where these defaults came from?! just modified to be rounddabouts above values
        nakedHP = 785
        nakedMP = 880
    end
end

function status_change(new,old)
    choose_set()
end

-- Main function that decides whether to equip engaged/idle/resting gear
function choose_set()
    if player.status == "Engaged" then
        equip_engaged()
    elseif player.status == "Resting" then
		equip_rest()
	else
        equip_idle()
    end
end
	
function equip_engaged()

	-- decide which engaged set to equip
	local temp = meleeMode.value
	if temp == 'club' or temp == 'staffacc' or temp == 'staffhaste' then
		equip(sets.melee[meleeMode.value])

	elseif temp == 'mage' then
		equip(sets.melee.staffacc)
	end
end	
	
function equip_idle()
	equip(sets.idle)
	if use_terras then equip({main="Terra's Staff"}) end
end

function equip_ws(name)
	if name == "Gate of Tartarus" then
		equip(sets.ws.gateoftartarus)
	elseif name == "Black Halo" then
		equip(sets.ws.blackhalo)
	elseif name == "Spirit Taker" then
		equip(sets.ws.spirittaker)
	end
end

function equip_rest()
	equip(sets.resting)
end

-- Equip yellow HP set for a split second, then go back to idle set to trigger yellow
function equip_yellow()
    equip(sets.yellowHP)
    send_command('wait .1;gs equip idle')
end

-- Decide whether to use obi or not
function obi_check(spell)
    local weak_to_element = {Dark="Light",Light="Dark",Ice="Fire",Wind="Ice",Earth="Wind",Lightning="Earth",Water="Lightning",Fire="Water",}
    local weakEle = weak_to_element[spell.element]
	
	-- Iridescence trait on Chatoyant/Claustrum makes single weather stronger than day of the week, so we don't want to equip obi if day gives bonus but weather gives penalty
    if world.weather_element == spell.element or (world.day_element == spell.element and world.weather_element ~= weakEle) then
        return true
    else
        return false
    end
end

function equip_heal(spell)

	-- Cures
	if spell.name:contains('Cure')
	or spell.name:contains('Cura') then
		equip(sets.healing_magic)
		
		-- Matching day
		if obi_check(spell) then
			if spell.element == world.day_element then
				addedmagicinfo = "on matching day"
				equip(sets.matching_dayweather) -- obi
				
				-- Matching day and weather
				if spell.element == world.weather_element then
					addedmagicinfo = "on matching day and weather"
				end
				
			-- Matching weather
			elseif spell.element == world.weather_element then
				addedmagicinfo = "in matching weather"
				equip(sets.matching_dayweather) -- obi
			end
		end
		
	-- Other spells
	else
		equip(sets.fastcasthaste)
	end
end

function equip_enfeebling(spell)

	-- INT-based enfeebles
    if spell.name:contains('Poison')
	or spell.name:contains('Dia')
	or spell.name:contains('Sleep')
	or spell.name:contains('Blind')
	or spell.name == 'Dispel' 
	or spell.name == 'Bind'
	or spell.name == 'Gravity' then
		equip(sets.enfeebling_magic.int)
		
	-- MND-based enfeebles
	else
		equip(sets.enfeebling_magic.mnd)
	end
	
	-- Dark grip for Sleep, Dispel and Blind
	if spell.name:contains('Sleep')
	or spell.name:contains('Blind')
	or spell.name == 'Dispel' then
		equip(sets.darkgrip)
	end
	
end

function equip_enhancing(spell) 

	-- Stoneskin
	if spell.name == 'Stoneskin' then
		equip(sets.enhancing_magic.stoneskin)
	
	-- Barspells/enspells/phalanx
	elseif spell.name:contains('Bar')
	or spell.name:startswith('En')
	or spell.name:contains('Phalanx') then
		equip(sets.enhancing_magic)
		
	-- Other spells
	else
		equip(sets.fastcasthaste)
	end
end

function equip_nuke(spell)

	-- Elemental debuffs
	if spell.name == 'Burn'
	or spell.name == 'Frost'
	or spell.name == 'Choke'
	or spell.name == 'Rasp'
	or spell.name == 'Shock'
	or spell.name == 'Drown' then
		equip(sets.elemental_magic.debuffs)
		
	-- Nukes
	else
	
		-- informative variables
		local skill, obi, ugg, sorc
	
		-- if nuke, potency or skill?
		if nukeDmg then 
			equip(sets.elemental_magic)
			skill = "potency"
		else
			equip(sets.elemental_magic.skill)
			skill = "skill"
		end
		
		-- check obi/tonban for matching day/weather
		if obi_check(spell) then
			if spell.element == world.day_element then
				-- do not equip relic pants if it's double weather and matching day, as that exceeds the +40% day/weather bonus cap even without them
				if not (world.weather_element == world.day_element and world.weather_intensity == 2) then
					equip(sets.matching_day)
				end
				if spell.element == world.weather_element then obi = ", day, weather" else obi = ", day" end
			elseif spell.element == world.weather_element then
				obi = ", weather"
				equip(sets.matching_dayweather)
			else obi = "" end
		else obi = "" end
		
		-- check MP for ugg. pendant
		if player.mp < math.floor(nakedMP * 0.5) + math.floor(spell.mp_cost * 0.75) then
			equip({neck="Uggalepih Pendant"})
			ugg = ", ugg"
		else ugg = "" end
		
		-- sorc. ring
		if player.hp < math.floor(nakedHP * 0.76) or buffactive['Weakness'] then
			equip({ring2 = "Sorcerer's Ring"})
			sorc = ", sorc"
		else sorc = "" end
		
		-- informative text
		addedmagicinfo = skill .. obi .. ugg .. sorc
		
	end
end

function equip_dark(spell)

	-- Stun
	if spell.name == 'Stun' then
		equip(sets.dark_magic.stun)
		
	-- Other spells
	else
		equip(sets.dark_magic)
		
		-- Obi/legs/ring for Drain/Aspir
		if spell.name == 'Aspir' or spell.name == 'Drain' then
		
			-- Diabolos's Ring
			if spell.element == world.day_element then
				addedmagicinfo = "on matching day"
				equip({right_ring="Diabolos's Ring"}) -- ring
			end
		
			-- Matching day
			if obi_check(spell) then
				if spell.element == world.day_element then
					-- do not equip relic pants if it's double weather and matching day, as that exceeds the +40% day/weather bonus cap even without them
					addedmagicinfo = "on matching day"
					equip(sets.matching_day) -- legs and obi
					equip({right_ring="Diabolos's Ring"}) -- ring
					
					-- Matching day and weather
					if spell.element == world.weather_element then
						addedmagicinfo = "on matching day and weather"
					end
					
				-- Matching weather
				elseif spell.element == world.weather_element then
					addedmagicinfo = "in matching weather"
					equip(sets.matching_dayweather) -- obi
				end
			end
			
			-- Diabolos's Pole in weather
			if spell.element == world.weather_element then
				equip({main="Diabolos's Pole"})
			end
		end
	end
end

-----------------------
-- Pre/mid/aftercast --
-----------------------
 
-- Before casting/using ability
function precast(spell)

	--send_command("input //send Eneding /" .. spell.name .. " <tid>")

	-- Magic
	if spell.action_type == 'Magic' then
	
		-- Cancel magic when it is not up yet
		local spell_recasts = windower.ffxi.get_spell_recasts()
		if spell_recasts[spell.recast_id] > 60 then -- some margin to account for server lag
			add_to_chat(167,spell.english .. ' is still on cooldown!')
			cancel_spell()
		else

			-- Fast cast for all spells	
			equip(sets.precastfastcast)	
		
			-- Cancel status effects for spells that don't overwrite themselves
			if spell.name == "Sneak" then send_command("cancel sneak") end
			if spell.name == "Stoneskin" then send_command("wait 4;cancel stoneskin") end
			if spell.name == "Reraise" then send_command("cancel reraise") end
			if spell.name == "Blink" then send_command("wait 4;cancel blink") end
			if spell.name == "Aquaveil" then send_command("wait 4;cancel aquaveil") end
			if spell.name == "Ice Spikes" then send_command("cancel ice spikes") end
			if spell.name == "Shock Spikes" then send_command("cancel shock spikes") end
			if spell.name == "Phalanx" then send_command("cancel phalanx") end
		end
		
	-- Abilities	
	else
		-- Cancel sneak when using Spectral Jig
		if spell.name == "Spectral Jig" then
			send_command("cancel sneak")

		-- Weaponskills
		elseif spell.type == 'WeaponSkill' then
			equip_ws(spell.name)
		
		-- Ranged attack
		elseif spell.action_type == 'Ranged Attack' then
			equip(sets.throwing) 
		end
	end
end

-- During casting magic
function midcast(spell)
 
	mpcost = tostring(spell.mp_cost)
	addedmagicinfo = ""
	showmagicinfo = display_mp_cost
	magicinfocolor = 0
 
	if spell.skill == 'Healing Magic' then
        equip_heal(spell)
		magicinfocolor = 8
    elseif spell.skill == 'Enfeebling Magic' then
        equip_enfeebling(spell)
		magicinfocolor = 7
    elseif spell.skill == 'Enhancing Magic' then
        equip_enhancing(spell)
		magicinfocolor = 50
    elseif spell.skill == 'Elemental Magic' then
		equip_nuke(spell)
		magicinfocolor = 3
    elseif spell.skill == 'Dark Magic' then
        equip_dark(spell)
		magicinfocolor = 207
    else
		showmagicinfo = false
	end
	
	if showmagicinfo then
	
		-- align text
		if string.len(mpcost) == 1 then
			mpcost = ' *** ' .. mpcost
		elseif string.len(mpcost) == 2 then
			mpcost = ' ** ' .. mpcost
		elseif string.len(mpcost) == 3 then
			mpcost = ' * ' .. mpcost
		end
		
		-- display text
		if addedmagicinfo == "" then
			windower.add_to_chat(magicinfocolor,mpcost .. " MP \t" .. spell.name)
		else
			windower.add_to_chat(magicinfocolor,mpcost .. " MP \t" .. spell.name .. ": " .. addedmagicinfo)
		end
	end
	
	-- Magic chats (here so you only say this when you can actually cast the spell)
	-- WARNING: Use player.target.name if you use <t>. I have these on <stnpc> macros, so I use player.subtarget.name
	--if spell.name == 'Stun' then send_command('input /p Stunning <t>! <wstar> Stun down for 34s!') end
	--if spell.name == 'Sleep' or spell.name == 'Sleep II' then send_command('input /p Sleeping ' .. player.subtarget.name .. '! <wstar> Disengage!') end 
	--if spell.name == 'Bind' then send_command('input /p Binding ' .. player.subtarget.name .. '! <wstar> Disengage!') end 
end
 
-- After casting or using an ability
function aftercast(spell)
    choose_set()
end

---------------------
-- Player commands --
---------------------
 
function self_command(command)

	-- Change melee mode
	if command == "meleeMode" then
		meleeMode:cycle() -- go to next
		
		local temp = meleeMode.value
		if temp == 'club' or temp == 'staffacc' or temp == 'staffhaste'then
			enable('main','sub','range','ammo')
			if temp == 'club' then
				equip(sets.weapons.club)
			elseif temp == 'staffacc' or temp == 'staffhaste' then
				equip(sets.weapons.staff)
			end
			disable('main','sub','range','ammo')
			windower.add_to_chat(122,'Meleeing in ' .. meleeMode.current)
			
		elseif temp == 'mage' then -- mage mode
			enable('main','sub','range','ammo')
			windower.add_to_chat(122,'Mage mode')
		end
		choose_set()

	-- Potency/skill nukes
    elseif command == "nukeDmg" then
		if nukeDmg == false then
			nukeDmg = true
			windower.add_to_chat(122,'Nuking in potency')
		else
			nukeDmg = false
			windower.add_to_chat(122,'Nuking in skill')
		end
		
	-- Induce yellow HP
	elseif command == "toyellowHP" then
		if buffactive['Weakness'] then
			add_to_chat(167,'You cannot use the yellow HP macro while weakened.')
		else
			equip_yellow()
		end
	
	-- Toggle MP info
	elseif command == "dispmp" then
		if display_mp_cost then
			display_mp_cost = false
			windower.add_to_chat(122,'Stop showing magic MP cost.')
		else
			display_mp_cost = true
			windower.add_to_chat(122,'Show magic MP cost.')
		end	
	
	-- Toggle Terra's/Claustrum in idle
	elseif command == "use_terras" then
		if use_terras then
			use_terras = false
			windower.add_to_chat(122,'Using Claustrum in idle.')
		else
			use_terras = true
			windower.add_to_chat(122,'Using Terra\'s Staff in idle')
		end	
		choose_set()
			
	-- Clipping plane (requires Config plugin)
	elseif command == "clippingPlane" then
		clippingPlane:cycle()
		send_command('input //config ClippingPlane ' .. clippingPlane.value)
		windower.add_to_chat(122,"ClippingPlane: " .. clippingPlane.current)
	end
		
end

---------------
-- Init code --
---------------

enable('main','sub','range','ammo','head','neck','left_ear','right_ear','body','hands','left_ring','right_ring','back','waist','legs','feet')
--send_command('wait 1; input /cm u;wait 1;gs equip idle;wait 1;input /macro book 2;wait 2; input !myth; wait 1; input /echo Gearswap loaded.')
job = 'BLM';
slot = '3';
send_command(
	'wait 1; input /macro book '..slot..'; '..
	'wait 1; input /macro set 1; '..
	'wait 1; input /echo .       ==> '..job..' Gearswap Loaded, Macro Book '..slot..', Set 1 equipped, all slots changeable...; '..
	'wait 1; input /lockstyleset '..slot)