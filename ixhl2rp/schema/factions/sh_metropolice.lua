
FACTION.name = "Combine Civil Authority"
FACTION.description = "A civil protection enforcer, in service to the Combine."
FACTION.color = Color(50, 100, 150)
FACTION.pay = 20
FACTION.models = {"models/police.mdl"}
FACTION.weapons = {"ix_stunstick"}
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}

-- another rewrite of line 14-30 lol 

function FACTION:OnCharacterCreated(client, character)
    local inventory = character:GetInventory()
    local str        = "CCA:c24.i2-A"..math.random(00,99) .. "://"..math.random(00000,99999)
    local TimeStamp = os.time()
    local TimeString= os.date("%H:%M:%S - %d%m%Y", TimeStamp)

    inventory:Add("pistol", 1)
    inventory:Add("pistolammo", 2)
    inventory:Add("cid", 1, { -- Compatibility for IdentitySystem.
        ["citizen_name"]             = character:GetName(),
        ["service_number"]            = str,
        ["cid"]                        = str,
        ["issue_date"]                = TimeString,
        ["cca"]                        = true,
        ["associated_character"]    = character:GetID()
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
