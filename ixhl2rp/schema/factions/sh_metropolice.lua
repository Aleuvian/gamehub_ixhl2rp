
FACTION.name = "Combine Civil Authority"
FACTION.description = "A civil protection enforcer, in service to the Combine."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 20
FACTION.models = {"models/police.mdl"}
FACTION.weapons = {"ix_stunstick"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	local id = Schema:ZeroNumber(math.random(1, 99999), 5)	
	local service_number = Schema:ZeroNumber(math.random(1, 99999), 5)

	character:setdata("service#", service_number)
	character:setdata("cid," id)
	inventory:Add("pistol", 1)
	inventory:Add("pistolammo", 2)
	inventory:Add("cid", 1, { -- Compatibility for IdentitySystem.
		["citizen_name"] 			= character:GetName(),
		["service_number"]			= service_number,
		["cid"]						= id,
		["issue_date"]				= tostring(TimeString),
		["cca"]						= true,
		["associated_character"]	= character:GetID()
	})
end

function FACTION:GetDefaultName(client)
	return "CCA:c24-UNION.RCT." .. player:GetCharacter():Getdata(cid), true
end

function FACTION:OnTransferred(character)
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnNameChanged(client, oldValue, value)
	local character = client:GetCharacter()

	if (!Schema:IsCombineRank(oldValue, "RCT") and Schema:IsCombineRank(value, "RCT")) then
		character:JoinClass(CLASS_MPR)
	elseif (!Schema:IsCombineRank(oldValue, "OfC") and Schema:IsCombineRank(value, "OfC")) then
		character:SetModel("models/Police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "EpU") and Schema:IsCombineRank(value, "EpU")) then
		character:JoinClass(CLASS_EMP)

		character:SetModel("models/Police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "DvL") and Schema:IsCombineRank(value, "DvL")) then
		character:SetModel("models/Police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "SeC") and Schema:IsCombineRank(value, "SeC")) then
		character:SetModel("models/Police.mdl")
	elseif (!Schema:IsCombineRank(oldValue, "SCN") and Schema:IsCombineRank(value, "SCN")
	or !Schema:IsCombineRank(oldValue, "SHIELD") and Schema:IsCombineRank(value, "SHIELD")) then
		character:JoinClass(CLASS_MPS)
	end

	if (!Schema:IsCombineRank(oldValue, "GHOST") and Schema:IsCombineRank(value, "GHOST")) then
		character:SetModel("models/police.mdl")
	end
end

FACTION_MPF = FACTION.index
