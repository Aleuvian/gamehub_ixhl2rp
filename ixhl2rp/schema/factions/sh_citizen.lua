FACTION.name = "Citizen"
FACTION.description = "A regular human citizen enslaved by the Universal Union."
FACTION.color = Color(150, 125, 100, 255)
FACTION.isDefault = true

-- This is fetching the models, condensing 10 lines into 7, nice!
for i = 1, 7 do 
	table.insert(FACTION.models, "models/hl2rp/female_0"..i..".mdl")
end

for i = 1, 9 do
	table.insert(FACTION.models, "models/hl2rp/male_0"..i..".mdl")
end 

local TimeStamp = os.date( "%H:%M:%S - %d/%m/%y, Timestamp")

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)
	local inventory = character:GetInventory()
	local TimeStamp = os.date( "%H:%M:%S - %d/%m/%y, Timestamp")

	character:SetData("cid", id)

	inventory:Add("suitcase", 1)
	inventory:Add("transfer_papers", 1, {
		name = character:GetName(),
		id = id,
		issue_date = tostring(TimeString)
	})
end

FACTION_CITIZEN = FACTION.index
