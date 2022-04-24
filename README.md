---
## 시작전 알고 있어야는 것
---

### 허점을 찾을 때 유용한 도구가 있는 어드민:

#### 스크립트 : `loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"),true)()`
dex,rspy 등




---
## 자동 총 획득 스크립트
---


### 자동 총 획득 스크립트를 알기 전에

#### Roblox의 시스템에 대해 알고 있어야 됩니다.
*로컬*에서 파트의 위치를 변경 한 뒤에 터치하면
**자신의 네터워크가 아닌 소유인 모델**이 아니면 그 위치로 가더라도 터치 이밴트가 발생이 안되지만
**자신의 네터워크 소유인 모델**이 그 위치로 가면 터치 이밴트가 발생 합니다.


### 총을 얻기 전 작동 되는 시스템

터치 이밴트가 발생 ▶️ 터치한 파트가 플레이어인지 확인
▶️ 서버 스토리지에서 총을 복사하여 플레이어 캐릭터에 장착


### Dex V3를 확용한 파트 찾기

![](https://user-images.githubusercontent.com/100512656/164963351-03ca0cef-df42-4009-993f-6ac593570892.png)

총이 스폰되는 파트를 찾은 뒤

![](https://user-images.githubusercontent.com/100512656/164964529-6ff9474b-39ab-4815-9aba-8478b55482b9.png)

다른 파트와 구별한 수단은 찾는
MeshPart와 MeshPart의 MeshId로 구별하게 하는 방법을 알 수 있다


이제 파트를 찾는 방법을 스크립트로 만든다
`local TargetPart = nil
for _, v in pairs(game.Workspace:GetChildren()) do
	if v:FindFirstChildOfClass("MeshPart") then
		if v:FindFirstChildOfClass("MeshPart").MeshId == "rbxassetid://5049754335" then
			TargetPart = v
		end
	end
end`


### 스크립트 만들기
``local Player = game.Players.LoaclPlayer

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
end``

타겟 파트를 찾은 뒤에 
파트를 고정하고, 통과할수 있게 하고, 투명하게 만든뒤에
터치 이밴트 특징을 생각해서 플레이어의 위치에 타겟 파트를 티피를 시키면
총을 얻을 수 있을 때 자동으로 획득할수 있다



---
## 킬 스크립트
---


### Dex V3를 확용한 총이름,리모트,리모트 작동 원리 찾기


플레이어를 구한뒤에

![](https://user-images.githubusercontent.com/100512656/164965314-427cc025-fe61-48f3-af2b-d763529f894b.png)

플레이어의 가방에서 총의 이름을 구한다

![](https://user-images.githubusercontent.com/100512656/164965375-0b3cf1cd-78fc-4464-82f7-5166eef050cf.png)

플레이어의 총에서 리모트를 구한다

![](https://user-images.githubusercontent.com/100512656/164965423-3377ad7e-75d3-4012-b857-f7faebc449ae.png)

플레이어의 총에서 리모트의 작동원리를 로컬 스크립트를 확인 하여 구한다

![](https://user-images.githubusercontent.com/100512656/164965439-50eeaea6-3536-487f-b9c5-c04e8781dd76.png)

확인 하면 마우스에 감지된 타겟을 구한뒤에
타겟에게 휴먼노이드가 있는지 확인하고
있다면 리모트로 서버에 그 휴머노이드를 보낸다


### 스크립트 만들기
`local Player = game.Players.LoaclPlayer
local GunName = "pistol"
local TargetName = ""
Player.Backpack[GunName].RemoteEvent:FireServer(game.Players[TargetName].Character.Humanoid)`



---
## 마지막
---


### 감사합니다.


