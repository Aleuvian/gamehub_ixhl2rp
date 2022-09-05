
ITEM.name = "Lucky Token"
ITEM.model = Model("models/bioshockinfinite/hext_coin.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "It's your lucky day!"
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() - 25, 100))

		return true
	end,
}
