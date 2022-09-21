local Events = game.ReplicatedStorage.Events
-- Need to have a CharacterJoined RemoteEvent inside an Event Folder inside of Replicated Storage
local CharcterJoined = Events.CharacterJoined

local textcolor = BrickColor.new('Lime green')
 
local function Welcome(playerName)
	game.StarterGui:SetCore('ChatMakeSystemMessage', { 
		Text = playerName .. ' has joined the lobby!';
		Font = Enum.Font.SourceSans;
		Color = textcolor.Color;
		FontSize = Enum.FontSize.Size24;
	})
end

CharcterJoined.OnClientEvent:Connect(Welcome)