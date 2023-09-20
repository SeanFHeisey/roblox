-- Sean Heisey
-- Server Killblock Script
-- 9/19/23
-- Not So Simple OBBY
-- https://www.roblox.com/games/13978585477/BETA-NEW-UPDATE-Not-So-Simple-OBBY-v1-1

local killblock = script.parent -- attach script to killblock

local function touch(part)
	local humanoid = part.Parent:FindFirstChild("Humanoid") -- get player stats for health
	if humanoid and humanoid.Health ~= 0 then -- check if player stats exist and if player isn't dead
		humanoid:TakeDamage(100) -- kill player
	end
end

killblock.Touched:Connect(touch) -- killblock reached