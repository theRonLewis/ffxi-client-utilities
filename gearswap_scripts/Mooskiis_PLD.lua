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

	sets.gear = {
		main="Bee Spatha +1",
		sub="Pelte",
		range="Self Bow +1",
		ammo="Bone Arrow",

		head="Leather Bandana",
		neck="Justice Badge",
		body="Linen Robe +1",
		hands="Scale Fng. Gnt.",
		legs="Linen Slops +1",
		feet="Bounding Boots",
		back="Traveler's Mantle",
		--waist="Hierarch Belt",
		
		ear1="Energy Earring +1",
		ear2="Energy Earring +1",
		ring1="Eremite's Ring +1",
		ring2="Eremite's Ring +1"
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

	-- none

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
	--windower.add_to_chat(8,'status change... new: ' .. new)

	if new == "Resting" then
		--windower.add_to_chat(8,'now resting')
		--equip(sets.resting)

	elseif new == "Idle" then
		--windower.add_to_chat(8,'now idle')
		--equip(sets.aftercast.idle)

	end	

end

-----------------------------------------------------------------------------------

---------------------
-- Player commands --
--------------------- 

function self_command(command)


end
-----------------------------------------------------------------------------------




---------------
-- Init code --
--------------- 

enable('main','sub','range','ammo','head','neck','left_ear','right_ear','body','hands','left_ring','right_ring','back','waist','legs','feet') 
job = 'PLD';
slot = '13';
send_command(
	'wait 1; input /macro book '..slot..'; '..
	'wait 1; input /macro set 1; '..
	'wait 1; input /echo .       ==> '..job..' Gearswap Loaded, Macro Book '..slot..', Set 1 equipped, all slots changeable...; '..
	'wait 1; input /lockstyleset '..slot)