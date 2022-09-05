CLASS.name = "Metropolice Unit"
CLASS.faction = FACTION_MPF

function CLASS:CanSwitchTo(client)
	local name = client:Name()
	local bStatus = false

	for k, v in ipairs({ "i9", "i8", "i7", "i6", "i5", "i4", "i3", "i2", "i1", "OfC" }) do
		if (Schema:IsCombineRank(name, v)) then
			bStatus = true

			break
		end
	end

	return bStatus
end

CLASS_MPU = CLASS.index