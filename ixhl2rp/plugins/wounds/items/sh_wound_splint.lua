
local PLUGIN = PLUGIN
ITEM.name = "Splint"
ITEM.model = Model("models/carlsmei/escapefromtarkov/medical/bandage_med.mdl")
ITEM.description = "A flexible piece of tightly woven fabric that, when applied tightly to a limb, will hold a fracture in place."
ITEM.category = "Medical"
ITEM.price = 25

ITEM.functions.Apply = {
	name = "Heal yourself",
	icon = "icon16/heart.png",
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		PLUGIN:SetFracture(itemTable.player, false)
	end
}

ITEM.functions.ApplyTarget = {
	name = "Heal the person opposite",
	icon = "icon16/heart_add.png",
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local data = {}
			data.start = pl:GetShootPos()
			data.endpos = data.start + pl:GetAimVector() * 96
			data.filter = pl
		local target = util.TraceLine(data).Entity

		if target:IsValid() and target:IsPlayer() then
			PLUGIN:SetFracture(target, false)
			return true
		end

		return false
	end
}