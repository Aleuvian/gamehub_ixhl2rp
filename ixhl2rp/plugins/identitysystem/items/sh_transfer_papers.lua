ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:GetDescription()
	return self.description
end
function ITEM:PopulateTooltip(tooltip)
	local data = tooltip:AddRow("data")
	data:SetBackgroundColor(derma.GetColor("Success", tooltip))
	data:SetText("Name: " .. self:GetData("citizen_name", character:GetName()) .. "\nTransfer Number: " .. self:GetData("cid", character:GetData("cid", id)) .. "\nIssue Date: " .. self:GetData("issue_date", "Unissued")) -- Here's hoping this work, how do I do dates?
	data:SetFont("BudgetLabel")
	data:SetExpensiveShadow(0.5 )
	data:SizeToContents()

	local data2 = tooltip:AddRow("data2")
	data2:SetBackgroundColor(derma.GetColor("Warning", tooltip))
	data2:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
	data2:SetFont("DermaDefault")
	data2:SetExpensiveShadow(0.5)
	data2:SizeToContents()



end