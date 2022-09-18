CLASS.name = "Overwatch Officer"
CLASS.faction = FACTION_OTA
CLASS.isDefault = false

function CLASS:OnSet(client)
	local character = client:GetCharacter()

	if (character) then
		character:SetModel("models/combine_soldier.mdl")
	end
end

CLASS_OWS = CLASS.index
