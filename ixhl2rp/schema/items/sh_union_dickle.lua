
ITEM.name = "Union Pickles"
ITEM.model = Model("models/bioshockinfinite/dickle_jar.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A jar of sour pickles in too-strong vinegar."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
