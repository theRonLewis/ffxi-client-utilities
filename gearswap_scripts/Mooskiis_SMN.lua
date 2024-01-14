--[[
		----------------------
		--  Gear Wish List  --
		----------------------

		-- Relic Staff
		main		= "Claustrum", -- BLM augment has Refresh

		-- Absolute Virtue (Sin of Indolence)
		range		= "Aureole", -- M.ACC +8

		-- NM in Wajaom Woodlands
		head = "Karura Hachigane"

		feet		= "Rostrum Pumps", -- NM
		
		neck		= "Uggalepih Pendant",

		back		= "Astute Cape", Ix'DRG


]]--

--[[

----------------
-- Properties --
----------------

Only job-specific properties are shown here. For the general list, more info, tips etc. visit my Gearswap page: https://enedin.be/gs/

AUTOMATIC
- Adjusts your current perpetuation set to minimize MP loss, according to pet status/player status/day/weather.
- Informs party members of the effects of moonphase/day-dependent Blood Pacts.
- Cancels Blood Pacts/Assault when you are too far.

COMMANDS (Blood Pacts) (The full list can be found at the end of this file)
- bplowlv						Low-level Blood Pacts
- bpmidlv						Mid-level Blood Pacts
- bplv70						The level 65/70 Blood Pacts
- bplv75						The merited Group 2 Blood Pacts
- bpcure						Single-target cure
- bpcuraga						AoE cure
- bpbuffoffense					Mostly offensive buffs
- bpbuffdefense					Mostly defensive buffs
- bpdebuff1						Single-target debuffs
- bpdebuff2						AoE debuffs
- bpsleep						Shiva/Diabolos' Sleep
- bpaf							Astral Flow

COMMANDS (other)
- meleeMode						Cycle melee and weapon sets. Weapon/grip/ammo is locked except in mage mode.
- dispmp						Toggle showing spells' MP cost and other info.
- dispperp						Toggle showing your current perpetuation set.
- use_terras					Toggle the use of Claustrum/Terra's Staff in idle (useful for BLM Augment's Refresh).
- siphon						Auto-summon the correct Spirit for siphoning, siphon it and release it. The right Spirit is chosen based on day/weather.
- respirit						Release a Spirit and immediately re-summon it.
- reassault						Retreat a Spirit and let it assault again.
- endurance						Toggle Endurance mode, which keeps on Refresh gear instead of pet melee gear.
- showtime_bprage 				Informs party of the time until your next Blood Pact: Rage.
- showtime_bpward 				Informs party of the time until your next Blood Pact: Ward.
- showtime_apogee 				Informs party of the time until your next Apogee.

-------------------------
-- Tips/Best practices --
-------------------------

- Use Assault with <stnpc> macro. If you want to use <t> macro, do a search for #CHANGETARGET in this file, and follow the instructions in that comment.
- When using a Blood Pact, wait for it to be executed, or you might end up using the wrong gear for it.	

---------------------
-- About this file --
---------------------

CHANGELOG
- v2.12:	Stolen by Ron/Mooskiis. Audited for my current gear, and created a wishlist with details
- v2.11:	added Avatar's Favor to precast
- v2.10:	added reassault command (to force spirits to cast again)
- v2.9:		updated the blood pact commands:
			- removed tier2 and tier4 magics
			- added mid-level BPs (bpmidlv) and balanced the bplowlv and bpmidlv lists
			- added some BPs to debuff commands
			- added some BPs to buff commands
- v2.8:		added throwing weapon/melee set
- v2.7:		updated Obi handling
- v2.6:		added avatar-specific BP items such as Morana's Pigaches
- v2.5:		added idlesync for sync parties (uses Carby Mitts and MP gear everywhere else cuz MP syncs fairly well)
- v2.4:		added melee.staffhaste for situations where you can build TP on easier stuff
			added use_terras to switch between Terra's Staff and Claustrum in idle (for BLM augmented staff)
			changed melee command to meleeMode (for consistency with my other jobs)
- v2.3:		fixed a bug where the command was showtime_bpapogee instead of showtime_apogee
			fixed a bug where changing melee modes while resting would unequip resting gear
			changed the messages that you get when your BP/apogee abilities are ready to party chat
- v2.2:		added Endurance mode: prevent your pet-engaged gear from equipping when you want to keep maximum perp at all times
			useful when in weather/day to keep pet's MP cost down. can be toggled on or off
			fixed a bug where dispperp would still display 'Garuda' in wind weather even though AF2 would be equipped when using Garuda
- v2.1:		added cancellation of spells you want to cast when they're still on cooldown (to prevent gear changes and status cancels)
			added commands to show your party how long until your next BPrage, BPward or Apogee
- v2.0:		base (core functionality)

CREDITS
- Adapted this from Wren's GearSwap luas: https://supernovaffxi.fandom.com/wiki/Wren%27s_Gearswaps
- Included good ideas from Kinematic's SMN GearSwap lua: https://github.com/Kinematics/GearSwap-Jobs/blob/master/SMN.lua
- Thanks to Tehbonz for listening to me complain about Motes and eventually inspiring me to make this.	

]]--

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


----------
-- Sets --
----------

