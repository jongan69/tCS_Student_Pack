local player = game.Players.LocalPlayer
local stats = player:WaitForChild("leaderstats")
local coins = stats:WaitForChild("Rings")
local text = script.Parent

text.Text = "RINGS: "..coins.Value
coins:GetPropertyChangedSignal("Value"):Connect(function()
	text.Text = "RINGS: "..coins.Value
end)