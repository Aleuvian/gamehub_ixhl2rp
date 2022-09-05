
ITEM.name = "Union Branded Chips"
ITEM.model = Model("models/bioshockinfinite/bag_of_hhips.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A bag of stale, crunchy potato-supplement flakes."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
