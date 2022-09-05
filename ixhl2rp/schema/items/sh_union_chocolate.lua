
ITEM.name = "Union Chocolate"
ITEM.model = Model("models/bioshockinfinite/hext_candy_chocolate.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Chocolate flavored meal replacement."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
