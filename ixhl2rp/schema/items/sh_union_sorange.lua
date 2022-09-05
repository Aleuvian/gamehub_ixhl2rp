
ITEM.name = "Union SynthOrange"
ITEM.model = Model("models/bioshockinfinite/hext_orange.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A synthetic Orange substitute. Prevents scurvy!"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
