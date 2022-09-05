
ITEM.name = "Union Bread"
ITEM.model = Model("models/bioshockinfinite/dread_loaf.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A loaf of bread emblazoned with a Combine moniker."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
