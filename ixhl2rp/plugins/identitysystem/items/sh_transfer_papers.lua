ITEM.name = "Transfer Documents"
ITEM.model = Model("models/zadrakos/combinepassports/passport.mdl")
ITEM.description = "A small booklet detailing your transfer status."

function ITEM:PopulateTooltip(tooltip)
	local line1 = tooltip:AddRow("line1")
  local line2 = tooltip:AddRow("line2")
  local line3 = tooltip:AddRow("line3")
	line1:SetBackgroundColor(derma.GetColor("Success", tooltip))
	line1:SetText("Name: " .. self:GetData("citizen_name"))
	line1:SetFont("BudgetLabel")
	line1:SetExpensiveShadow(0.5)
	line1:SizeToContents()
	
	line2:SetBackgroundColor(derma.GetColor("Success", tooltip))
  	line2:SetText("\nTransfer Number: " .. self:GetData("cid"))
	line2:SetFont("BudgetLabel")
	line2:SetExpensiveShadow(0.5)
	line2:SizeToContents()
	
	line3:SetBackgroundColor(derma.GetColor("Success", tooltip))
  	line3:SetText("\nIssue Date " .. self:GetData("issue_date", "Unissued"))
	line3:SetFont("BudgetLabel")
	line3:SetExpensiveShadow(0.5)
	line3:SizeToContents()

	local line4 = tooltip:AddRow("line4")
	line4:SetBackgroundColor(derma.GetColor("Warning", tooltip))
	line4:SetText("Take these papers to a CCA officer, to receive a CID in return. THIS IS NOT VALID IDENTIFICATION.")
	line4:SetFont("DermaDefault")
	line4:SetExpensiveShadow(0.5)
	line4:SizeToContents()
end
