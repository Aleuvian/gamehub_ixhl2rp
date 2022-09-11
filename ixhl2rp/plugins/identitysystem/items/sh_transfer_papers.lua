ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:GetDescription()
	return self.description
end

function ITEM:PopulateTooltip(tooltip) 

	self:Hook("OnCharacterCreated", function(client, character))
	charname = character:GetName()
	charid = character:GetData("cid", id)
	item:setdata("charname", charname)
	item:setdata("charid", charid)
		
		
    	local data = tooltip:AddRow("data")
    	data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    	data:SetText("Name: " .. self:getdata("charname", "none") .. "\nID Number: " .. self:getdata("charid", "00000"))
    	data:SetFont("BudgetLabel")
    	data:SetExpensiveShadow(0.5)
    	data:SizeToContents()
	print(charid, charname, "Print is a Success!")
	print("If nothing printed above this, FAIL.")
		
		
		
    	local data2 = tooltip:AddRow("data2")
    	data2:SetBackgroundColor(derma.GetColor("Warning", tooltip))
    	data2:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
    	data2:SetFont("DermaDefault")
    	data2:SetExpensiveShadow(0.5)
    	data2:SizeToContents()
end
