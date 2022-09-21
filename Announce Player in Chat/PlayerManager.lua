local Players = game:GetService("Players")
local CharacterJoined = game:GetService("ReplicatedStorage").Events.CharacterJoined

-- Annouce Player Fire Event in Server Script Service
local function onCharacterJoin(player)
	CharacterJoined:FireClient(player, player.Name)
end
Players.PlayerAdded:Connect(onCharacterJoin)