
ITEM.name = "Union SynthBanana"
ITEM.model = Model("models/bioshockinfinite/hext_banana.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "I can't believe it's not a banana."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
