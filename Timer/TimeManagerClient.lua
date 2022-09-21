-- Should be in StarterPlayerScripts
local TimerManager = {}

-- Local Variables
local TimeObject = game.Workspace:WaitForChild('MapPurgeProof'):WaitForChild('Time')
-- Parent ScreenGui
local ScreenGui = script.Parent.ScreenGui

-- Parent ScreenGui Timer TextLabel
local Timer = ScreenGui.ScoreFrame.Timer

-- RemoteEvent Folder w/ DisplayTimerInfo if needed (intermission/waiting for players etc.)
local Events = game.ReplicatedStorage.Events
local DisplayTimerInfo = Events.DisplayTimerInfo

-- Local Functions
local function OnTimeChanged(newValue)
	local currentTime = math.max(0, newValue)
	local minutes = math.floor(currentTime / 60)-- % 60
	local seconds = math.floor(currentTime) % 60
	Timer.Text = string.format("%02d:%02d", minutes, seconds)
end

local function OnDisplayTimerInfo(intermission, waitingForPlayers)
	Timer.Intermission.Visible = intermission
	Timer.WaitingForPlayers.Visible = waitingForPlayers
end

-- Event Binding
TimeObject.Changed:connect(OnTimeChanged)
DisplayTimerInfo.OnClientEvent:connect(OnDisplayTimerInfo)

return TimerManager