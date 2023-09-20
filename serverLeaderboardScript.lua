-- Sean Heisey
-- Server Leaderboard Script
-- 9/19/23
-- Not So Simple OBBY
-- https://www.roblox.com/games/13978585477/BETA-NEW-UPDATE-Not-So-Simple-OBBY-v1-1

local Players = game:GetService("Players") -- get players from server

local function leaderboardSetup(player) -- creating leaderboard
	local leaderstats = Instance.new("Folder")
	leaderstats.Name = "leaderstats"
	leaderstats.Parent = player

	local stage = Instance.new("IntValue")
	stage.Name = "Stage"
	stage.Value = 0
	stage.Parent = leaderstats
end

Players.PlayerAdded:Connect(leaderboardSetup) -- player from server joins