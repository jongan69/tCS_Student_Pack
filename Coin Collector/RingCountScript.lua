-- Should go in serversideScriptService
game.Players.PlayerAdded:Connect(function(plr)
	local f = Instance.new("Folder", plr)
	f.Name = "leaderstats"
	local rings = Instance.new("IntValue", f)
	rings.Name = "Rings"
	rings.Value = 0
	
end)
