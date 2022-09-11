ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:GetDescription()
	return self.description
end

function ITEM:PopulateTooltip(tooltip) 

	netstream.hook("OnCharacterCreated", function(client, character)
		
    		local data = tooltip:AddRow("data")
    		data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    		data:SetText("Name: " .. character:GetName() .. "\nID Number: " .. character:GetData("cid", id))
    		data:SetFont("BudgetLabel")
    		data:SetExpensiveShadow(0.5)
    		data:SizeToContents()
		print(character:GetName(), character:GetData("cid", id), "Print is a Success!")
		print("If nothing printed above this, FAIL.")
		
		
		
    		local data2 = tooltip:AddRow("data2")
    		data2:SetBackgroundColor(derma.GetColor("Warning", tooltip))
    		data2:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
    		data2:SetFont("DermaDefault")
    		data2:SetExpensiveShadow(0.5)
    		data2:SizeToContents()
	end)
end
