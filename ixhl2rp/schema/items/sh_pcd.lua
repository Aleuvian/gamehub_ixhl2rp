
ITEM.name = "Purple Cheese Drank"
ITEM.model = Model("models/props_cunk/popcan01a.mdl")
ITEM.skin = 1
ITEM.description = "A bright purple can. Smells of cheese."
ITEM.category = "Consumables"

ITEM.functions.Drink = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:RestoreStamina(50)
		client:SetHealth(math.Clamp(client:Health() + 8, 0, client:GetMaxHealth()))
		client:EmitSound("npc/barnacle/barnacle_gulp2.wav", 75, 90, 0.35)
	end,
	OnCanRun = function(itemTable)
		return !itemTable.player:IsCombine()
	end
}
