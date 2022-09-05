
ITEM.name = "Union Fish Flavored Food Replacement"
ITEM.model = Model("models/bioshockinfinite/cardine_can_open.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A horrific smelling sardine substitute."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
