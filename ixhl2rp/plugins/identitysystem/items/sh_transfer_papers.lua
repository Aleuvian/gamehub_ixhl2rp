ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:GetDescription()
	return self.description
end


function ITEM:PopulateTooltip(tooltip)
    
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    data:SetText("Name: "..client:player:GetName(" "))
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
    
    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    data:SetText("Transfer Number: "..client:character:GetID(" "))
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
    
    local data = tooltip:AddRow("line3")
    data:SetBackgroundColor(derma.GetColor("Success", tooltip))
    data:SetText("Issue date: "..ix.date.Get(" "))
    data:SetFont("BudgetLabel")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()

    local data = tooltip:AddRow("data")
    data:SetBackgroundColor(derma.GetColor("Warning", tooltip))
    data:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
    data:SetFont("DermaDefault")
    data:SetExpensiveShadow(0.5)
    data:SizeToContents()
end
