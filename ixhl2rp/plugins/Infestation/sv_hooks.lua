
local PLUGIN = PLUGIN
PLUGIN.trashList = {}
PLUGIN.trashModels = {
    'models/jq/hlvr/props/xenpack/xen_flat_blob01.mdl',
    'models/jq/hlvr/props/xenpack/xen_flat_blob01_barrel_mush01.mdl',
    'models/jq/hlvr/props/xenpack/xen_strand_anchor008.mdl',
}
PLUGIN.BadItemTypes = {
    'item_example1',
    'item_example2'
}

function PLUGIN:InitializedPlugins()
    for uniqueID, ITEM in pairs(ix.item.list) do
		if (ITEM.category == "Junks" or ITEM.category == "Stackable") and !table.HasValue(self.trashList, uniqueID) then
            if table.HasValue(self.BadItemTypes, ITEM.uniqueID) then continue end
			self.trashList[#self.trashList + 1] = uniqueID
		end
	end
end

function PLUGIN:Calculate(client, trashPile)
    if (IsValid(client) and client:IsPlayer() and IsValid(trashPile) and trashPile:GetClass() == "ix_infestation") then
        local character = client:GetCharacter()
        if !character then return end
        local bStatus = false

        for _, ent in ipairs(ents.FindInSphere(client:GetPos(), 50)) do
            if IsValid(ent) and ent:GetClass() == 'ix_infestation' then
                bStatus = true
                break
            end
        end

        if (trashPile:GetNetVar('looted', false) == true) then return end
        if (bStatus) then
            local dropChance = (ix.config.Get('InfestationItemDropChance', 40) >= math.random(100))

            if (dropChance) then
                local dropItems = {}
                local itemsStacks = math.random( ix.config.Get('InfestationItemsStacks', 3) )

                for i = 1, itemsStacks do
                    dropItems[#dropItems + 1] = table.Random(self.trashList)
                end

                for _, item in next, dropItems do
                    if !character:GetInventory():Add(item) then
                        ix.item.Spawn(item, client)
                    end

                    local itemName = (ix.item.list[item].name or "UNKNOWN ITEM")
                    client:Notify('You\'ve found: '..itemName)
                end

                trashPile:SetNetVar('looted', true)
                trashPile:SetNoDraw(true)
                self:PileCooldown(trashPile)
            else
                client:Notify('You didn\'t find anything')
                trashPile:SetNetVar('looted', true)
                trashPile:SetNoDraw(true)
                self:PileCooldown(trashPile)
            end
        end
    end
end

function PLUGIN:PileCooldown(trashPile, time)
    if (IsValid(trashPile) and trashPile:GetNetVar('looted') == true) then
        if !time then
            time = ix.config.Get('InfestationReload', 300)
        end

        timer.Create('InfestationReload.'..trashPile:EntIndex(), time, 0, function()
            if IsValid(trashPile) then
                trashPile:SetNetVar('looted', false)
                trashPile:SetNoDraw(false)
            end
        end)
    end
end

function PLUGIN:LoadData()
	local trashPiles = ix.data.Get("trashpiles")

	if (trashPiles) then
		for _, v in pairs(trashPiles) do
			local entity = ents.Create("ix_infestation")
			entity:SetAngles(v[1])
			entity:SetPos(v[2])
			entity:Spawn()
            entity:SetModel(v[5])

            if (v[4]) then
                if (v[3]) then
                    self:PileCooldown(entity, v[3])
                else
                    self:PileCooldown(entity)
                end
            end
		end
	end
end

local function getTimeLeft(trashpile)
    if timer.Exists('trashpileReload.'..trashpile:EntIndex()) then
        return timer.TimeLeft('trashpileReload.'..trashpile:EntIndex())
    else
        return false
    end
end

function PLUGIN:SaveData()
	local trashPiles = {}

	for k, v in pairs(ents.FindByClass("ix_infestation")) do
		trashPiles[#trashPiles + 1] = {
			v:GetAngles(),
			v:GetPos(),
			getTimeLeft(v),
            v:GetNetVar('looted', false),
            v:GetModel()
		}
	end

	ix.data.Set("trashpiles", trashPiles)
end
