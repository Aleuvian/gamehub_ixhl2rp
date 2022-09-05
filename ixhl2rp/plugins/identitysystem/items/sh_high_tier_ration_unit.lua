ITEM.name = "High Tier Ration Unit"
ITEM.model = "models/weapons/w_packatp.mdl"
ITEM.description = "A priority tier ration packet. A meal fit for a king."

ITEM.functions.Open = {
	name = "Open",
	OnRun = function(item)
		local char = item.player:GetCharacter()
		local inv = char:GetInventory()
		inv:Add("union_chocolate", 1, "union_cereal", 1, "union sapple", 1, "union_water", 1)
		item.player:EmitSound("physics/cardboard/cardboard_cup_impact_hard1.wav")
	end
}