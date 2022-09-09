
PLUGIN.name = "Infestation"
PLUGIN.author = "Bilwin, Modified by Aleuvian"
PLUGIN.schema = "Any"
PLUGIN.version = 1.0

ix.config.Add("InfestationItemDropChance", 60, "Mass drop chance", nil, {
    data = {min = 1, max = 100},
    category = PLUGIN.name
})

ix.config.Add("InfestationItemsStacks", 3, "How much infested mass do you receive when you clean? (Random)", nil, {
    data = {min = 1, max = 15},
    category = PLUGIN.name
})

ix.config.Add("InfestationCleanTime", 20, "Use time", nil, {
    data = {min = 1, max = 60},
    category = PLUGIN.name
})

ix.config.Add("InfestationReload", 600, "Infestation reload (In seconds)", function(_, newValue)
    if (SERVER) then
        for _, ent in ipairs(ents.FindByClass('ix_trashpile')) do
            local uniqueID = 'trashpileReload.'..ent:EntIndex()
            if timer.Exists(uniqueID) and (ent:GetNetVar('looted', false) == true) then
                timer.Adjust(uniqueID, newValue)
            end
        end
    end
end, {
    data = {min = 1, max = 20000},
    category = PLUGIN.name
})

ix.util.Include('sv_hooks.lua')