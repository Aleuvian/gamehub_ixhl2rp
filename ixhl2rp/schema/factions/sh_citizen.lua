
FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true
FACTION.models = {
	"models/hl2rp/female_01.mdl",
	"models/hl2rp/female_02.mdl",
	"models/hl2rp/female_03.mdl",
	"models/hl2rp/female_04.mdl",
	"models/hl2rp/female_06.mdl",
	"models/hl2rp/female_07.mdl",
	"models/hl2rp/male_01.mdl",
	"models/hl2rp/male_02.mdl",
	"models/hl2rp/male_03.mdl",
	"models/hl2rp/male_04.mdl",
	"models/hl2rp/male_05.mdl",
	"models/hl2rp/male_06.mdl",
	"models/hl2rp/male_07.mdl",
	"models/hl2rp/male_08.mdl",
	"models/hl2rp/male_09.mdl"

}
function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("transfer_papers", 1, {
		name = character:GetName(),
		id = id
	})
end

FACTION_CITIZEN = FACTION.index
