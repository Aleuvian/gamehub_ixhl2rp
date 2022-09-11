
ITEM.name = "Citizen ID"
ITEM.model = Model("models/dorado/tarjeta2.mdl")
ITEM.description = "A citizen identification card with ID #%s, assigned to %s."

function ITEM:GetDescription()
	return string.format(self.description, self:GetData("id", "00000"), self:GetData("name", "nobody"))
end