function get_sets()

	-- Including this gives an easy way of defining cyclic/trigger/etc variables, makes handling self_commands easier.
	-- Motes also uses this, but this is completely independent from Motes
	include('Modes.lua')

	-- Idle sets

	sets.idle = { -- Movement, PDT, MDT, Refresh, HP, MP
		main 		= "Terra's Staff",
	    --main		= "Claustrum", -- BLM augment has Refresh
		sub			= "Reign Grip",
		
		-- Absolute Virtue (Sin of Indolence)
		--range		= "Aureole", -- M.ACC +8
		ammo 		= "Hedgehog Bomb",

		head		= "Zenith Crown +1",
		body		= "Dalmatica +1",
		
		--hands		= "River Gauntlets", -- HP+60
		hands 		= "Summoner's Brcr.",

		-- Zan?? Phys Dmg -3%
		--legs		= "Goliard Trews",
		legs 		= "Summoner's Spats",
		feet		= "Herald's Gaiters",
		
		--neck		= "Orochi Nodowa +1",
		neck		= "Orochi Nodowa",
		waist		= "Hierarch Belt",
		

		-- Jailer of Love (Voracity)
		--left_ear	= "Novia Earring", -- EVA+ EMN-
		left_ear	= "Hades Earring", 

		-- ArkAngels
		--right_ear	= "Ethereal Earring", -- Converts 3% DMG taken to MP
		right_ear	= "Hades Earring",

		-- Dynamis Lord
		--left_ring	= "Shadow Ring", -- annuls magic dmg
		left_ring	= "Serket Ring",

		-- King Behemoth
		--right_ring	= "Defending Ring", -- dmg taken -10%
		right_ring	= "Evoker's Ring",

		back		= "Umbra Cape",
	}
	
	sets.idlesync = { -- MP and HP gear syncs fairly well, so use this for sync parties
	    ammo		= "Hedgehog Bomb",

		--head		= "Smn. Horn +1",
		head		= "Summoner's Horn",

		--body		= "Goliard Saio", -- mp+
		body		= "Summoner's Dblt.",
		hands		= "Carbuncle Mitts",

		--legs		= "Goliard Trews", -- mp+
		legs		= "Summoner's Spats",
		
		--feet		= "Rostrum Pumps",
		feet		= "Summoner's Pgch.",

		--neck		= "Uggalepih Pendant",
		neck		= "Beak Necklace +1",

		waist		= "Hierarch Belt",
		
		left_ear	= "Celestial Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Ether Ring",
		right_ring	= "Evoker's Ring",
		back		= "Gigant Mantle",
	}
	
	--[[ Perp sets
	
	Perp sets are equipped in this order, if applicabble:
	sets.perp
		.perp.melee (if you're meleeing)
		.perp.avatar/spirit (avatar-specific stuff)
		.perp.day/weather (when day/weather applies)
		.perp.engaged (if pet is engaged)
			.perp.endurance (if endurance mode is on)
				.perp.avatar/spirit (again to overwrite possible engaged stuff)
				.perp.day/weather  (again to overwrite possible engaged stuff)
			.perp.engaged.melee	(if you're meleeing)
	]]--

	sets.perp = { -- Perp cost-
	-- the base perp set
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		ammo 		= "Hedgehog Bomb",
		head		= "Zenith Crown +1",
		body		= "Penance Robe",
		--hands		= "Nashira Gages",
		hands		= "Zenith Mitts +1",
		--legs		= "Goliard Trews",
		legs		= "Summoner's Spats",
		feet		= "Evk. Pigaches +1",
		--neck		= "Orochi Nodowa +1",
		neck		= "Orochi Nodowa",
		waist		= "Hierarch Belt",
		--left_ear	= "Merman's Earring",
		--right_ear	= "Merman's Earring",
		left_ring	= "Evoker's Ring",
		right_ring	= "Defending Ring",
		back		= "Umbra Cape",
	}
	sets.perp.melee = set_combine(sets.perp,{ -- Perp cost- + acc for yourself
	-- a combination of the base perp set and your melee gear
		head		= "Optical Hat",
		legs		= "Hydra Brais",
		feet		= "Evk. Pigaches +1",
		neck		= "Ancient Torque",
		waist		= "Virtuoso Belt",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		--right_ring	= "Toreador's Ring",
		left_ring	= "Woodsman Ring",
		right_ring	= "Woodsman Ring",
	})
	
	sets.perp.carbuncle = { -- Carbuncle-specific items (Mitts and Claustrum/Chatoyant is enough to get free carby, so fill up other perp slots with useful gear)
		body		= "Yinyang Robe",
		hands		= "Carbuncle Mitts",
		left_ring	= "Shadow Ring",
	}
	sets.perp.spirit = {body = "Yinyang Robe"} -- Spirit-specific items
	sets.perp.garuda = {head = "Karura Hachigane"} -- Garuda-specific items
	sets.perp.day = {
		--body = "Smn. Doublet +1"
		body = "Summoner's Dblt."
	} -- Perp cost- on day
	
	sets.perp.weather = {
		--head = "Smn. Horn +1"
		head = "Summoner's Horn"
	} -- Perp cost- in weather
	
	sets.perp.engaged = { -- Avatar acc/atk/haste
	-- after sets.perp, this one is equipped when your pet is engaged
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		ammo 		= "Hedgehog Bomb",
		head		= "Spurrer Beret",
		--hands		= "Smn. Bracers +1",
		hands		= "Summoner's Brcr.",
		legs		= "Evoker's Spats",
		feet		= "Smn. Pigaches +1",
	}
	sets.perp.endurance = { -- Perp cost- (only this, since it overwrites perp.engaged)
	-- perp.engaged's relevant petacc/atk/haste slots will stay equipped even after equipping 
	-- perp.endurance, but only in slots where endurance has no perp- to offer.
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		--range		= "Aureole",
		ammo 		= "Hedgehog Bomb",
		body		= "Penance Robe",
		hands		= "Nashira Gages",
		--feet		= "Evk. Pigaches +1",
		feet		= "Evoker's Pigaches",
		left_ring	= "Evoker's Ring",
	}
	sets.perp.engaged.melee = { -- Acc for yourself (dont overwrite perp.engaged slots)
	-- this comes at the end, after perp.engaged or perp.endurance, so only define slots 
	-- here that won't overwrite relevant perp.engaged or perp.endurance slots
		neck		= "Ancient Torque",
		waist		= "Virtuoso Belt",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		right_ring	= "Toreador's Ring",
		back		= "Umbra Cape",
	}

	-- SMN potency sets

	sets.bpdelay = {  -- BP delay
		--head		= "Smn. Horn +1",
		head		= "Summoner's Horn",
		body		= "Yinyang Robe",
		--hands		= "Smn. Bracers +1",
		hands		= "Summoner's Brcr.",
		--legs		= "Smn. Spats +1",
		legs		= "Summoner's Spats",
		--feet		= "Summoner's Pgch.",
		feet		= "Summoner's Pgch.",
	}
	
	sets.siphon = { -- Summoning magic skill
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		head		= "Evoker's Horn",
		--hands		= "Smn. Bracers +1",
		hands		= "Summoner's Brcr.",
		--legs		= "Oracle's Braconi",
		legs		= "Penance Slops",
		--feet		= "Nashira Crackows",
		feet		= "Pennance Sabots",
		neck		= "Smn. Torque",
		waist		= "Summoning Belt",
		left_ear	= "Smn. Earring",
		left_ring	= "Evoker's Ring",
		back		= "Astute Cape",
	}

	sets.midcast = {}
	sets.midcast.bpragephys = set_combine(sets.siphon,{  -- BP potency (Summoning magic skill + acc/atk)
		body = "Smn. Doublet +1",
		legs = "Evoker's Spats",
		feet = "Smn. Pigaches +1",
	})
	sets.midcast.bpragemag = sets.siphon  -- BP potency (Summoning magic skill + macc/matk)
	sets.midcast.bpwarddebuff = sets.siphon  -- BP potency (Summoning magic skill)
	sets.midcast.bpwardbuff = sets.siphon  -- BP potency (Summoning magic skill)
	
	sets.midcast.bpragemag.shiva = set_combine(sets.midcast.bpragemag,{feet = "Morana Pigaches"}) -- Magic BP accuracy for Shiva
	sets.midcast.bpragephys.fenrir = set_combine(sets.midcast.bpragephys,{head = "Fenrir's Crown"}) -- Physical BP accuracy for Fenrir
	sets.midcast.bpragephys.garuda = set_combine(sets.midcast.bpragephys,{head = "Karura Hachigane"}) -- Physical BP attack for Garuda

	-- Magic sets

	sets.healing_magic = { -- Cure Potency > 1MND = 3VIT = 5skill
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Hedgehog Bomb",
		head		= "Maat's Cap",
		body		= "Mahatma Hpl.",
		hands		= "Dvt. Mitts +1",
		legs		= "Mahatma Slops",
		feet		= "Mahatma Pigaches",
		--neck		= "Fylgja Torque +1",
		neck		= "Fylgja Torque",
		waist		= "Pythia Sash +1",
		left_ear	= "Roundel Earring",
		right_ear	= "Celestial Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Dew Silk Cape +1",
	}

	sets.enhancing_magic = { -- Skill (pot)
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Vivid Strap +1",
		feet		= "Rostrum Pumps",
		neck		= "Enhancing Torque",
		left_ear	= "Augment. Earring",
		right_ear	= "Loquac. Earring",
		back		= "Merciful Cape",
	}
	
	sets.enhancing_magic.stoneskin = { -- MND (pot)
	 -- With 131 (/whm+16merits+10claustrum) skill and 450 being SN cap, you need 167 MND on SMN to get cap 
	    --main		= "Claustrum",
	    main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Hedgehog Bomb",
		--head		= "Maat's Cap",
		head		= "Zenith Crown +1",
		body		= "Mahatma Hpl.",
		--hands		= "Dvt. Mitts +1",
		hands		= "Seer's Mitts +1",
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

	-- Fast Cast and Haste sets

	sets.precastfastcast = { -- Fast Cast (casting time)
		sub			= "Vivid Strap +1",
		right_ear   = "Loquac. Earring",
		feet		= "Rostrum Pumps",
		back		= "Veela Cape"
	}
	sets.fastcasthaste = { -- Fast Caste = Haste (recast time)
	    --main		= "Claustrum",
	    main		= "Chatoyant Staff",
		sub			= "Vivid Strap +1",
		ammo		= "Hedgehog Bomb",
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

	sets.matching_dayweather = {waist="Hachirin-no-Obi"}
	
	sets.resting = { -- hMP
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Reign Grip",
		ammo		= "Hedgehog Bomb",
		head		= "Mirror Tiara",
		body		= "Mahatma Hpl.",
		hands		= "Oracle's Gloves",
		legs		= "Oracle's Braconi",
		feet		= "Goliard Clogs",
		--neck		= "Gnole Torque",
		neck		= "Beak necklace +1",
		waist		= "Qiqirn Sash +1",
		left_ear	= "Relaxing Earring",
		right_ear	= "Antivenom Earring",
		left_ring	= "Celestial Ring",
		right_ring	= "Celestial Ring",
		back		= "Invigorating Cape"
	}

	-- Melee sets

	sets.melee = {}
	sets.melee.club = { -- Haste > whatever is best in that slot
	    head		= "Walahra Turban",
		body		= "Goliard Saio",
		hands		= "Hydra Gloves",
		legs		= "Nashira Seraweels",
		feet		= "Hydra Gaiters",
		neck		= "Ire Torque +1",
		waist		= "Ninurta's Sash",
		left_ear	= "Merman's Earring",
		right_ear	= "Merman's Earring",
		left_ring	= "Rajas Ring",
		right_ring	= "Defending Ring",
		back		= "Umbra Cape",
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
		head		= "Optical Hat",
		body		= "Hydra Doublet",
		hands		= "Hydra Gloves",
		legs		= "Hydra Brais",
		feet		= "Hydra Gaiters",
		neck		= "Ancient Torque",
		waist		= "Virtuoso Belt",
		left_ear	= "Pixie Earring",
		right_ear	= "Brutal Earring",
		left_ring	= "Toreador's Ring",
		right_ring	= "Defending Ring",
		back		= "Umbra Cape",
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
		--main		= "Claustrum",
		main		= "Chatoyant Staff",
		sub			= "Pole Grip",
	}
	
	sets.ws = {}
	sets.ws.gateoftartarus = set_combine(sets.melee.staff,{ -- Accuracy
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

	-- Don't change this:
	melee = false
	bp_waiting_for_execution = false
	oldperpinfo = ''
	setup_job()
	
	-- Default values, feel free to change
	endurance_mode = false 					-- true: pet doesn't go into engaged perp set, it keeps on most MP efficient perp set
	display_mp_cost = true 					-- true: show cost of MP and Blood Pacts
	display_perp_set = true 				-- true: show current perp set
	use_terras = false						-- true: use Terra's Staff in idle (over BLM augmented Claustrum)
	display_info_to_party = false			-- true: will send BP Ward info to party, false goes to echo
	
	-- Lists of options. Default value is the first one
	clippingPlane = M{'1', '0.75', '0.5', '10', '5', '2'}	-- config ClippingPlane value
	meleeMode = M{'mage','staffhaste','staffacc','club'}	-- melee modes
	
end

---------------
-- Functions --
---------------

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
	
	-- if you've got a pet, it takes priority
	if pet.isvalid then equip_perp(pet.name) end

end

function equip_idle(name)

	equip(sets.idle)
	if use_terras then equip({main="Terra's Staff"}) end
	
	-- if you've got a pet, it takes priority
	if pet.isvalid then equip_perp(pet.name) end
	
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


-- Auto-detect when a pet changes states
function pet_status_change(new,old)
	-- if pet engages a monster, or comes back from engaging it
	if (old == 'Engaged' and new == 'Idle') or (old == 'Idle' and new == 'Engaged') then
		equip_perp(pet.name)
	end
end

-- Auto-detect when a pet is summoned or dismissed/dies
function pet_change(pet,gain)
	-- if pet dies (or you Release it), go back to the correct non-perp idle set
	if gain == false then
		oldperpinfo = '' -- reset oldperpinfo, we want the new one to show always
		choose_set()
	end
end

function equip_bp(spell)

	-- For reducing BP delay, since in precast it doesn't seem to do shit
	equip(sets.bpdelay)
	
	-- Figure out which set to use for the BP
	local bpequip = ''
	local bptype = get_bp_type(spell)
	if bptype == 'RagePhys' then
		bpequip = 'midcast.bpragephys'
	elseif bptype == 'RageMag' then
		bpequip = 'midcast.bpragemag'
	elseif bptype == 'WardDebuff' then
		bpequip = 'midcast.bpwarddebuff'
	elseif bptype == 'WardBuff' then
		bpequip = 'midcast.bpwardbuff'
	end
	
	-- Avatar-specific BP equipment
	if spell.name == "Blizzard II" or spell.name == "Blizzard IV" or spell.name == "Heavenly Strike" then bpequip = 'midcast.bpragemag.shiva' end
	if spell.name == "Moonlit Charge" or spell.name == "Crescent Fang" or spell.name == "Eclipse Bite" then bpequip = 'midcast.bpragephys.fenrir' end
	if spell.name == "Claw" or spell.name == "Predator Claws" then bpequip = 'midcast.bpragephys.garuda' end
	
	-- Delayed equip to let BPdelay- gear work properly
	send_command('wait 1;input //gs equip ' .. bpequip)
	
	-- Skip aftercast while waiting for BP execution
	bp_waiting_for_execution = true
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
	 -- if you're enfeebling on SMN, I take it you mean Dia so no potency gear here
	equip(sets.fastcasthaste)
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

-- Equips the right perp set
function equip_perp(name)

	local write_info = display_perp_set
	local addedperpinfo = ''
	local pava = ''
	local pday = ''
	local pweather = ''
	local pengaged = ''
	
	-- Start with your regular, idle pet perp set
	equip(sets.perp)
	pengaged = "idle"
	
	-- Player is meleeing
	if player.status == "Engaged" then
		equip(sets.perp.melee)
		pengaged = "idle/melee"
	end
	
	-- Garuda (before weather since weather head is better than Garuda's piece)
	if name == 'Garuda' then
		equip(sets.perp.garuda)
		pava = ', Garuda'
	end
	
	-- Carbuncle (has no day/weather check since it's free)
	if name == 'Carbuncle' then
		equip(sets.perp.carbuncle)
		pava = ', Carbuncle'
	end
	
	-- Spirits (has no day/weather check since it's free)
	if name:contains('Spirit') then
		equip(sets.perp.spirit)
		pava = ', Spirit'
	end
	
	-- check day
	if (name == 'Ifrit' and world.day_element == 'Fire')
	or (name == 'Shiva' and world.day_element == 'Ice')
	or (name == 'Garuda' and world.day_element == 'Wind')
	or (name == 'Titan' and world.day_element == 'Earth')
	or (name == 'Ramuh' and world.day_element == 'Lightning')
	or (name == 'Leviathan' and world.day_element == 'Water')
	or ((name == 'Diabolos' or name == 'Fenrir') and world.day_element == 'Dark') then
		equip(sets.perp.day)
		pday = ', day'
	end
	
	-- check weather
	if (name == 'Ifrit' and world.weather_element == 'Fire')
	or (name == 'Shiva' and world.weather_element == 'Ice')
	or (name == 'Garuda' and world.weather_element == 'Wind')
	or (name == 'Titan' and world.weather_element == 'Earth')
	or (name == 'Ramuh' and world.weather_element == 'Lightning')
	or (name == 'Leviathan' and world.weather_element == 'Water')
	or ((name == 'Diabolos' or name == 'Fenrir') and world.weather_element == 'Dark') then
		equip(sets.perp.weather)
		pweather = ', weather'
	end
	
	-- engaged pet
	if pet.status == 'Engaged' then
		equip(sets.perp.engaged)
		pengaged = 'engaged'
		
		-- endurance mode overwrites some engaged stuff to maximize perp cost
		if endurance_mode then 
			equip(sets.perp.endurance)
			pengaged = "endurance"
			
			-- Repeat of all the above functions. Engaged < Endurance < day/weather/avatar-specific stuff
			if name == 'Garuda' then
				equip(sets.perp.garuda)
				pava = ', Garuda'
			end
			if name == 'Carbuncle' then
				equip(sets.perp.carbuncle)
				pava = ', Carbuncle'
			end
			if name:contains('Spirit') then
				equip(sets.perp.spirit)
				pava = ', Spirit'
			end
			if (name == 'Ifrit' and world.day_element == 'Fire')
			or (name == 'Shiva' and world.day_element == 'Ice')
			or (name == 'Garuda' and world.day_element == 'Wind')
			or (name == 'Titan' and world.day_element == 'Earth')
			or (name == 'Ramuh' and world.day_element == 'Lightning')
			or (name == 'Leviathan' and world.day_element == 'Water')
			or ((name == 'Diabolos' or name == 'Fenrir') and world.day_element == 'Dark') then
				equip(sets.perp.day)
				pday = ', day'
			end
			if (name == 'Ifrit' and world.weather_element == 'Fire')
			or (name == 'Shiva' and world.weather_element == 'Ice')
			or (name == 'Garuda' and world.weather_element == 'Wind')
			or (name == 'Titan' and world.weather_element == 'Earth')
			or (name == 'Ramuh' and world.weather_element == 'Lightning')
			or (name == 'Leviathan' and world.weather_element == 'Water')
			or ((name == 'Diabolos' or name == 'Fenrir') and world.weather_element == 'Dark') then
				equip(sets.perp.weather)
				pweather = ', weather'
			end
		end
		
		-- Player is meleeing
		if player.status == "Engaged" then
			equip(sets.perp.engaged.melee)
			if endurance_mode then pengaged = "endurance/melee" else pengaged = "engaged/melee" end
		end

		-- Carbuncle Mitts overwrite Smn. Bracers +1 (engaged) or Nashira Gages (endurance)
		if name == 'Carbuncle' then
			equip({hands = "Carbuncle Mitts"})
		end
		
	end

	-- Consolidate perp info string
	if pava == ', Garuda' and world.weather_element == 'Wind' then pava = '' end -- weather overwrites Garuda head piece
	addedperpinfo = pengaged .. pava .. pday .. pweather
	
	-- Check to see if the new perp info is the same as the old perp info. if so, don't write it again.
	if oldperpinfo == addedperpinfo then write_info = false end
	oldperpinfo = addedperpinfo
	
	-- Write the info string
	if write_info then windower.add_to_chat(160,"[" .. addedperpinfo .. "]") end
	
end

-- Get BP type
function get_bp_type(spell)
	if spell.type == 'BloodPactRage' then
		if magicalRagePacts:contains(spell.english) then
			return 'RageMag'
		elseif physicalRagePacts:contains(spell.english) then
			return 'RagePhys'
		end
	elseif spell.type == 'BloodPactWard' then
		if debuffWardPacts:contains(spell.english) then
			return 'WardDebuff'
		elseif buffWardPacts:contains(spell.english) then
			return 'WardBuff'
		end
	end
end 

-- Execute Blood Pacts with general commands
function execute_blood_pact(name)

	-- if you don't have a pet
    if pet.isvalid == false then
        add_to_chat(122,'No avatar currently available.')
        return
    end

	-- if you have a pet, but it's a spirit
    if pet.name:contains('Spirit') then
        add_to_chat(122,'Cannot use pacts with spirits.')
        return
    end
   
    -- if the name of the pact doesn't exist in the list
    if not pacts[name] then
        add_to_chat(122,'Unknown pact type: '..tostring(name))
        return
    end
    
	-- if the pact exists for that pet
    if pacts[name][pet.name] then
	
		-- if it's astral flow and you have astral flow active
        if name == 'af' and not buffactive['astral flow'] then
            add_to_chat(122,'Cannot use Astral Flow pacts at this time.')
            return
        end
        
        -- Target is either <me>, <stpc> or <stnpc>. <stpc> for Healing Ruby I/II, <me> for all other buffs/heals, <stnpc> for everything else
		if bptargets_stpc:contains(pacts[name][pet.name]) then
			send_command('input /pet "'..pacts[name][pet.name]..'" <stpc>')
		elseif bptargets_me:contains(pacts[name][pet.name]) then
			send_command('input /pet "'..pacts[name][pet.name]..'" <me>')
		else
			send_command('input /pet "'..pacts[name][pet.name]..'" <stnpc>')
		end
    else
        add_to_chat(122,pet.name..' does not have a pact of type ['..name..'].')
    end
	
end

-- send info to self or party pending flag
function send_info(msg)
	if display_info_to_party then
		send_command('input /p ' + msg)
	else
		send_command('input /echo ' + msg)
	end
end


-- Show information about spells' variable effects to the party (or yourself)
function blood_pact_information_for_party(name)
	
	if name == "Dream Shroud" then
		-- https://github.com/DarkstarProject/darkstar/blob/08f7115f028376eb4db577c465fc9cfc89abdeb7/scripts/globals/abilities/pets/dream_shroud.lua
		local hour = math.abs(12-math.floor(world.time/60))+1
		message = '- ' .. name .. ': MAB +' .. tostring(hour) .. ', MDB +' .. tostring(14-hour) .. ''
		send_info(message)
		--send_command('input /p - ' .. name .. ': MAB +' .. tostring(hour) .. ', MDB +' .. tostring(14-hour) .. '')
	end
	
	if name == "Lunar Cry" then
		-- https://github.com/DarkstarProject/darkstar/blob/08f7115f028376eb4db577c465fc9cfc89abdeb7/scripts/globals/abilities/pets/lunar_cry.lua
		local moon = 0
		if world.moon_pct > 90 then moon = 31
			elseif world.moon_pct > 75 then moon = 26
			elseif world.moon_pct > 60 then moon = 21
			elseif world.moon_pct > 40 then moon = 16
			elseif world.moon_pct > 24 then moon = 11
			elseif world.moon_pct > 10 then moon = 6
			else moon = 1
		end
		message = '- ' .. name .. ': Accuracy -' .. tostring(moon) .. ', Evasion -' .. tostring(32-moon) .. ''
		send_info(message)
		--send_command('input /p - ' .. name .. ': Accuracy -' .. tostring(moon) .. ', Evasion -' .. tostring(32-moon) .. '')
	end
	
	if name == "Ecliptic Growl" then
		-- https://github.com/DarkstarProject/darkstar/blob/08f7115f028376eb4db577c465fc9cfc89abdeb7/scripts/globals/abilities/pets/ecliptic_growl.lua
		local moon = 0
		if world.moon_pct > 90 then moon = 7
			elseif world.moon_pct > 75 then moon = 6
			elseif world.moon_pct > 60 then moon = 5
			elseif world.moon_pct > 40 then moon = 4
			elseif world.moon_pct > 24 then moon = 3
			elseif world.moon_pct > 10 then moon = 2
			else moon = 1
		end
		message = '- ' .. name .. ': STR/DEX/VIT +' .. tostring(moon) .. ', AGI/INT/MND/CHR +' .. tostring(8-moon) .. ''
		send_info(message)
		--send_command('input /p - ' .. name .. ': STR/DEX/VIT +' .. tostring(moon) .. ', AGI/INT/MND/CHR +' .. tostring(8-moon) .. '')
	end
	
	if name == "Ecliptic Howl" then
		-- https://github.com/DarkstarProject/darkstar/blob/08f7115f028376eb4db577c465fc9cfc89abdeb7/scripts/globals/abilities/pets/ecliptic_howl.lua
		local moon = 0
		if world.moon_pct > 90 then moon = 25
			elseif world.moon_pct > 75 then moon = 21
			elseif world.moon_pct > 60 then moon = 17
			elseif world.moon_pct > 40 then moon = 13
			elseif world.moon_pct > 24 then moon = 9
			elseif world.moon_pct > 10 then moon = 5
			else moon = 1
		end
		message = '- ' .. name .. ': Accuracy +' .. tostring(moon) .. ', Evasion +' .. tostring(25-moon) .. ''
		send_info(message)
		--send_command('input /p - ' .. name .. ': Accuracy +' .. tostring(moon) .. ', Evasion +' .. tostring(25-moon) .. '')
	end
	
end

-- Release your current spirit and immediately recast it (useful for soloing)
function respirit()

	if pet.isvalid then
		if pet.name:contains('Spirit') then
			local spirit_to_cast = ''
			if pet.name == 'FireSpirit' then spirit_to_cast = 'Fire Spirit' end
			if pet.name == 'IceSpirit' then spirit_to_cast = 'Ice Spirit' end
			if pet.name == 'AirSpirit' then spirit_to_cast = 'Air Spirit' end
			if pet.name == 'EarthSpirit' then spirit_to_cast = 'Earth Spirit' end
			if pet.name == 'ThunderSpirit' then spirit_to_cast = 'Thunder Spirit' end
			if pet.name == 'WaterSpirit' then spirit_to_cast = 'Water Spirit' end
			if pet.name == 'LightSpirit' then spirit_to_cast = 'Light Spirit' end
			if pet.name == 'DarkSpirit' then spirit_to_cast = 'Dark Spirit' end
			send_command('input /release <me>;wait 0.5;input /ma "' .. spirit_to_cast .. '"')
		else
			add_to_chat(122,'You do not have a Spirit out.')
		end
	else
		add_to_chat(122,'You do not have a pet out.')
	end
end

-- Retreat your current spirit and immediately let it assault again (useful for trying to force it to cast a spell)
function reassault()

	if pet.isvalid then
		if pet.name:contains('Spirit') then
			send_command('input /retreat <me>;wait 0.5;input /assault <t>')
		else
			add_to_chat(122,'You do not have a Spirit out.')
		end
	else
		add_to_chat(122,'You do not have a pet out.')
	end
end

-- Auto-Siphon
function auto_siphon()

	local element_to_use = world.day_element -- usual case
	
	-- if there's weather
	if world.weather_element ~= 'None' then
		-- if it's double weather, we choose weather element
		if (world.weather_id > 4 and world.weather_id %1 == 0) then
			element_to_use = world.weather_element
		else
			-- only use single weather element if it's not weak to the element of the current day
			if (world.weather_element == 'Fire' and world.day_element ~= 'Water')
			or (world.weather_element == 'Ice' and world.day_element ~= 'Fire')
			or (world.weather_element == 'Wind' and world.day_element ~= 'Ice')
			or (world.weather_element == 'Earth' and world.day_element ~= 'Wind')
			or (world.weather_element == 'Lightning' and world.day_element ~= 'Earth')
			or (world.weather_element == 'Water' and world.day_element ~= 'Lightning')
			or (world.weather_element == 'Dark' and world.day_element ~= 'Light')
			or (world.weather_element == 'Light' and world.day_element ~= 'Dark') then
				element_to_use = world.weather_element
			else
				-- use day element if the current day is strong to the current weather
				element_to_use = world.day_element
			end
		end
	else
		-- use day element if there's no weather
		element_to_use = world.day_element
	end
	
	-- check whether the right pet is out
	if pet.isvalid == true then
		-- if the right spirit is already out, just Siphon (I assume there's a reason it's out, so keep it out)
		if pet.name:contains('Spirit') and pet.element == element_to_use then
			send_command('input /ja "Elemental Siphon" <me>')
		else
			-- if the wrong pet is out, release it
			send_command('input /pet "Release" <me>')
			windower.add_to_chat(122, 'Wrong pet for Siphon: released ' .. pet.name .. '.')
		end
	else
		-- if you don't yet have a pet out, Summon, Siphon and Release
		local rest = ' wait 4.5; input /ja "Elemental Siphon" <me>; wait 1.5; input /pet "Release" <me>'
		if element_to_use == 'Fire' then send_command('input /ma "Fire Spirit" <me>;' .. rest) end
		if element_to_use == 'Ice' then send_command('input /ma "Ice Spirit" <me>;' .. rest) end
		if element_to_use == 'Wind' then send_command('input /ma "Air Spirit" <me>;' .. rest) end
		if element_to_use == 'Earth' then send_command('input /ma "Earth Spirit" <me>;' .. rest) end
		if element_to_use == 'Lightning' then send_command('input /ma "Thunder Spirit" <me>;' .. rest) end
		if element_to_use == 'Water' then send_command('input /ma "Water Spirit" <me>;' .. rest) end
		if element_to_use == 'Dark' then send_command('input /ma "Dark Spirit" <me>;' .. rest) end
		if element_to_use == 'Light' then send_command('input /ma "Light Spirit" <me>;' .. rest) end
	end
end

---------------------------------------
-- Pre/mid/aftercast/after_aftercast --
---------------------------------------
 
-- Before casting/using ability
function precast(spell)
	
	-- Magic
	if spell.action_type == 'Magic' then
	
		-- Cancel magic when it is not up yet
		local spell_recasts = windower.ffxi.get_spell_recasts()
		if spell_recasts[spell.recast_id] > 60 then  -- some margin to account for server lag
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
		
		-- Siphon
		elseif spell.name == 'Elemental Siphon' or spell.name == "Avatar's Favor" then
			equip(sets.siphon)
			--[[ Avatar's Favor would benefit from staying in Summoning Magic Skill gear, but as a
				 Summoner you're not going to just stand by idle anyway, or burn more MP than necessary.
				 Avatar's Favor is nice, but mostly an added bonus on top of your existing priorities. ]]--
			
		-- Ranged attack
		elseif spell.action_type == 'Ranged Attack' then
			equip(sets.throwing) 
			
		-- Weaponskills
		elseif spell.type == 'WeaponSkill' then
			equip_ws(spell.name)
			
		elseif spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard' then
			-- check whether we have to cancel the BP (due to being too far) so we don't change gear unnecessarily
			-- we KNOW that <stpc> and <stnpc> have to have a subtarget, so if we have none, it's a <me>
			if tostring(player.subtarget.name) ~= 'nil' then
				-- if it's a <stnpc> or <stpc>, check whether we're not too far
				if player.subtarget.distance > 18 then
					add_to_chat(122,'You are too far to use a Blood Pact.')
					cancel_spell()
				end
			end
		end
		
		-- Check whether you're not doing Assault in vain, as it triggers a gear change even if it doesn't complete because of distance
		if spell.name == 'Assault' then
			if player.subtarget.distance > 19 then -- subtarget for <stnpc> macro. if you wanna use <t>, use player.target.distance -- #CHANGETARGET
				cancel_spell()
				add_to_chat(122,'You are too far to use Assault.')
			end
		end
	end
end

-- During casting magic
function midcast(spell)

	mpcost = tostring(spell.mp_cost)
	addedmagicinfo = ""
	showmagicinfo = display_mp_cost
	magicinfocolor = 0
 
	if spell.action_type == 'Magic' then
		if spell.skill == 'Healing Magic' then
			equip_heal(spell)
			magicinfocolor = 8
		elseif spell.skill == 'Enfeebling Magic' then
			equip_enfeebling(spell)
			magicinfocolor = 7
		elseif spell.skill == 'Enhancing Magic' then
			equip_enhancing(spell)
			magicinfocolor = 50
		elseif spell.skill == 'Summoning Magic' then
			magicinfocolor = 207
		else
			showmagicinfo = false
		end
	elseif spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard' then
		equip_bp(spell)
		magicinfocolor = 3
	else
		showmagicinfo = false
	end
	
	if showmagicinfo then
	
		-- apogee adds 50% to spell cost
		if (spell.type == 'BloodPactRage' or spell.type == 'BloodPactWard') and buffactive['Apogee'] then
			mpcost = math.floor(mpcost*1.5)
			addedmagicinfo = "with Apogee"
		end
	
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
	
end
 
-- After casting or using an ability
function aftercast(spell)

	 -- when not just BPed, go to special aftercast (so it rightfully detects your (new) pet)
	if bp_waiting_for_execution == false then
		send_command('wait .5;input //gs c ac' .. spell.name)
	else -- don't swap when we're waiting for pet to complete BP
		bp_waiting_for_execution = false
		send_command('wait 5;input //gs c postbp')
	end
	
	-- show party members info about Blood Pacts with variable effects
	if spell.type == "BloodPactRage" or spell.type == "BloodPactWard" then
		blood_pact_information_for_party(spell.name)
	end
	
end

-- An aftercast after the real aftercast, so GS knows you have a pet (it doesn't when you just summoned or released it)
function after_aftercast(name)
	if pet.isvalid then
		equip_perp(pet.name)
	else
		choose_set(name)
	end
end 

---------------------
-- Player commands --
---------------------

function self_command(command)
    
	-- Change melee mode
	if command == "meleeMode" then
		meleeMode:cycle() -- go to next
		
		local temp = meleeMode.value
		if temp == 'club' or temp == 'staffacc' or temp == 'staffhaste' then
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
	
	-- SMN commands
	elseif command == "postbp" then
		equip_perp(pet.name)
	elseif string.sub(command, 1, 2) == "ac" then
		after_aftercast(string.sub(command, 3, -1))
	elseif command == "siphon" then
		auto_siphon()
	elseif string.sub(command, 1, 2) == "bp" then
		execute_blood_pact(string.sub(command, 3, -1))
	elseif command == "respirit" then
		respirit()
	elseif command == "reassault" then
		reassault()
		
	-- Endurance mode
	elseif command == 'endurance' then
		if endurance_mode == false then
			endurance_mode = true
			windower.add_to_chat(122,'Endurance mode: ON. An engaged pet will stay in the most MP efficient perp set.')
		else
			endurance_mode = false
			windower.add_to_chat(122,'Endurance mode: OFF. An engaged pet will swap gear for more pet accuracy/attack/haste.')
		end
		equip_idle()	
		
	-- Toggle info
	elseif command == "dispperp" then
		if display_perp_set then
			display_perp_set = false
			windower.add_to_chat(122,'Stop showing current perp set.')
		else
			display_perp_set = true
			windower.add_to_chat(122,'Show current perp set.')
		end
	elseif command == "dispmp" then
		if display_mp_cost then
			display_mp_cost = false
			windower.add_to_chat(122,'Stop showing magic/BP MP cost.')
		else
			display_mp_cost = true
			windower.add_to_chat(122,'Show magic/BP MP cost.')
		end
		
	-- Show BPrage, BPward and Apogee timers to party
	elseif command == "showtime_bprage" then
		local recast = math.ceil(windower.ffxi.get_ability_recasts()[173])
		if recast > 0 then
			send_command('input /p ' .. recast .. 's until Blood Pact: Rage.')
		else
			send_command('input /p Blood Pact: Rage is up now.')
		end
	elseif command == "showtime_bpward" then
		local recast = math.ceil(windower.ffxi.get_ability_recasts()[174])
		if recast > 0 then
			send_command('input /p ' .. recast .. 's until Blood Pact: Ward.')
		else
			send_command('input /p Blood Pact: Ward is up now.')
		end
	elseif command == "showtime_apogee" then
		local recast = math.ceil(windower.ffxi.get_ability_recasts()[108])
		if recast > 0 then
			send_command('input /p ' .. recast .. 's until Apogee.')
		else
			send_command('input /p Apogee is up now.')
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

function setup_job()

    spirits = S{"LightSpirit", "DarkSpirit", "FireSpirit", "EarthSpirit", "WaterSpirit", "AirSpirit", "IceSpirit", "ThunderSpirit"}
    avatars = S{"Carbuncle", "Fenrir", "Diabolos", "Ifrit", "Titan", "Leviathan", "Garuda", "Shiva", "Ramuh", "Odin", "Alexander"}

	bptargets_stpc = S{'Healing Ruby', 'Healing Ruby II'}
	bptargets_me = S{'Shining Ruby', 'Aerial Armor', 'Frost Armor', 'Rolling Thunder', 'Whispering Wind', 'Crimson Howl', 'Lightning Armor',
		'Ecliptic Growl', 'Glittering Ruby', 'Earthen Ward', 'Spring Water', 'Hastega', 'Noctoshield', 'Ecliptic Howl', 'Dream Shroud'}
	
    magicalRagePacts = S{
        'Inferno','Earthen Fury','Tidal Wave','Aerial Blast','Diamond Dust','Judgment Bolt','Searing Light','Howling Moon','Ruinous Omen',
        'Fire II','Stone II','Water II','Aero II','Blizzard II','Thunder II',
        'Fire IV','Stone IV','Water IV','Aero IV','Blizzard IV','Thunder IV',
        'Thunderspark','Burning Strike','Meteorite','Nether Blast',
        'Meteor Strike','Heavenly Strike','Wind Blade','Geocrush','Grand Fall','Thunderstorm'}
		
	physicalRagePacts = S{
		'Punch','Rock Throw','Barracuda Dive','Claw','Axe Kick','Shock Strike','Camisado','Poison Nails','Moonlit Charge','Crescent Fang',
		'Rock Buster','Burning Strike','Tail Whip','Double Punch','Megalith Throw','Double Slap','Meteorite',
		'Eclipse Bite','Nether Blast','Flaming Crush','Mountain Buster','Spinning Dive','Predator Claws','Rush','Chaotic Strike'}
		
	debuffWardPacts = S{
		'Somnolence','Lunar Cry','Nightmare','Lunar Roar','Slowga','Ultimate Terror','Sleepga'}
	
	buffWardPacts = S{
		'Healing Ruby','Shining Ruby','Aerial Armor','Frost Armor','Rolling Thunder','Whispering Wind','Crimson Howl','Lightning Armor',
		'Ecliptic Growl','Glittering Ruby','Earthen Ward','Spring Water','Hastega','Noctoshield','Ecliptic Howl','Dream Shroud','Healing Ruby II'}

    pacts = {}

    pacts.cure = {['Carbuncle']='Healing Ruby'}
    pacts.curaga = {['Carbuncle']='Healing Ruby II', ['Garuda']='Whispering Wind', ['Leviathan']='Spring Water'}
    pacts.buffoffense = {['Carbuncle']='Glittering Ruby', ['Ifrit']='Crimson Howl', ['Garuda']='Hastega', ['Ramuh']='Rolling Thunder',
		['Fenrir']='Ecliptic Growl',['Diabolos']='Dream Shroud'}
    pacts.buffdefense = {['Carbuncle']='Shining Ruby', ['Shiva']='Frost Armor', ['Garuda']='Aerial Armor', ['Titan']='Earthen Ward', ['Ramuh']='Lightning Armor',
		['Fenrir']='Ecliptic Howl', ['Diabolos']='Noctoshield'}
    pacts.debuff1 = {['Fenrir']='Lunar Cry', ['Diabolos']='Somnolence', ['Carbuncle']='Poison Nails', ['Titan']='Rock Throw'}
    pacts.debuff2 = {['Leviathan']='Slowga', ['Fenrir']='Lunar Roar', ['Ramuh']='Thunderspark', ['Diabolos']='Ultimate Terror'}
    pacts.sleep = {['Shiva']='Sleepga', ['Diabolos']='Nightmare'}
	pacts.lowlv ={['Carbuncle']='Poison Nails', ['Ifrit']='Punch', ['Shiva']='Axe Kick', ['Fenrir']='Crescent Fang', ['Diabolos']='Camisado', ['Ramuh']='Shock Strike', ['Leviathan']='Barracuda Dive', ['Titan']='Rock Throw', ['Garuda']='Claw'}
	pacts.midlv ={['Carbuncle']='Meteorite', ['Ifrit']='Double Punch', ['Shiva']='Double Slap', ['Titan']='Megalith Throw', ['Leviathan']='Tail Whip'}
    pacts.lv70 = {['Ifrit']='Flaming Crush', ['Shiva']='Rush', ['Garuda']='Predator Claws', ['Titan']='Mountain Buster',
        ['Ramuh']='Chaotic Strike', ['Leviathan']='Spinning Dive', ['Carbuncle']='Meteorite', ['Fenrir']='Eclipse Bite', ['Diabolos']='Nether Blast'}
    pacts.lv75 = {['Ifrit']='Meteor Strike', ['Shiva']='Heavenly Strike', ['Garuda']='Wind Blade', ['Titan']='Geocrush',
        ['Ramuh']='Thunderstorm', ['Leviathan']='Grand Fall'}
    pacts.af = {['Ifrit']='Inferno', ['Shiva']='Diamond Dust', ['Garuda']='Aerial Blast', ['Titan']='Earthen Fury',
        ['Ramuh']='Judgment Bolt', ['Leviathan']='Tidal Wave', ['Carbuncle']='Searing Light', ['Fenrir']='Howling Moon', ['Diabolos']='Ruinous Omen'}
	
end
 
enable('main','sub','range','ammo','head','neck','left_ear','right_ear','body','hands','left_ring','right_ring','back','waist','legs','feet')
-- send_command('wait 1; gs equip idle; wait 1; input /macro book 6; wait 1; input /macro set 1; wait 1; input /lockstyleset 12')
send_command('wait 1; input /macro book 5; wait 1; input /macro set 1; wait 1; input /echo .       ==> SMN Gearswap Loaded, Macro Book 5, Set 1 equipped; wait 1; input /lockstyleset 4')