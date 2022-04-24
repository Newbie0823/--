local Player = game.Players.LoaclPlayer
local GunName = "pistol"
local TargetName = ""
Player.Backpack[GunName].RemoteEvent:FireServer(game.Players[TargetName].Character.Humanoid)
