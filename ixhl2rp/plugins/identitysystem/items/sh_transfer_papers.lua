ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:GetDescription()
	return self.description
end

local doonce == false
function(client, character)
	if client and not doonce then
	doonce == true
	x == character:GetData("cid", "00000")
	y == character:GetName()
	end
end
	
function ITEM:PopulateTooltip(tooltip)
    
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    data:SetText("Name: " .. y .. "\nID Number: " .. x)
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()

    local data2 = tooltip:AddRow("data2")
    data2:SetBackgroundColor(derma.GetColor("Warning", tooltip))
    data2:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
    data2:SetFont("DermaDefault")
    data2:SetExpensiveShadow(0.5)
    data2:SizeToContents()
end
