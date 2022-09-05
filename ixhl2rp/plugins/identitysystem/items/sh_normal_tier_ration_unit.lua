ITEM.name = "Normal Tier Ration Unit"
ITEM.model = "models/weapons/w_packatc.mdl"
ITEM.description = "A standard ration packet. You feel hungry by the next ration cycle."

ITEM.functions.Open = {
	name = "Open",
	OnRun = function(item)
		local char = item.player:GetCharacter()
		local inv = char:GetInventory()
		inv:Add("normal_supplements", 1)
		item.player:EmitSound("physics/cardboard/cardboard_cup_impact_hard1.wav")
	end
}