-- Sean Heisey
-- Local Checkpoint Script
-- 9/19/23
-- Not So Simple OBBY
-- https://www.roblox.com/games/13978585477/BETA-NEW-UPDATE-Not-So-Simple-OBBY-v1-1

local Players = game:GetService("Players") -- get local player
local TweenService = game:GetService("TweenService") -- get TweenService

local folder = workspace:FindFirstChild("checkpoints") -- locates checkpoints folder
local spawn = folder and folder:FindFirstChild("SpawnLocation") locates spawn location part

local goal = {
	Color = Color3.new(0, 1, 0) -- resulting color for checkpoint
}
local tweenInfo = TweenInfo.new( -- checkpoint fades to green
	0.4, -- Time
	Enum.EasingStyle.Sine, -- EasingStyle
	Enum.EasingDirection.Out, -- EasingDirection
	0, -- RepeatCount (when less than zero the tween will loop indefinitely)
	false, -- Reverses (tween will reverse once reaching its goal)
	0 -- DelayTime
)

local function code(part)
	local player = Players.LocalPlayer -- get local player
	if player then -- check if local player exists
		local humanoid = player.Character:FindFirstChildOfClass("Humanoid") -- get instance of local player stats for health
		if humanoid and humanoid.Health ~= 0 then -- check if local player stats exist and if local player isn't dead
			if spawn then
				spawn:Destroy() -- destroy initial spawnpoint
				spawn = nil
			end
			if part.Color ~= Color3.new(0, 1, 0) then
				local tween = TweenService:Create(part, tweenInfo, goal)
				tween:Play() -- fade checkpoint to green
			end
		end
	end
end

if folder then
	for _, i in pairs(folder:GetDescendants()) do -- loop through folder of checkpoints
		if i.Name == "checkpointPart" then -- get each checkpoint part
			i.Touched:Connect(function(hit)
				code(i) -- checkpoint reached
			end)
		end
	end
end
