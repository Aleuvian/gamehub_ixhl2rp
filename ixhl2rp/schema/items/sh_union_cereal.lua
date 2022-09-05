
ITEM.name = "Union Bran Flakes"
ITEM.model = Model("models/bioshockinfinite/hext_cereal_box_cornflakes.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Dry, corn-substitute flakes. Without any milk."
ITEM.category = "Consumables"
ITEM.permit = "consumables"

ITEM.functions.Eat = {
	OnRun = function(itemTable)
		local client = itemTable.player

		client:SetHealth(math.min(client:Health() + 10, 100))

		return true
	end,
}
