-- Parent of the script
local part = script.Parent

-- When a player toches part, changes to a random color
part.Touched:Connect(function()
	part.BrickColor = BrickColor.Random()
end)