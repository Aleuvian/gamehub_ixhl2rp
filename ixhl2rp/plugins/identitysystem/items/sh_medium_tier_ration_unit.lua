ITEM.name = "Medium Tier Ration Unit"
ITEM.model = "models/weapons/w_packatl.mdl"
ITEM.description = "A red ration packet. This is the best you've eaten in a long time."

ITEM.functions.Open = {
	name = "Open",
	OnRun = function(item)
		local char = item.player:GetCharacter()
		local inv = char:GetInventory()
		inv:Add("medium_supplements", 1)
		item.player:EmitSound("physics/cardboard/cardboard_cup_impact_hard1.wav")
	end
}