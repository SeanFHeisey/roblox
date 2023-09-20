-- Sean Heisey
-- Server Checkpoint Script
-- 9/19/23
-- Not So Simple OBBY
-- https://www.roblox.com/games/13978585477/BETA-NEW-UPDATE-Not-So-Simple-OBBY-v1-1

local checkpoint = script.Parent -- attach script to checkpoint

local bool  = true -- case to run function once

checkpoint.Touched:Connect(function(part) -- player reached checkpoint
	if bool then
		local humaniod = part.Parent:FindFirstChild("Humanoid") -- get player stats for health
		if humaniod and humaniod.Health ~= 0 then -- check if player stats exist and if player isn't dead
			local player = game.Players:GetPlayerFromCharacter(part.Parent) -- get player from server
			if player then -- checks if player from server exists
				local checkpointData = game.ServerStorage:FindFirstChild("CheckpointData") -- creates checkpoint data from server
				if not checkpointData then -- checks if checkpoint data is empty
					checkpointData = Instance.new("Model", game.ServerStorage) -- creates checkpoint data attributes
					checkpointData.Name = "CheckpointData"
				end
				local checkpointSpawn = checkpointData:FindFirstChild(player.userId) -- gets checkpoint spawn from player
				if not checkpointSpawn then -- checks if theres no data for player 
					checkpointSpawn = Instance.new("ObjectValue", checkpointData) -- creates checkpoint spawn attributes
					checkpointSpawn.Name = player.userId
					player.CharacterAdded:Connect(function(character)
						wait() -- waits until player spawns then sets new spawn at checkpoint
						character:WaitForChild("HumanoidRootPart").CFrame = game.ServerStorage.CheckpointData[player.userId].Value.CFrame + Vector3.new(0, 4, 0)
					end)
				end
				checkpointSpawn.Value = checkpoint -- new data
				local leaderstats = player.leaderstats -- get leaderstats
				if leaderstats then -- check if leaderstats exist
					local stageStat = leaderstats and leaderstats:FindFirstChild("Stage") -- get stageStats for obby Stage
					if stageStat then -- check if stage stats exist
						stageStat.Value += 1 -- increment stage value by 1
						bool = false -- end of case
					end
				end
			end
		end
	end
end)
