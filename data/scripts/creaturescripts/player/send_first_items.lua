local config = {
	[VOCATION.ID.NONE] = {
		container = {
			{ 3003, 1 }, -- rope
			{ 3457, 1 }, -- shovel
		},
	},

	[VOCATION.ID.SORCERER] = {
		items = {
			{ 3445, 1 }, -- salamander shield
			{ 3074, 1 }, -- wand of vortex
			{ 8042, 1 }, -- spirit cloak
			{ 7992, 1 }, -- mage hat
			{ 3558, 1 }, -- chain legs
			{ 3551, 1 }, -- sandals
			{ 3085, 200 }, -- dragon necklace
			{ 19359, 1 }, -- horn
		},

		container = {
			{ 3003, 1 }, -- rope
			{ 5710, 1 }, -- light shovel
			{ 268, 10 }, -- mana potion
			{ 3075, 1 }, -- wand of dragonbreath
			{ 3725, 20 }, -- brown mushroom
		},
	},

	[VOCATION.ID.DRUID] = {
		items = {
			{ 3445, 1 }, -- salamander shield
			{ 3066, 1 }, -- snakebite rod
			{ 8042, 1 }, -- spirit cloak
			{ 7992, 1 }, -- mage hat
			{ 3558, 1 }, -- chain legs
			{ 3551, 1 }, -- sandals
			{ 3085, 200 }, -- dragon necklace
			{ 19359, 1 }, -- horn
		},

		container = {
			{ 3003, 1 }, -- rope
			{ 5710, 1 }, -- light shovel
			{ 268, 10 }, -- mana potion
			{ 3070, 1 }, -- moonlight rod
			{ 3725, 20 }, -- brown mushroom			
		},
	},

	[VOCATION.ID.PALADIN] = {
		items = {
			{ 17810, 1 }, -- spike shield
			{ 3277, 1 }, -- spear
			{ 8044, 1 }, -- belted cape
			{ 3372, 1 }, -- brass legs
			{ 3551, 1 }, -- sandals
			{ 3085, 200 }, -- dragon necklace
			{ 3351, 1 }, -- steel helmet
			{ 19359, 1 }, -- horn
		},

		container = {
			{ 3003, 1 }, -- rope
			{ 5710, 1 }, -- light shovel
			{ 266, 10 }, -- health potion
			{ 3350, 1 }, -- bow
			{ 3725, 20 }, -- brown mushroom
		},
	},

	[VOCATION.ID.KNIGHT] = {
		items = {
			{ 17810, 1 }, -- spike shield
			{ 3316, 1 }, -- orcish axe
			{ 3359, 1 }, -- brass armor
			{ 3384, 1 }, -- dark helmet
			{ 3372, 1 }, -- brass legs
			{ 3551, 1 }, -- sandals
			{ 3085, 200 }, -- dragon necklace
			{ 19359, 1 }, -- horn
		},

		container = {
			{ 3345, 1 }, -- templar scytheblade
			{ 3305, 1 }, -- battle hammer 
			{ 3003, 1 }, -- rope
			{ 5710, 1 }, -- light shovel
			{ 266, 10 }, -- health potion
			{ 3725, 20 }, -- brown mushroom
		},
	},
}

local sendFirstItems = CreatureEvent("SendFirstItems")

function sendFirstItems.onLogin(player)
	local targetVocation = config[player:getVocation():getId()]
	if not targetVocation or player:getLastLoginSaved() ~= 0 then
		return true
	end

	if targetVocation.items then
		for i = 1, #targetVocation.items do
			player:addItem(targetVocation.items[i][1], targetVocation.items[i][2])
		end
	end

	local backpack = player:addItem(2854)
	if not backpack then
		return true
	end

	if targetVocation.container then
		for i = 1, #targetVocation.container do
			backpack:addItem(targetVocation.container[i][1], targetVocation.container[i][2])
		end
	end

	if player:getVocation():getId() == VOCATION.ID.PALADIN then
		local quiver = player:addItem(35562)
		if not quiver then
			return true
		end

		quiver:addItem(3447, 100)
	end

	return true
end

sendFirstItems:register()
