local Player = game.Players.LoaclPlayer

local TargetPart = nil
for _, v in pairs(game.Workspace:GetChildren()) do
	if v:FindFirstChildOfClass("MeshPart") then
		if v:FindFirstChildOfClass("MeshPart").MeshId == "rbxassetid://5049754335" then
			TargetPart = v
		end
	end
end


if TargetPart then
	TargetPart.Anchored = true
	TargetPart.CanCollide = false
	TargetPart.Transparency = 1
	for _, v in pairs(TargetPart:GetChildren()) do
		if v:IsA("BasePart") then
			TargetPart.Anchored = true
			v.CanCollide = false
			v.Transparency = 1
		end
	end
	while wait() do
		if Player.Character ~= nil then
			if Player.Character:FindFirstChild("HumanoidRootPart") then
				local HRP = Player.Character:FindFirstChild("HumanoidRootPart") 
			end
		end
	end
end
