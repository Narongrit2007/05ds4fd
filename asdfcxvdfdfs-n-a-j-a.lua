

if game.PlaceId == 4520749081 then
	W1 = true
elseif game.PlaceId == 6381829480 then
	W2 = true
elseif game.PlaceId == 15759515082 then
	W3 = true
else
    if game.PlaceId == 5931540094 then
        W1 = true
        W2 = true
        W3 = true
    else
        game:GetService("Players").LocalPlayer:Kick("รันได้แค่ kl ยังไม่มีโลก 3")
        print("รันได้แค่ kl ยังไม่มีโลก 3")
        wait(1)
        game.Players.LocalPlayer:kick("/00/210/5815//151/5/151/51/15")
        wait(1.5)
        game:Shutdown()
        kickcash("01/01/01/0/1/01/0/1/1/010")
    end
end

local Levelplayer = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
local UserPy = game.Players.LocalPlayer.Name
local tag = tostring(math.random(0001, 9999))
local GameTime = math.floor(workspace.DistributedGameTime+0.5)
local Hour = math.floor(GameTime/(60^2))%24
local Minute = math.floor(GameTime/(60^1))%60
local Second = math.floor(GameTime/(60^0))%60
local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
local Fps = workspace:GetRealPhysicsFPS()
--Time:Refresh("           Hour : "..Hour.." Minute : "..Minute.." Second : "..Second.. "")
local TimeGlobal = "TIME | "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")

print("Ping:"..Ping.."FPS:"..Fps.. "    ")
print("User " ..UserPy.. "#" ..tag.. "  ใช้งานเมื่อ" ..TimeGlobal.. "   Hour : "..Hour.." Minute : "..Minute.." Second : "..Second.. " " )
print(UserPy)

--local Levelplayer = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
--local tag = tostring(math.random(0001, 9999))
--local GameTime = math.floor(workspace.DistributedGameTime+0.5)
--local Hour = math.floor(GameTime/(60^2))%24
--local Minute = math.floor(GameTime/(60^1))%60
--local Second = math.floor(GameTime/(60^0))%60
--local Ping = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()
--local Fps = workspace:GetRealPhysicsFPS()
--local TimeGlobal = "TIME | "..os.date("%H")..":"..os.date("%M")..":"..os.date("%S")
if _G.MrMaxNaJaBuy == false then
    local UserPy = game.Players.LocalPlayer.Name
    local url = "https://discord.com/api/webhooks/1231976183227486239/v4mRQBnAxCq_EbZiMLnO821YXbaa1xwIchFitJGb1MdtbeKJdet9zNhCL971KjmOZHYc" -- ur webhook url
    local data = { 
        ["username"] = 'MrMaxNaJa', -- Webhook name here
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png", -- ur discord logo url
        ["embeds"] = {
            {
                --["description"] = "เลเวล : " ..Levelplayer.."         User :" ..UserPy.. "#" ..tag.. "ใช้งานสคริปเมื่อ: " ..TimeGlobal.."Ping:"..Ping.."FPS:"..Fps.."",
                ["color"] = tonumber(0x00ff00), -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "[📁] **ชื่อผู้ใช้ฟรี**",
                        ["value"] = 'ชื่อผู้ใช้ฟรี ' ..UserPy.. "",
                    }
                    
                },
                ["footer"] = {
                    ["text"] = "YouTube:MrMaxNaJa"
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    } 

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end

if _G.MrMaxNaJaBuy == true then
    local UserPy = game.Players.LocalPlayer.Name
    local url = "https://discord.com/api/webhooks/1231651589262147615/FxKk6HOjS2j_MlQ6A2hirgWbzVAaY41FO5Xiw8LcM7StmBaCVu3HWzdJpQdkqe5B8Is2" -- ur webhook url
    local data = { 
        ["username"] = 'MrMaxNaJa', -- Webhook name here
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png", -- ur discord logo url
        ["embeds"] = {
            {
                --["description"] = "เลเวล : " ..Levelplayer.."         User :" ..UserPy.. "#" ..tag.. "ใช้งานสคริปเมื่อ: " ..TimeGlobal.."Ping:"..Ping.."FPS:"..Fps.."",
                ["color"] = tonumber(0x00ff00), -- color id		
                ["type"] = "rich",
                ["fields"] =  {
                    {
                        ["name"] = "[📁] **ชื่อผู้ใช้เติม**",
                        ["value"] = 'ชื่อผู้ใช้เติม : ' ..UserPy..'\n Key User : \n ```lua\n["'.._G.register_key..'"]\n```',
                    }
                    
                },
                ["footer"] = {
                    ["text"] = "YouTube:MrMaxNaJa"
                },
                ["timestamp"] = DateTime.now():ToIsoDate(),
            }
        },
    } 

    local newdata = game:GetService("HttpService"):JSONEncode(data)
    local headers = {["content-type"] = "application/json"}
    request = http_request or request or HttpPost or syn.request
    local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
    request(abcdef)
end

spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Settings.AutoFarm or _G.Settings.AutoFarmTwilight or _G.Settings.AutoFarmSwordMonBlade or _G.Settings.AutoFarmAllMonsterSelect or _G.Settings.AutoFarmMonNearestSelect or _G.Settings.AutoFarmBoss or _G.Settings.AutoRaid or _G.Settings.AutoHydraSeaKing or _G.Settings.AutoKingSamurai or _G.Settings.GhostShip then
			if not game:GetService("Workspace"):FindFirstChild("Part") then
				local Part = Instance.new("Part")
				Part.Name = "Part"
				Part.Parent = game.Workspace
				Part.Anchored = true
				Part.Transparency = 1
				Part.Size = Vector3.new(_G.Settings.DistanceMob,_G.Settings.DistanceMob,_G.Settings.DistanceMob)--0.5
			elseif game:GetService("Workspace"):FindFirstChild("Part") then--                                                                                                        - 3.8                        
				game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y ,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z) * CFrame.Angles(math.rad(_G.Settings.GanAngles),0,0)
			end
		end
	end)
end)
spawn(function()
	game:GetService("RunService").Stepped:Connect(function()
		if _G.Settings.AutoFarm or _G.Settings.AutoFarmTwilight or _G.Settings.AutoFarmSwordMonBlade or _G.Settings.AutoFarmAllMonsterSelect or _G.Settings.AutoFarmMonNearestSelect or _G.Settings.AutoFarmBoss or _G.Settings.AutoRaid or _G.Settings.AutoHydraSeaKing or _G.Settings.AutoKingSamurai or _G.Settings.GhostShip then
			if not game:GetService("Workspace"):FindFirstChild("Part") then
				local Part = Instance.new("Part")
				Part.Name = "Part"
				Part.Parent = game.Workspace
				Part.Anchored = true
				Part.Transparency = 1
				Part.Size = Vector3.new(_G.Settings.DistanceMob,_G.Settings.DistanceMob,_G.Settings.DistanceMob)--0.5
			elseif game:GetService("Workspace"):FindFirstChild("Part") then--                                                                                                        - 3.8                        
				game.Workspace["Part"].CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Y -3.8 ,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
			end
		end
	end)
end)
spawn(function()
	while wait() do
		if _G.Settings.AutoFarm or _G.Settings.AutoFarmTwilight or _G.Settings.AutoFarmSwordMonBlade or _G.Settings.AutoFarmAllMonsterSelect or _G.Settings.AutoFarmMonNearestSelect or _G.Settings.AutoFarmBoss or _G.Settings.AutoRaid or _G.Settings.AutoHydraSeaKing or _G.Settings.AutoKingSamurai or _G.Settings.GhostShip then
			pcall(function()
				if not game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
					local Noclip = Instance.new("BodyVelocity")
					Noclip.Name = "BodyClip"
					Noclip.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
					Noclip.MaxForce = Vector3.new(100000, 100000, 100000)
					Noclip.Velocity = Vector3.new(0, 0, 0)
				end
			end)
		else
			if game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
				game.Players.LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
			end
		end
	end
end)

spawn(function()
    pcall(function()
        game:GetService("RunService").Stepped:Connect(function()
            if _G.Settings.AutoFarm or _G.Settings.AutoFarmTwilight or _G.Settings.AutoFarmSwordMonBlade or _G.Settings.AutoFarmAllMonsterSelect or _G.Settings.AutoFarmMonNearestSelect or _G.Settings.AutoFarmBoss or _G.Settings.AutoRaid or _G.Settings.AutoHydraSeaKing or _G.Settings.AutoKingSamurai or _G.Settings.GhostShip then
                for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        v.CanCollide = false
                    end
                end
            end
        end)
    end)
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.AutoFarm or _G.Settings.AutoFarmTwilight or _G.Settings.AutoFarmSwordMonBlade or _G.Settings.AutoFarmAllMonsterSelect or _G.Settings.AutoFarmMonNearestSelect or _G.Settings.AutoFarmBoss or _G.Settings.AutoRaid or _G.Settings.AutoHydraSeaKing or _G.Settings.AutoKingSamurai or _G.Settings.GhostShip then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

--[[function Tween(Pos)--game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if game.Players.LocalPlayer.Character.Humanoid.Sit then
        game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end
    pcall(function()
        local tween = game:GetService("TweenService"):Create(
            game.Players.LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/99999999999999999999999999, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        )
        tween:Play()
    end)
end
]]
function Tween(Pos)
	pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
	end)
end
function CheckLevel()
    local Lv = game:GetService("Players").LocalPlayer.PlayerStats.lvl.Value
  ---โลก1 By.Wx
    if W1 then -- เช็คโรค
---โลก1 By.Wx
if Lv == 1 or Lv <= 9 then
    NameMon = "Soldier [Lv. 1]"
    NameQuest = "Kill 4 Soldiers"
    CFrameMon = CFrame.new(-1987.90417, 49.0961037, -4583.2915, -0.423074663, 1.96148928e-08, -0.90609479, 1.335642e-08, 1, 1.54113327e-08, 0.90609479, -5.58203794e-09, -0.423074663)
elseif Lv == 10 or Lv <= 19 then
    NameMon = "Clown Pirate [Lv. 10]"
    NameQuest = "Kill 5 Clown Pirates"
    CFrameMon = CFrame.new(-1987.90417, 49.0961037, -4583.2915, -0.423074663, 1.96148928e-08, -0.90609479, 1.335642e-08, 1, 1.54113327e-08, 0.90609479, -5.58203794e-09, -0.423074663)
elseif Lv == 20 or Lv <= 29 then
    NameMon = "Smoky [Lv. 20]"
    NameQuest = "Kill 1 Smoky"
    CFrameMon = CFrame.new(-1986.9115, 100.303032, -4811.64502, -0.0388566367, 3.70705671e-08, 0.999244809, 1.46395318e-09, 1, -3.70416586e-08, -0.999244809, 2.35334009e-11, -0.0388566367)
elseif Lv == 30 or Lv <= 49 then
    NameMon = "Tashi [Lv. 30]"
    NameQuest = "Kill 1 Tashi"
    CFrameMon = CFrame.new(-2307.31934, 100.59787, -4481.46387, 0.998615503, -6.53617818e-08, -0.0526026562, 6.13906863e-08, 1, -7.71080764e-08, 0.0526026562, 7.37720072e-08, 0.998615503)
elseif Lv == 50 or Lv <= 74 then
    NameMon = "Clown Swordman [Lv. 50]"
    NameQuest = "Kill 6 Clown Swordman"
    CFrameMon =  CFrame.new(-859.508667, 91.099884, -3515.59766, -0.779373586, 1.33729106e-09, -0.626559496, 8.47487081e-10, 1, 1.08015608e-09, 0.626559496, 3.10844045e-10, -0.779373586)
elseif Lv == 75 or Lv <= 99 then
    NameMon = "The Clown [Lv. 75]"
    NameQuest = "Kill 1 The Clown"
    CFrameMon = CFrame.new(-420.83963, 120.79538, -3574.69531, -0.634619474, -1.84075191e-08, 0.772824764, -7.49525384e-08, 1, -3.77301816e-08, -0.772824764, -8.18694872e-08, -0.634619474)
elseif Lv == 100 or Lv <= 119 then
    NameMon = "Commander [Lv. 100]"
    NameQuest = "Kill 4 Commander"
    CFrameMon = CFrame.new(-2183.71436, 85.800499, -2642.30225, -0.113712855, -8.90864769e-08, 0.993513644, -4.55619222e-08, 1, 8.44532906e-08, -0.993513644, -3.56629677e-08, -0.113712855)
elseif Lv == 120 or Lv <= 144 then
    NameMon = "Captain [Lv. 120]"
    NameQuest = "Kill 1 Captain" 
    CFrameMon = CFrame.new(-2222.64819, 92.9912033, -2405.63281, 0.902775824, 9.01156554e-08, -0.430111468, -7.5117363e-08, 1, 5.18505487e-08, 0.430111468, -1.45005803e-08, 0.902775824)
elseif Lv == 145 or Lv <= 179 then
    NameMon = "The Barbaric [Lv. 145]"
    NameQuest = "Kill 1 The Barbaric"
    CFrameMon = CFrame.new(-2382.11597, 142.744064, -2432.83447, 0.897202015, 3.46262397e-08, -0.44162032, -3.24098117e-08, 1, 1.25630324e-08, 0.44162032, 3.04125369e-09, 0.897202015)
elseif Lv == 180 or Lv <= 199 then
    NameMon = "Fighter Fishman [Lv. 180]"
    NameQuest = "Kill 4 Fighter Fishmans"
    CFrameMon = CFrame.new(-745.081543, 52.3269691, -1493.37256, -0.829473376, 9.64766045e-09, 0.558546245, -9.84703163e-09, 1, -3.18962137e-08, -0.558546245, -3.19570859e-08, -0.829473376)
elseif Lv == 200 or Lv <= 229 then
    NameMon = "Karate Fishman [Lv. 200]"
    NameQuest = "Kill 1 Karate Fishman"
    CFrameMon = CFrame.new(-850.665344, 52.4513741, -1562.98779, -0.893344522, 1.91099705e-08, 0.449372411, -8.07027223e-10, 1, -4.41302674e-08, -0.449372411, -3.97861868e-08, -0.893344522)
elseif Lv == 230 or Lv <= 249 then
    NameMon = "Shark Man [Lv. 230]"
    NameQuest = "Kill 1 Shark Man"
    CFrameMon = CFrame.new(-586.502808, 112.159958, -1553.02222, 0.552426875, -1.09019096e-08, 0.833561361, -8.64579732e-08, 1, 7.03770837e-08, -0.833561361, -1.10946218e-07, 0.552426875)
elseif Lv == 250 or Lv <= 399 then
    NameMon = "Trainer Chef [Lv. 250]"
    NameQuest = "Kill 4 Trainer Chef"
    CFrameMon = CFrame.new(-3983.67456, 16.1524296, -3313.61914, -0.875627518, -4.12825116e-08, 0.482987046, -6.21717859e-08, 1, -2.72405156e-08, -0.482987046, -5.38807114e-08, -0.875627518)
elseif Lv == 300 or Lv <= 349 then
    NameMon = "Dark Leg [Lv. 300]"
    NameQuest = "Kill 1 Dark Leg"
    CFrameMon = CFrame.new(-4197.5, 17.9071407, -2931.54199, -0.887061596, -2.41746556e-09, 0.461651087, 1.39625698e-08, 1, 3.20656142e-08, -0.461651087, 3.48900109e-08, -0.887061596)
elseif Lv == 350 or Lv <= 399 then
    NameMon = "Dory [Lv. 350]"
    NameQuest = "Kill 1 Dory"
    CFrameMon = CFrame.new(-4304.19824, 70.4148865, -2730.17554, -0.901797056, -6.79898982e-09, 0.432159841, 3.85456183e-08, 1, 9.61665378e-08, -0.432159841, 1.03380565e-07, -0.901797056)
elseif Lv == 400 or Lv <= 449 then
    NameMon = "Snow Soldier [Lv. 400]"
    NameQuest = "Kill 5 Snow Soldier"
    CFrameMon = CFrame.new(-5439.55713, 63.6817284, -1275.49146, -0.766281664, -1.69134307e-08, -0.642504811, -7.42172617e-08, 1, 6.21908072e-08, 0.642504811, 9.53406243e-08, -0.766281664)
elseif Lv == 450 or Lv <= 499 then
    NameMon = "King Snow [Lv. 450]"
    NameQuest = "Kill 1 King Snow"
    CFrameMon = CFrame.new(-5356.87793, 63.6823006, -1398.81812, 0.873469532, 3.19993738e-08, 0.486878872, -2.68261946e-08, 1, -1.75968022e-08, -0.486878872, 2.30916331e-09, 0.873469532)
elseif Lv == 500 or Lv <= 524 then
    NameMon = "Little Dear [Lv. 500]"
    NameQuest = "Kill 1 Little Dear"
    CFrameMon = CFrame.new(-5409.21729, 57.5917511, -1039.79858, 0.650176823, -9.15510654e-08, -0.75978297, 1.08223183e-07, 1, -2.78854202e-08, 0.75978297, -6.40956728e-08, 0.650176823)
elseif Lv == 525 or Lv <= 574 then
    NameMon = "Candle Man [Lv. 525]"
    NameQuest = "Kill 1 Candle Man"
    CFrameMon = CFrame.new(-2892.68945, 103.915504, -411.542511, 0.913090765, -2.0761048e-08, 0.407756358, 1.83498017e-08, 1, 9.82452519e-09, -0.407756358, -1.48843515e-09, 0.913090765)
elseif Lv == 575 or Lv <= 624 then
    NameMon = "Sand Bandit [Lv. 575]"
    NameQuest = "Kill 4 Sand Bandit"
    CFrameMon = CFrame.new(-2691.09082, 41.1931648, -558.914246, 0.69031769, 3.35413114e-10, 0.723506391, -6.8781969e-10, 1, 1.92674154e-10, -0.723506391, -6.30648311e-10, 0.69031769)
elseif Lv == 625 or Lv <= 674 then
    NameMon = "Bomb Man [Lv. 625]"
    NameQuest = "Kill 1 Bomb Man"
    CFrameMon = CFrame.new(-3137.40308, 103.902924, -683.342712, -0.476265728, -6.93845053e-08, -0.879301369, -2.94259306e-09, 1, -7.73148443e-08, 0.879301369, -3.42349828e-08, -0.476265728)
elseif Lv == 675 or Lv <= 724 then
    NameMon = "Desert Marauder [Lv. 675]"
    NameQuest = "Kill 4 Desert Marauder"
    CFrameMon = CFrame.new(-2677.33203, 76.6805038, -655.982422, -0.688154161, -7.97975304e-08, 0.72556448, -1.61531606e-08, 1, 9.4659633e-08, -0.72556448, 5.34202584e-08, -0.688154161)
elseif Lv == 725 or Lv <= 799 then
    NameMon = "King of Sand [Lv. 725]"
    NameQuest = "Kill 1 King of Sand"
    CFrameMon = CFrame.new(-3045.95947, 96.8654556, -516.662598, -0.641233504, 2.74744298e-08, 0.767345786, -3.05831827e-09, 1, -3.83601844e-08, -0.767345786, -2.69446225e-08, -0.641233504)
elseif Lv == 800 or Lv <= 849 then
    NameMon = "Sky Soldier [Lv. 800]"
    NameQuest = "Kill 4 Sky Soldier"
    CFrameMon = CFrame.new(-4602.80127, 237.143173, 1360.09534, 0.913104057, -7.05845409e-08, 0.407726526, 3.00380698e-08, 1, 1.05847072e-07, -0.407726526, -8.44020747e-08, 0.913104057)
elseif Lv == 850 or Lv <= 899 then
    NameMon = "Ball Man [Lv. 850]" 
    NameQuest = "Kill 1 Ball Man"
    CFrameMon = CFrame.new(-3899.29907, 424.786316, 1252.92065, -0.150564358, 7.03991461e-08, 0.988600194, -3.07199635e-08, 1, -7.58896022e-08, -0.988600194, -4.17960315e-08, -0.150564358)
elseif Lv == 900 or Lv <= 949 then
    NameMon = "Cloud Warrior [Lv. 900]"
    NameQuest = "Kill 4 Cloud Warrior"
    CFrameMon = CFrame.new(-4777.18018, 235.405975, 1129.08789, 0.0677085966, -9.07980606e-08, -0.997705162, -2.88684561e-08, 1, -9.29660473e-08, 0.997705162, 3.50968072e-08, 0.0677085966)
elseif Lv == 950 or Lv <= 999 then
    NameMon = "Rumble Man [Lv. 950]"
    NameQuest = "Kill 1 Rumble Man"
    CFrameMon = CFrame.new(-4167.83691, 416.389526, 1610.69263, 0.9754861, 2.38659759e-09, -0.220061153, 1.0250647e-09, 1, 1.53890589e-08, 0.220061153, -1.523739e-08, 0.9754861)
elseif Lv == 1000 or Lv <= 1049 then
    NameMon = "Elite Soldier [Lv. 1000]"
    NameQuest = "Kill 4 Elite Soldiers"
    CFrameMon = CFrame.new(1756.62329, 43.8492165, 732.102173, -0.354773641, -7.47190754e-08, -0.934952199, 3.34134569e-08, 1, -9.25964798e-08, 0.934952199, -6.40907771e-08, -0.354773641)
elseif Lv == 1050 or Lv <= 1099 then
    NameMon = "High-class Soldier [Lv. 1050]"
    NameQuest = "Kill 4 High-class Soldier" 
    CFrameMon = CFrame.new(1984.84241, 26.6003017, 660.884277, -0.931326389, 7.28296268e-09, -0.364185601, 4.62623051e-10, 1, 1.88148821e-08, 0.364185601, 1.73543171e-08, -0.931326389)
elseif Lv == 1100 or Lv <= 1149 then
    NameMon = "Leader [Lv. 1100]"
    NameQuest = "Kill 1 Leader"
    CFrameMon = CFrame.new(1776.99146, 38.5392647, 598.307068, -0.276595861, 5.94413478e-08, -0.960986316, 6.29248964e-09, 1, 6.00433836e-08, 0.960986316, 1.05607558e-08, -0.276595861)
elseif Lv == 1150 or Lv <= 1199 then 
    NameMon = "Pasta [Lv. 1150]"
    NameQuest = "Kill 1 Pasta"
    CFrameMon = CFrame.new(1344.14099, 40.1048965, 1074.74329, -0.419090927, -2.4491424e-08, -0.907944262, -8.64604459e-08, 1, 1.29340147e-08, 0.907944262, 8.39217975e-08, -0.419090927)
elseif Lv == 1200 or Lv <= 1249 then
    NameMon = "Naval personnel [Lv. 1200]"
    NameQuest = "Kill 4 Naval personnel"
    CFrameMon = CFrame.new(-1285.15479, 69.6261826, 2169.60522, -0.999821603, -1.02254525e-08, 0.0188891031, -7.92025379e-09, 1, 1.22113335e-07, -0.0188891031, 1.21941937e-07, -0.999821603)
elseif Lv == 1250 or Lv <= 1299 then
    NameMon = "Wolf [Lv. 1250]"
    NameQuest = "Kill 1 Wolf"
    CFrameMon = CFrame.new(-1319.77258, 69.6465912, 2138.75317, -0.0266651064, 4.63293475e-08, 0.999644399, 5.2359951e-08, 1, -4.49491466e-08, -0.999644399, 5.11427594e-08, -0.0266651064)
elseif Lv == 1300 or Lv <= 1349 then
    NameMon = "Giraffe [Lv. 1300]"
    NameQuest = "Kill 1 Giraffe"
    CFrameMon = CFrame.new(-1196.36414, 69.6261826, 2091.73364, -0.0367398933, 5.966983e-08, -0.999324858, 2.73745915e-08, 1, 5.87037228e-08, 0.999324858, -2.51993413e-08, -0.0367398933)
elseif Lv == 1350 or Lv <= 1399 then
    NameMon = "Nautical soldier [Lv. 1350]"
    NameQuest = "Kill 4 Nautical soldier"
    CFrameMon = CFrame.new(-1194.89758, 69.6261826, 2094.61548, -0.0682586059, 1.33845424e-08, -0.99766767, 5.62648061e-08, 1, 9.5662962e-09, 0.99766767, -5.54805979e-08, -0.0682586059)
elseif Lv == 1400 or Lv <= 1449 then
    NameMon = "Naval soldier [Lv. 1400]"
    NameQuest = "Kill 4 Naval soldier"
    CFrameMon = CFrame.new(-1462.1145, 15.2583666, 2540.05249, 0.378536522, 7.12551227e-08, -0.925586343, 3.683272e-08, 1, 9.20472161e-08, 0.925586343, -6.89350941e-08, 0.378536522)
elseif Lv == 1450 or Lv <= 1499 then
    NameMon = "Leo [Lv. 1450]"
    NameQuest = "Kill 1 Leo"
    CFrameMon = CFrame.new(-1075.66101, 22.355545, 2553.46948, 0.361727208, -7.43886659e-08, 0.932283998, 1.52786797e-08, 1, 7.38637027e-08, -0.932283998, -1.24744428e-08, 0.361727208)
elseif Lv == 1500 or Lv <= 1549 then
    NameMon = "Zombie [Lv. 1500]"
    NameQuest = "Kill 5 Zombies"
    CFrameMon = CFrame.new(-2751.44678, 39.1473465, 4111.27637, 0.829314768, -2.6256e-08, -0.558781743, -1.21393153e-08, 1, -6.50044782e-08, 0.558781743, 6.06924004e-08, 0.829314768)
elseif Lv == 1550 or Lv <= 1599 then
    NameMon = "Elite Zombie [Lv. 1550]"
    NameQuest = "Kill 4 Elite Zombies"
    CFrameMon = CFrame.new(-2751.44678, 39.1473465, 4111.27637, 0.829314768, -2.6256e-08, -0.558781743, -1.21393153e-08, 1, -6.50044782e-08, 0.558781743, 6.06924004e-08, 0.829314768)
elseif Lv == 1600 or Lv <= 1649 then
    NameMon = "Revenant [Lv. 1600]"
    NameQuest = "Kill 4 Revenant"
    CFrameMon = CFrame.new(-3018.76562, 33.5921288, 4303.64307, 0.805173457, 5.18634202e-09, -0.593039334, -5.49868062e-08, 1, -6.59105979e-08, 0.593039334, 8.56787992e-08, 0.805173457)
elseif Lv == 1650 or Lv <= 1699 then
    NameMon = "Shadow Master [Lv. 1650]"
    NameQuest = "Kill 1 Shadow Master"
    CFrameMon = CFrame.new(-2767.29248, 33.5921288, 4442.45459, 0.876922965, 6.12778663e-08, -0.480630994, -1.57094604e-08, 1, 9.88323308e-08, 0.480630994, -7.9117882e-08, 0.876922965)
elseif Lv == 1700 or Lv <= 1749 then
    NameMon = "New World Pirate [Lv. 1700]" 
    NameQuest = "Kill 4 New World Pirates"
    CFrameMon = CFrame.new(2447.53735, 122.348442, -1625.69202, -0.222260147, -9.31945721e-08, 0.974987388, 4.04289757e-08, 1, 1.04801686e-07, -0.974987388, 6.27109813e-08, -0.222260147)
elseif Lv == 1750 or Lv <= 1799 then
    NameMon = "Cutlass Pirate [Lv. 1750]"
    NameQuest = "Kill 4 Cutlass Pirates"
    CFrameMon = CFrame.new(2413.89673, 114.007904, -1781.48169, 0.338218421, -7.20048132e-10, 0.941067636, -2.46446206e-08, 1, 9.622382e-09, -0.941067636, -2.64467204e-08, 0.338218421)
elseif Lv == 1800 or Lv <= 1849 then
    NameMon = "Rear Admiral [Lv. 1800]"
    NameQuest = "Kill 4 Rear Admirals"
    CFrameMon = CFrame.new(2406.76099, 108.612106, -2225.47607, 0.348917753, 1.44832848e-08, 0.937153339, -9.57239266e-08, 1, 2.01850572e-08, -0.937153339, -9.67509237e-08, 0.348917753)
elseif Lv == 1850 or Lv <= 1924 then
    NameMon = "True Karate Fishman [Lv. 1850]"
    NameQuest = "Kill 1 True Karate Fishman"
    CFrameMon = CFrame.new(2525.78076, 103.697166, -2019.98816, -0.99999994, 1.03633738e-07, -0.000366600347, 1.03613004e-07, 1, 5.65793243e-08, 0.000366600347, 5.65413352e-08, -0.99999994)
elseif Lv == 1925 or Lv <= 1999 then
    NameMon = "Quake Woman [Lv. 1925]" ---เเก้หนวดขาว
    NameQuest = "Kill 1 Quake Woman" ------ 
    CFrameMon = CFrame.new(2118.13013, 3.06480217, -1909.94812, 0.0325585268, -5.32720286e-08, -0.999469817, -4.92016632e-08, 1, -5.49030723e-08, 0.999469817, 5.09631413e-08, 0.0325585268)
elseif Lv == 2000 or Lv <= 2049 then
    NameMon = "Fishman [Lv. 2000]"
    NameQuest = "Kill 4 Fishmans"
    CFrameMon = CFrame.new(-1621.29663, 94.0391998, 6260.59668, 0.999778867, 3.06320374e-08, 0.0210289024, -3.04115773e-08, 1, -1.08033635e-08, -0.0210289024, 1.01614521e-08, 0.999778867)
elseif Lv == 2050 or Lv <= 2099 then
    NameMon = "Combat Fishman [Lv. 2050]"
    NameQuest = "Kill 1 Combat Fishman"
    CFrameMon = CFrame.new(-1885.25708, 99.9235687, 6065.46533, -0.758239329, 8.40046113e-08, 0.651976347, 2.68429261e-08, 1, -9.76281598e-08, -0.651976347, -5.65245557e-08, -0.758239329)
elseif Lv == 2100 or Lv <= 2199 then
    NameMon = "Sword Fishman [Lv. 2100]"
    NameQuest = "Kill 1 Sword Fishman"
    CFrameMon = CFrame.new(-1625.68274, 95.0787277, 6667.83545, -0.281478286, 1.46838781e-08, -0.959567606, 1.39678857e-09, 1, 1.48928674e-08, 0.959567606, 2.85170554e-09, -0.281478286)
elseif Lv >= 2200  then
    NameMon = "Seasoned Fishman [Lv. 2200]"
    NameQuest = "Kill 1 Seasoned Fishman"
    CFrameMon = CFrame.new(-1876.44421, 58.0667191, 6768.50439, 0.958150625, 2.51218157e-10, -0.286264449, 2.40934317e-09, 1, 8.94184282e-09, 0.286264449, -9.25734156e-09, 0.958150625)
    end
end

    if W2 then -- เช็คโลก
        if Lv == 2250 or Lv <= 2299  then
            NameMon = "Beast Pirate [Lv. 2250]"
            NameQuest = "Kill 4 Beast Pirates"
            CFrameMon = CFrame.new(-4165.73535, 79.1572876, -81.9431, -0.993501842, 3.670133e-08, -0.113816023, 4.25301181e-08, 1, -4.87841731e-08, 0.113816023, -5.3307776e-08, -0.993501842)
        elseif Lv == 2250 or Lv <= 2299 then
            NameMon = "Beast Pirate [Lv. 2250]"
            NameQuest = "Kill 4 Beast Pirates"
            CFrameMon = CFrame.new(-4165.73535, 79.1572876, -81.9431, -0.993501842, 3.670133e-08, -0.113816023, 4.25301181e-08, 1, -4.87841731e-08, 0.113816023, -5.3307776e-08, -0.993501842)
    elseif Lv == 2300 or Lv <= 2349 then
            NameMon = "Beast Swordman [Lv. 2300]"
            NameQuest = "Kill 4 Beast Swordman"
            CFrameMon = CFrame.new(-4346.93604, 93.4327316, 452.744934, 0.998897612, 4.21561452e-08, 0.0469425134, -3.97770741e-08, 1, -5.16146699e-08, -0.0469425134, 4.96905344e-08, 0.998897612)
    elseif Lv == 2350 or Lv <= 2399 then
            NameMon = "Gazelle Man [Lv. 2350]"
            NameQuest = "Kill 1 Gazelle Man"
            CFrameMon = CFrame.new(-4323.44238, 93.4327316, 449.226959, 0.987814426, -4.46080106e-09, 0.155636296, 3.18021859e-10, 1, 2.66432352e-08, -0.155636296, -2.62690776e-08, 0.987814426)
    elseif Lv == 2400 or Lv <= 2449 then
            NameMon = "Bandit Beast Pirate [Lv. 2400]"
            NameQuest = "Kill 4 Bandit Beast Pirates"
            CFrameMon = CFrame.new(-4354.45996, 176.370926, -1020.20056, 0.177327409, -1.56253055e-08, 0.9841519, -3.6723462e-09, 1, 1.65386176e-08, -0.9841519, -6.5468968e-09, 0.177327409)
    elseif Lv == 2450 or Lv <= 2499 then
            NameMon = "Powerful Beast Pirate [Lv. 2450]"
            NameQuest = "Kill 4 Powerful Beast Pirates"
            CFrameMon = CFrame.new(-4657.93799, 246.116379, -659.181274, 0.991263211, -7.88152903e-08, -0.131898463, 6.82834624e-08, 1, -8.43709813e-08, 0.131898463, 7.46273727e-08, 0.991263211)
    elseif Lv == 2500 or Lv <= 2549 then
            NameMon = "Violet Samurai [Lv. 2500]"
            NameQuest = "Kill 1 Violet Samurai"
            CFrameMon = CFrame.new(-5241.48926, 166.53476, -1083.005, -0.961781085, -8.2593715e-08, -0.273819566, -5.66279041e-08, 1, -1.02732137e-07, 0.273819566, -8.33000016e-08, -0.961781085)
    elseif Lv == 2550 or Lv <= 2599 then
            NameMon = "Duke [Lv. 2550]"
            NameQuest = "Kill 1 Duke"
            CFrameMon = CFrame.new(-5658.31152, 243.85408, -171.258453, 0.64331001, -7.77872486e-08, -0.765605748, 6.17776266e-08, 1, -4.96927868e-08, 0.765605748, -1.53294391e-08, 0.64331001)
    elseif Lv == 2600 or Lv <= 2649 then
            NameMon = "Magician [Lv. 2600]"
            NameQuest = "Kill 1 Magician"
            CFrameMon = CFrame.new(-4917.4668, 133.366943, -283.479553, -0.997660935, 7.0541244e-09, -0.0683572516, 9.04348152e-09, 1, -2.87929041e-08, 0.0683572516, -2.93437434e-08, -0.997660935)
    elseif Lv == 2650 or Lv <= 2699 then
            NameMon = "Kitsune Samurai [Lv. 2650]"
            NameQuest = "Kill 1 Kitsune Samurai"
            CFrameMon = CFrame.new(-5573.45703, 211.222885, 91.0026932, 0.315181255, -6.78751721e-10, -0.949031472, -1.19988872e-08, 1, -4.70013495e-09, 0.949031472, 1.28687168e-08, 0.315181255)
    elseif Lv == 2700 or Lv <= 2749 then
            NameMon = "Elite Beast Pirate [Lv. 2700]"
            NameQuest = "Kill 4 Elite Beast Pirates" --ถ้าบัคให้เเก้เป็นs
            CFrameMon = CFrame.new(-4556.68848, 73.4863129, 1362.23218, 0.99756068, 3.48701263e-08, 0.0698048025, -2.89415034e-08, 1, -8.59428084e-08, -0.0698048025, 8.37129122e-08, 0.99756068)
    elseif Lv == 2750 or Lv <= 2799 then
            NameMon = "Bear Man [Lv. 2750]"
            NameQuest = "Kill 1 Bear Man"
            CFrameMon = CFrame.new(-4569.16797, 70.6992645, 823.223572, -0.400589317, -7.00391354e-08, -0.916257739, -5.39449552e-08, 1, -5.2855615e-08, 0.916257739, 2.82540871e-08, -0.400589317)
    elseif Lv == 2800 or Lv <= 2849 then
            NameMon = "Bean [Lv. 2800]"
            NameQuest = "Kill 1 Bean"
            CFrameMon = CFrame.new(-3935.6189, 70.2725067, 1140.22852, 0.444667518, 3.67571857e-08, 0.895695686, -4.79322182e-08, 1, -1.72416641e-08, -0.895695686, -3.52658738e-08, 0.444667518)
    elseif Lv == 2850 or Lv <= 2899  then
            NameMon = "Meji [Lv. 2850]"
            NameQuest = "Kill 1 Meji"
            CFrameMon = CFrame.new(-5282.65527, 168.714203, 1202.00281, 0.999998808, 8.14423942e-08, 0.00152613316, -8.13641634e-08, 1, -5.13204093e-08, -0.00152613316, 5.1196178e-08, 0.999998808)
    elseif Lv == 2900 or Lv <= 2949 then
            NameMon = "Petra [Lv. 2900]"
            NameQuest = "Kill 1 Petra"
            CFrameMon = CFrame.new(-5506.65967, 80.1047363, 1213.2677, -0.0927385315, 1.67479914e-08, 0.995690525, 1.96447978e-08, 1, -1.49907642e-08, -0.995690525, 1.81699171e-08, -0.0927385315)
    elseif Lv == 2950 or Lv <= 2999 then
            NameMon = "Kappa [Lv. 2950]"
            NameQuest = "Kill 1 Kappa"
            CFrameMon = CFrame.new(-4870.96436, 109.249718, 1918.02087, -0.988098741, -2.58758135e-08, 0.153820992, -2.17960796e-08, 1, 2.82089889e-08, -0.153820992, 2.45205722e-08, -0.988098741)
    elseif Lv == 3000 or Lv <= 3049 then
            NameMon = "Joey [Lv. 3000]"
            NameQuest = "Kill 1 Joey"
            CFrameMon = CFrame.new(-5453.896, 119.401352, 2082.46582, 0.0515211895, 6.46570371e-08, -0.998671889, -6.66838886e-08, 1, 6.13028206e-08, 0.998671889, 6.34369357e-08, 0.0515211895)
    elseif Lv == 3050 or Lv <= 3099 then
            NameMon = "Skull Pirate [Lv. 3050]"
            NameQuest = "Kill 4 Skull Pirates"
            CFrameMon = CFrame.new(-6422.20312, 78.0515594, 6913.67236, -0.996762514, -7.97378519e-08, 0.0804019794, -7.65185746e-08, 1, 4.31208242e-08, -0.0804019794, 3.68289754e-08, -0.996762514)
    elseif Lv == 3100 or Lv <= 3124 then
            NameMon = "Elite Skeleton [Lv. 3100]"
            NameQuest = "Kill 1 Elite Skeleton"
            CFrameMon = CFrame.new(-6027.06445, 158.240173, 7226.86572, -0.00901880302, -2.64764619e-08, -0.99995935, 7.42757393e-08, 1, -2.71474434e-08, 0.99995935, -7.45175512e-08, -0.00901880302)
    elseif Lv == 3125 or Lv <= 3149 then
            NameMon = "Desert Thief [Lv. 3125]"
            NameQuest = "Kill 1 Desert Thief"
            CFrameMon = CFrame.new(1355.81299, 94.089859, 1669.18787, 0.976206958, 6.52478676e-08, -0.216840908, -6.50513883e-08, 1, 8.04391043e-09, 0.216840908, 6.25328056e-09, 0.976206958)
    elseif Lv == 3150 or Lv <= 3174 then
            NameMon = "Anubis [Lv. 3150]"
            NameQuest = "Kill 1 Anubis"
            CFrameMon = CFrame.new(2331.73926, 123.106415, 843.643616, -0.540480673, 7.59256267e-08, 0.841356456, 7.58549561e-08, 1, -4.15133137e-08, -0.841356456, 4.13839132e-08, -0.540480673)
    elseif Lv == 3175 or Lv <= 3199 then
            NameMon = "Pharaoh [Lv. 3175]"
            NameQuest = "Kill 1 Pharaoh"
            CFrameMon = CFrame.new(2031.13794, 48.827404, 1640.93506, -0.5123716, 3.12598436e-09, 0.858763814, 3.90376087e-09, 1, -1.31096356e-09, -0.858763814, 2.68070832e-09, -0.5123716)
    elseif Lv ==  3200 or Lv <= 3224 then
            NameMon = "Chess Soldier [Lv. 3200]"
            NameQuest = "Kill 4 Chess Soldiers"
            CFrameMon = CFrame.new(-9.92300224, 77.0793686, 8150.47705, 0.464142531, 5.47901671e-08, 0.885760546, 4.74598894e-09, 1, -6.43435598e-08, -0.885760546, 3.4068389e-08, 0.464142531)
    elseif Lv == 3225 or Lv <= 3249 then
            NameMon = "Sunken Vessel [Lv. 3225]"
            NameQuest = "Kill 1 Sunken Vessel"
            CFrameMon = CFrame.new(-1017.96582, 75.3193588, 8128.25977, -0.61855787, 5.77432502e-08, 0.785739243, 3.76135958e-08, 1, -4.38785044e-08, -0.785739243, 2.41308373e-09, -0.61855787)
    elseif Lv == 3250 or Lv <= 3273 then
            NameMon = "Biscuit Man [Lv. 3250]"
            NameQuest = "Kill 1 Biscuit Man"
            CFrameMon = CFrame.new(-1379.92102, 202.274521, 8832.54102, -0.0464410745, -6.97687739e-08, 0.998921037, 1.60475722e-09, 1, 6.9918741e-08, -0.998921037, 4.85012741e-09, -0.0464410745)
    elseif Lv == 3275 or Lv <= 3299 then
            NameMon = "Dough Master [Lv. 3275]"
            NameQuest = "Kill 1 Dough Master"
            CFrameMon = CFrame.new(30275.7754, 65.4516144, 93200.2188, -0.979407072, -8.56784084e-08, -0.201895446, -7.69157111e-08, 1, -5.12473903e-08, 0.201895446, -3.46631275e-08, -0.979407072)
    elseif Lv == 3300 or Lv <= 3324 then
            NameMon = "Azlan [Lv. 3300]"
            NameQuest = "Kill 4 Azlan"
            CFrameMon = CFrame.new(-631.920654, 85.3876572, -2840.41504, 0.178087637, -6.29511163e-08, 0.98401463, 8.48872332e-08, 1, 4.86108114e-08, -0.98401463, 7.48732916e-08, 0.178087637)
    elseif Lv == 3325 or Lv <= 3399 then ----มีบอสที่ต้องเสก3325
            NameMon = "The Volcano [Lv. 3325]"
            NameQuest = "Kill 4 The Volcano"
            CFrameMon = CFrame.new(206.296417, 152.159531, -3470.37158, 0.467936039, 6.54194778e-08, 0.88376236, 1.95075778e-08, 1, -8.43527417e-08, -0.88376236, 5.67117482e-08, 0.467936039)
    elseif Lv == 3400 or Lv <= 3424 then
            NameMon = "Dark Beard Servant [Lv. 3400]"
            NameQuest = "Kill 4 Dark Beard Servant"
            CFrameMon = CFrame.new(-9193.84961, 102.292503, -4574.53955, 0.996199608, -9.75396759e-08, 0.087099418, 1.01515433e-07, 1, -4.1216861e-08, -0.087099418, 4.99021588e-08, 0.996199608)
    elseif Lv == 3425 or Lv <= 3449 then
            NameMon = "Supreme Swordman [Lv. 3425]"
            NameQuest = "Kill 1 Supreme Swordman"
            CFrameMon = CFrame.new(-9727.23047, 119.628937, -4511.20801, 0.926412582, -6.23715621e-08, -0.376509905, 5.44072449e-08, 1, -3.17866906e-08, 0.376509905, 8.96272212e-09, 0.926412582)
    elseif Lv == 3450 or Lv <= 3499 then
            NameMon = "Sally [Lv. 3450]"
            NameQuest = "Kill 1 Sally"
            CFrameMon = CFrame.new(-9565.88965, 135.426941, -5370.08545, -0.999682903, 4.56637617e-09, -0.0251808744, 2.5403708e-09, 1, 8.04900964e-08, 0.0251808744, 8.04006035e-08, -0.999682903)
    elseif Lv == 3500 or Lv <= 3524 then
            NameMon = "Vice Admiral [Lv. 3500]"
            NameQuest = "Kill 5 Vice Admiral"
            CFrameMon = CFrame.new(-10002.6904, 87.3996887, 417.532684, -0.200062275, 6.30546921e-08, 0.979783177, 5.72152885e-08, 1, -5.26729487e-08, -0.979783177, 4.55207072e-08, -0.200062275)
    elseif Lv == 3525 or Lv <= 3549 then
            NameMon = "Pondere [Lv. 3525]"
            NameQuest = "Kill 1 Pondere"
            CFrameMon = CFrame.new(-10137.2607, 100.180016, 1302.14185, -0.788841367, -2.98269214e-08, -0.614596844, 2.69828551e-08, 1, -8.31636484e-08, 0.614596844, -8.21865029e-08, -0.788841367)
    elseif Lv == 3550 or Lv <= 3599 then
            NameMon = "Hefty [Lv. 3550]"
            NameQuest = "Kill 1 Hefty"
            CFrameMon = CFrame.new(-10607.1182, 83.3532639, 966.647156, -0.0199217312, -2.62296673e-08, 0.999801517, 1.2840597e-08, 1, 2.64907314e-08, -0.999801517, 1.33657903e-08, -0.0199217312)
    elseif Lv == 3600 or Lv <= 3624 then
            NameMon = "Fiore Gladiator [Lv. 3600]"             
            NameQuest = "Kill 6 Fiore Gladiator"
            CFrameMon = CFrame.new(5154.98926, 95.1037903, -2964.51538, -0.384478599, 1.01475921e-08, -0.92313391, 2.07894892e-08, 1, 2.33387421e-09, 0.92313391, -1.82941573e-08, -0.384478599)
    elseif Lv == 3625 or Lv <= 3649 then
            NameMon = "Fiore Fighter [Lv. 3625]" 
            NameQuest = "Kill 6 Fiore Fighter" 
            CFrameMon = CFrame.new(5490.54785, 84.5201492, -2558.8457, -0.805967569, -5.33750715e-08, 0.591959655, -3.97060838e-08, 1, 3.61059378e-08, -0.591959655, 5.59581492e-09, -0.805967569)
    elseif Lv == 3650 or Lv <= 3674 then
            NameMon = "Fiore Pirate [Lv. 3650]"
            NameQuest = "Kill 7 Fiore Pirate"
            CFrameMon = CFrame.new(6002.45801, 106.856102, -2894.09668, 0.993334472, 4.58113085e-08, -0.115267478, -5.62620386e-08, 1, -8.74115997e-08, 0.115267478, 9.33141422e-08, 0.993334472)
    elseif Lv == 3675 or Lv <= 3699 then
            NameMon = "Lomeo [Lv. 3675]"
            NameQuest = "Kill 1 Lomeo"
            CFrameMon = CFrame.new(6457.48145, 112.269753, -2338.70166, -0.674927413, 1.41290712e-08, -0.737884104, 3.01929126e-09, 1, 1.63864069e-08, 0.737884104, 8.83174778e-09, -0.674927413)
    elseif Lv == 3700 or Lv <= 3724 then
            NameMon = "Prince Aria [Lv. 3700]"
            NameQuest = "Kill 1 Prince Aria"
            CFrameMon = CFrame.new(6660.98828, 185.882019, -3806.90332, -0.432480991, 1.05719614e-07, -0.901643038, 9.01952202e-09, 1, 1.12925889e-07, 0.901643038, 4.07059133e-08, -0.432480991)
    elseif Lv == 3725 or Lv <= 3774 then
            NameMon = "Devastate [Lv. 3725]"
            NameQuest = "Kill 1 Devastate"
            CFrameMon = CFrame.new(7631.65137, 122.167465, -2645.56616, -0.373597473, -1.80023054e-08, 0.927590907, 1.22821877e-08, 1, 2.43543781e-08, -0.927590907, 2.049158e-08, -0.373597473)
    elseif Lv == 3775  or Lv <= 3799 then 
            NameMon = "Floffy [Lv. 3775]"
            NameQuest = "Kill 1 Floffy"
            CFrameMon = CFrame.new(7863.01367, 470.011475, -2578.41455, -0.955782413, 1.50890926e-08, 0.294074744, -1.7449489e-08, 1, -1.08023585e-07, -0.294074744, -1.08378494e-07, -0.955782413)
    elseif Lv == 3800 or Lv <= 3849 then
            NameMon = "Dead Troupe [Lv. 3800]"
            NameQuest = "Kill 4 Dead Troupe"
            CFrameMon = CFrame.new(9482.67285, 89.5682755, -4066.95435, 0.832089663, 3.07615089e-08, -0.554641128, 3.33796386e-08, 1, 1.05539165e-07, 0.554641128, -1.06331768e-07, 0.832089663)
    elseif Lv == 3850 or Lv <= 3974 then 
            NameMon = "Dead Troupe Captain [Lv. 3850]"
            NameQuest = "Kill 4 Dead Troupe Captain"
            CFrameMon = CFrame.new(10033.6436, 102.078606, -3935.14941, 0.744436026, -1.72237673e-08, -0.667693794, -1.49188217e-08, 1, -4.24294448e-08, 0.667693794, 4.15472101e-08, 0.744436026)
    elseif Lv >= 3975 then
            NameMon = "Ryu [Lv. 3975]"
            NameQuest = "Kill 1 Ryu"
            CFrameMon = CFrame.new(9917.09082, 86.03022, -4842.94238, -0.974786699, 1.07214566e-08, -0.223138794, 6.08973716e-09, 1, 2.14452243e-08, 0.223138794, 1.95456629e-08, -0.974786699)
        end
    end 
    --Lord of Saber [Lv. 8500]
    
    if W3 then -- เช็คโลก game:GetService("Workspace").Monster.Boss["Lord of Saber [Lv. 8500]"].HumanoidRootPart  1608.90405, 291.092926, -1070.27002, -0.0443007983, 0, -0.999018312, 0, 1, 0, 0.999018312, 0, -0.0443007946
        if Lv == 4000 or Lv <= 4049 then
            NameMon = "Deep Diver [Lv. 4000]"
            NameQuest = "Kill 4 Deep Diver"
            CFrameMon = CFrame.new(1427.50378, 86.9143066, 981.238647, 0.207373455, 2.42449154e-08, -0.978261828, 1.50762247e-09, 1, 2.51032546e-08, 0.978261828, -6.6805983e-09, 0.207373455)
        elseif Lv == 4050 or Lv <= 4149 then
            NameMon = "Fugitive [Lv. 4050]"
            NameQuest = "Kill Fugitive"
            CFrameMon = CFrame.new(2699.85156, 35.5768166, 1023.83252, -0.536523819, -9.67664633e-08, -0.843885183, -3.76411506e-08, 1, -9.07363855e-08, 0.843885183, -1.69174204e-08, -0.536523819)
        elseif Lv == 4150 or Lv <= 4199 then
            NameMon = "Fishman Guardian [Lv. 4150]"
            NameQuest = "Kill 6 Fishman Guardian"
            CFrameMon = CFrame.new(1784.93933, 66.3743515, 189.335953, -0.166427165, -8.02409232e-08, -0.986053765, -1.78638988e-08, 1, -7.83607206e-08, 0.986053765, 4.57341098e-09, -0.166427165)
        elseif Lv == 4200 or Lv <= 4249 then
            NameMon = "The deep one [Lv. 4200]"
            NameQuest = "Kill The deep one" --บอสไม่รู้ว่าได้ป่าว
            CFrameMon = CFrame.new(3041.08716, 174.687195, 26.9070129, -0.652419209, -4.26592912e-08, 0.757858276, -2.20992415e-08, 1, 3.72646483e-08, -0.757858276, 7.56408003e-09, -0.652419209)
        elseif Lv == 4250 or Lv <= 4299 then
            NameMon = "Fishman King's Guard [Lv. 4250]"
            NameQuest = "Kill Fishman King's Guard"
            CFrameMon = CFrame.new(1850.63477, 57.1331673, -260.756805, 0.0037303844, -6.2026082e-08, -0.999993026, 5.04091275e-08, 1, -6.18384703e-08, 0.999993026, -5.01780946e-08, 0.0037303844)
        elseif  Lv == 4300 or Lv <= 4324 then
            NameMon = "Jungle Gorilla [Lv. 4300]"
            NameQuest = "Kill 5 Jungle Gorilla"
            CFrameMon = CFrame.new(4282.1626, 180.477219, 9106.09863, -0.827997208, -1.69428116e-08, -0.560732186, 1.09286038e-08, 1, -4.63530796e-08, 0.560732186, -4.45082406e-08, -0.827997208)
        elseif Lv == 4325 or Lv <= 4349 then
            NameMon = "Wilderness Gorilla [Lv. 4325]"
            NameQuest = "Kill 5 Wilderness Gorilla"
            CFrameMon = CFrame.new(4833.40137, 54.4393272, 10217.8125, 0.92262882, -3.57880943e-08, 0.385689139, 1.29449109e-08, 1, 6.18237408e-08, -0.385689139, -5.20476569e-08, 0.92262882)
        elseif Lv == 4350 or Lv <= 4374 then
            NameMon = "Jungle Ape [Lv. 4350]"
            NameQuest = "Kill 5 Jungle Ape"
            CFrameMon = CFrame.new(5225.08838, 85.4308624, 9786.15625, 0.812762737, -3.11326041e-08, -0.582594812, -4.6610884e-09, 1, -5.99403904e-08, 0.582594812, 5.1432842e-08, 0.812762737)
        elseif Lv == 4375 or Lv <= 4399 then --4375
            NameMon = "Cyborg Gorilla [Lv. 4375]"
            NameQuest = "Kill 1 Cyborg Gorilla"
            CFrameMon = CFrame.new(6105.86768, 105.181633, 9349.93066, -0.155542895, -7.78324249e-08, 0.987829149, 1.77982551e-09, 1, 7.90716328e-08, -0.987829149, 1.40571945e-08, -0.155542895)
        elseif Lv == 4400 or Lv <= 4449  then
            NameMon = "Ripcurrent Raider [Lv. 4400]" 
            NameQuest = "Kill 1 Ripcurrent Raider"
            CFrameMon = CFrame.new(-875.681519, 18.2920303, -8165.69092, 0.969033062, -6.92211533e-09, 0.246931002, 2.38940223e-09, 1, 1.86558413e-08, -0.246931002, -1.74881087e-08, 0.969033062)
        elseif Lv == 4450 or Lv <= 4499 then
            NameMon = "Tidal Warrior [Lv. 4450]"
            NameQuest = "Kill 1 Tidal Warrior"
            CFrameMon = CFrame.new(-875.681519, 18.2920303, -8165.69092, 0.969033062, -6.92211533e-09, 0.246931002, 2.38940223e-09, 1, 1.86558413e-08, -0.246931002, -1.74881087e-08, 0.969033062)
        elseif Lv >= 4500 then
            NameMon = "Ocean Gladiator [Lv. 4500]"
            NameQuest = "Kill 1 Ocean Gladiator"
            CFrameMon = CFrame.new(-325.191742, 62.4373932, -8730.89258, 0.70626539, 5.60174911e-08, -0.707947135, -6.56724879e-08, 1, 1.36101743e-08, 0.707947135, 3.68802553e-08, 0.70626539)
        end
    end
end









_G.Settings = {
	SelectWeapon = "",
	SelectWeapon2 = "",
	SelectNameBoss = "",
	SelectMonNearest = "",
	SelectMon = "",
	Haki = true,
	SkillZ = true,
	SkillX = false,
	SkillC = false,
	SkillV = false,
	SkillE = false,
    SkillB = false,
	MaxPoint = true,
	Method = "Settings",
	DistanceMob = 7,
	GanX = 0,
	GanY = 7,
	GanZ = 0,
	GanAngles = 90,

}

wait(0.01)
if _G.MrMaxNaJaBuy == true then
function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("MrMaxNaJa") then
			makefolder("MrMaxNaJa")
		end
		if not isfolder("MrMaxNaJa/King Legacy/") then
			makefolder("MrMaxNaJa/King Legacy/")
		end
		if not isfile("MrMaxNaJa/King Legacy/.json") then
			writefile("MrMaxNaJa/King Legacy/.json", game:GetService("HttpService"):JSONEncode(_G.Settings))
		else
			local L_54_ = game:GetService("HttpService"):JSONDecode(readfile("MrMaxNaJa/King Legacy/.json"))
			for L_55_forvar0, L_56_forvar1 in pairs(L_54_) do
				_G.Settings[L_55_forvar0] = L_56_forvar1
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end
wait(0.01)
function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("MrMaxNaJa/King Legacy/.json") then
			LoadSettings()
		else
			local L_57_ = game:GetService("HttpService"):JSONDecode(readfile("MrMaxNaJa/King Legacy/.json"))
			local L_58_ = {}
			for L_59_forvar0, L_60_forvar1 in pairs(_G.Settings) do
				L_58_[L_59_forvar0] = L_60_forvar1
			end
			writefile("MrMaxNaJa/King Legacy/.json", game:GetService("HttpService"):JSONEncode(L_58_))
		end
	else
		return warn("Status : Undetected Executor")
	end
end

wait(0.01)
LoadSettings()
wait(0.01)
else
	wait(0.15)
end


function Hop()
	local Dy = game.PlaceId
	local Iy = {}
	local wy = ""
	local jy = os.date("!*t").hour
	local Py = false
	function TPReturner()
		local a
		if wy == "" then
			a =
				game.HttpService:JSONDecode(
				game:HttpGet("https://games.roblox.com/v1/games/" .. Dy .. "/servers/Public?sortOrder=Desc&limit=100")
			)
		else
			a =
				game.HttpService:JSONDecode(
				game:HttpGet(
					"https://games.roblox.com/v1/games/" .. Dy .. "/servers/Public?sortOrder=Desc&limit=100&cursor=" .. wy
				)
			)
		end
		local Xs = ""
		if a.nextPageCursor and a.nextPageCursor ~= "null" and a.nextPageCursor ~= nil then
			wy = a.nextPageCursor
		end
		local Os = 0
		for cW, wW in pairs(a.data) do
			local TW = true
			Xs = tostring(wW.id)
			if tonumber(wW.maxPlayers) > tonumber(wW.playing) then
				for uO, ZO in pairs(Iy) do
					if Os ~= 0 then
						if Xs == tostring(ZO) then
							TW = false
						end
					else
						if tonumber(jy) ~= tonumber(ZO) then
							local om =
								pcall(
								function()
									Iy = {}
									table.insert(Iy, jy)
								end
							)
						end
					end
					Os = Os + 1
				end
				if TW == true then
					table.insert(Iy, Xs)
					wait()
					pcall(
						function()
							wait()
							game:GetService("TeleportService"):TeleportToPlaceInstance(Dy, Xs, i)
						end
					)
					wait(5)
				end
			end
		end
	end

	if getgenv().Teleport == nil then
		getgenv().Teleport = function()
			while task.wait() do
				pcall(function()
					TPReturner()
					if wy ~= "" then
						TPReturner()
					end
				end)
			end
		end
	end
	getgenv().Teleport()
end
randomNumberUI = math.random(1,4)
_G.UIB = "17075379093"

if randomNumberUI == 1 then
    _G.TeamBlack =  true
elseif randomNumberUI == 2 then
    _G.TeamWhite = true
elseif randomNumberUI == 3 then
    _G.TeamGreen = true
elseif randomNumberUI == 4 then
    _G.TeamRed = true
else
    _G.Color = Color3.fromRGB(0,120,120)--Color3.fromRGB(120,35,100)
    _G.FrameTop = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 35, 35)
    _G.FrameTab =  Color3.fromRGB(0,75,75)--Color3.fromRGB(75, 35, 35)
    _G.PageFrame = Color3.fromRGB(0,85,85)--Color3.fromRGB(85, 35, 35)
    _G.ColorI = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 45, 45)
end
local function ry(so)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(so.AbsolutePosition.X+so.AbsoluteSize.X/2,so.AbsolutePosition.Y+50,0,true,so,1);
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(so.AbsolutePosition.X+so.AbsoluteSize.X/2,so.AbsolutePosition.Y+50,0,false,so,1);
end;
local Update = loadstring(game:HttpGet("https://pastebin.com/raw/LZBa7hU1"))() --https://raw.githubusercontent.com/NaJaxHub/ser/main/UIfreeNaJabat"))()
--_G.Color = Color3.fromRGB(0,120,120)--Color3.fromRGB(120,35,100)
--_G.FrameTop = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 35, 35)
--_G.FrameTab =  Color3.fromRGB(0,75,75)--Color3.fromRGB(75, 35, 35)
--_G.PageFrame = Color3.fromRGB(0,85,85)--Color3.fromRGB(85, 35, 35)
--_G.ColorI = Color3.fromRGB(0,100,100)--Color3.fromRGB(100, 45, 45)

local Library = Update:Window("MrMaxNaJa Community | Map King Legacy","",Enum.KeyCode.RightControl);--"MrMaxNaJa Hub | Map King Legacy - Free Script Version 0.1.15.1 By MrMaxNaJa"
Main = Library:Tab("Main")
Stats = Library:Tab("Stats")

Main:Line()

Main:Label("Welcome MrMaxNaJa Community")
Main:Label("Auto Farm Lv.")
Main:Toggle("Auto Farm Lv.\nออโต้ฟาร์มเลเวล",_G.Settings.AutoFarm,function(value)
    _G.Settings.AutoFarm = value
	SaveSettings()
end)
WeaponList = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA("Tool") then
        table.insert(WeaponList ,v.Name)
    end
end
local SelectWeapona = Main:Dropdown("Select Weapon\nเลือกอาวุธ",_G.Settings.SelectWeapon,WeaponList,function(value)
    _G.Settings.SelectWeapon = value
	SaveSettings()
end)

Main:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        SelectWeapona:Add(v.Name)
    end
end)
Main:Line()
Main:Toggle("Enabled Weapon[2]\nเปิดใช้งาน Weapon[2]",_G.Settings.EnabledWeapon,function(value)
    _G.Settings.EnabledWeapon = value
	SaveSettings()
end)
local SelectWeapona = Main:Dropdown("Select Weapon[2]\nเลือกอาวุธตัวที่[2]",_G.Settings.SelectWeapon2,WeaponList,function(value)
    _G.Settings.SelectWeapon2 = value
	SaveSettings()
end)
Main:Button("Refresh Weapon",function()
    SelectWeapona:Clear()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        SelectWeapona:Add(v.Name)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.EnabledWeapon then
                EquipWeapon(_G.Settings.SelectWeapon2)
                wait(1)
            end
        end)
    end
end)
Main:Line()
Main:Toggle("Auto Farm Boss Select\nออโต้ฟาร์มบอสที่เลือกใว้",_G.Settings.AutoFarmBoss,function(value)
    _G.Settings.AutoFarmBoss = value
	SaveSettings()
end)
Bosslist = {}
for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
    table.insert(Bosslist,v.Name)
end
local SelectedBoss = Main:Dropdown("Select Boss Nearest\nเลือกบอสที่อยู่ใกล้ๆ",_G.Settings.SelectNameBoss,Bosslist,function(value)
    _G.Settings.SelectNameBoss = value
	SaveSettings()
end)
Main:Button("Refresh Select Boss Nearest\nรีเฟสการเลือกบอส",function()
    SelectedBoss:Clear()
    for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
        SelectedBoss:Add(v.Name)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmBoss then
                for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                    if v.Name == _G.Settings.SelectNameBoss then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            until not _G.Settings.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmBoss then
                for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                    if v.Name == _G.Settings.SelectNameBoss then
                        repeat wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            Haki()
                            AutoSkill()
                            Cl()
                            Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                        until not _G.Settings.AutoFarmBoss or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

Main:Line()
Main:Toggle("Auto Farm Mon Select\nออโต้ฟาร์มมอนที่เลือก",_G.Settings.AutoFarmMonNearestSelect,function(value)
    _G.Settings.AutoFarmMonNearestSelect = value
	SaveSettings()
end)
Monlist = {}
for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
    table.insert(Monlist,v.Name)
end
local SelectedMon = Main:Dropdown("Select Mon Nearest\nเลือกมอนที่อยู่ใกล้ๆ",_G.Settings.SelectMonNearest,Monlist,function(value)
    _G.Settings.SelectMonNearest = value
	SaveSettings()
end)
Main:Button("Refresh Select Mon\nรีเฟสการเลือกมอน",function()
    SelectedMon:Clear()
    for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
        SelectedMon:Add(v.Name)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmMonNearestSelect then
                for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v.Name == _G.Settings.SelectMonNearest then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                PosMon = v.HumanoidRootPart.CFrame
                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                            until not _G.Settings.AutoFarmMonNearestSelect or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmMonNearestSelect then
                for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v.Name == _G.Settings.SelectMonNearest then
                        repeat wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            Haki()
                            AutoSkill()
                            Cl()
                            Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                        until not _G.Settings.AutoFarmMonNearestSelect or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

if _G.MrMaxNaJaBuy == false then
    Main:Label("Auto Farm All Monster Select\nคุณจะได้ฟังชั้นที่ดีกว่าถ้าซื้อสคริป")
end

if _G.MrMaxNaJaBuy then
Main:Line()
--Main:Label("")
Main:Toggle("Auto Farm Monster Select [VIP]\nออโต้ฟาร์มมอนสเตอร์ที่เลือกไว้",_G.Settings.AutoFarmAllMonsterSelect,function(value)
    _G.Settings.AutoFarmAllMonsterSelect = value
	SaveSettings()
end)
AllMonlist = {}
for i,v in pairs(game:GetService("ReplicatedStorage").MOB:GetChildren()) do
    table.insert(AllMonlist,v.Name)
end
local SelectedMonAll = Main:Dropdown("Select Monster [VIP]\nเลือกมอนสเตอร์แบบ [VIP]",_G.Settings.SelectMon,AllMonlist,function(value)
    _G.Settings.SelectMon = value
	SaveSettings()
end)
Main:Button("Refresh Select Monster \n รีเฟสการเลือกมอนสเตอร์",function()
    SelectedMonAll:Clear()
    for i,v in pairs(game:GetService("ReplicatedStorage").MOB:GetChildren()) do
        SelectedMonAll:Add(v.Name)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmAllMonsterSelect then
                if game:GetService("Workspace").Monster.Mon:FindFirstChild(_G.Settings.SelectMon) then
                    for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                        if v.Name == _G.Settings.SelectMon then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    PosMon = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoFarmAllMonsterSelect or not v.Parent or v.Humanoid.Health <= 0
                            end
                        end
                    end
                elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(_G.Settings.SelectMon) then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == _G.Settings.SelectMon then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    PosMon = v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoFarmAllMonsterSelect or not v.Parent or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                else
                    Tween(game:GetService("ReplicatedStorage").MOB[_G.Settings.SelectMon].HumanoidRootPart.CFrame * CFrame.new(0,50,0))
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmAllMonsterSelect then
                if game:GetService("Workspace").Monster.Mon:FindFirstChild(_G.Settings.SelectMon) then
                    for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                        if v.Name == _G.Settings.SelectMon then
                            repeat wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                Haki()
                                AutoSkill()
                                Cl()
                                Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                            until not _G.Settings.AutoFarmAllMonsterSelect or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(_G.Settings.SelectMon) then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == _G.Settings.SelectMon then
                            repeat wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                Haki()
                                AutoSkill()
                                Cl()
                                Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                            until not _G.Settings.AutoFarmAllMonsterSelect or not v.Parent or v.Humanoid.Health <= 0
                        end
                    end
                end
            end
        end)
    end
end)
end
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
    end
end
if W3 then

--Bushido Ape [Lv.5000]
Main:Label("Auto Bushido Ape")

Main:Toggle("Auto Bushido\nออโต้ฟามบอสลิง",_G.Settings.AutoBushido,function(value)
    _G.Settings.AutoBushido = value
    SaveSettings()
end)
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoBushido then   
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Bushido Ape [Lv. 5000]") then
                    for i,v in pairs(ame:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Bushido Ape [Lv. 5000]" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoSkill()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Cl()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoBushido or not v.Parent or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                else
                    Tween(CFrame.new(5109.83252, 398.845581, 8819.51953, -3.76105309e-05, -0.00615550438, -0.999981105, 4.40332806e-05, 0.999980986, -0.00615548715, 1, -4.42619203e-05, -3.72827053e-05))                
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoBushido then 
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Bushido Ape [Lv. 5000]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Bushido Ape [Lv. 5000]" then
                           -- if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoBushido or not v.Parent or v.Humanoid.Health <= 0
                          --  end
                        end
                    end
                end
            end
        end)
    end
end)



    Main:Toggle("Auto Farm SaberV2\nออโต้ฟาร์มเเชงค์v2",_G.Settings.AutoFarmSaberV2,function(value)
        _G.Settings.AutoFarmSaberV2 = value
	SaveSettings()
    end)
    --game:GetService("Workspace").Monster.Boss["Lord of Saber [Lv. 8500]"].HumanoidRootPart  1608.90405, 291.092926, -1070.27002, -0.0443007983, 0, -0.999018312, 0, 1, 0, 0.999018312, 0, -0.0443007946
    spawn(function()
        while wait() do --Lord of Saber [Lv. 8500]
            pcall(function()
                if _G.Settings.AutoFarmSaberV2 then
                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Lord of Saber [Lv. 8500]") then
                        for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                            if v.Name == "Lord of Saber [Lv. 8500]" then
                                --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        PosMon =  v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    until not _G.Settings.AutoFarmSaberV2 or not v.Parent or v.Humanoid.Health <= 0
                                --end
                            end
                        end
                    else
                        Tween(CFrame.new(1608.90405, 291.092926, -1070.27002, -0.0443007983, 0, -0.999018312, 0, 1, 0, 0.999018312, 0, -0.0443007946))
                    end
                end
            end)
        end
    end)
        spawn(function()
        while wait() do --Lord of Saber [Lv. 8500]
            pcall(function()
                if _G.Settings.AutoFarmSaberV2 then
                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Lord of Saber [Lv. 8500]") then
                        for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                            if v.Name == "Lord of Saber [Lv. 8500]" then
                                --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        EquipWeapon(_G.Settings.SelectWeapon)
                                        Haki()
                                        Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                        Cl()
                                        AutoSkill()
                                    until not _G.Settings.AutoFarmSaberV2 or not v.Parent or v.Humanoid.Health <= 0
                                --end
                            end
                        end
                    end
                end
            end)
        end
    end)
end

if W2 then
Main:Label("Auto Farm Glass")

Main:Toggle("Auto Farm Glass\nออโต้ฟาร์มฟาร์มแค่ลูกแก้วเเดง",_G.Settings.AutoFarmGlass,function(value)
    _G.Settings.AutoFarmGlass = value
	SaveSettings()
end)

spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoFarmGlass then 
                if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false then
                    Tween(CFrame.new(-6026.2168, 158.240189, 7228.7085, -0.0723073334, -5.36073692e-08, -0.997382402, 8.2671292e-08, 1, -5.97414882e-08, 0.997382402, -8.67746408e-08, -0.0723073334))
                    local args = {
                        [1] = "take",
                        [2] = "Kill 1 Elite Skeleton"
                    }

                    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer(unpack(args))
                else
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Elite Skeleton [Lv. 3100]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Elite Skeleton [Lv. 3100]" then
                           -- if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame 
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoFarmGlass or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                          --  end
                        end
                    end
                else  
                    Tween(CFrame.new(-6026.2168, 158.240189, 7228.7085, -0.0723073334, -5.36073692e-08, -0.997382402, 8.2671292e-08, 1, -5.97414882e-08, 0.997382402, -8.67746408e-08, -0.0723073334))
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoFarmGlass then 
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Elite Skeleton [Lv. 3100]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Elite Skeleton [Lv. 3100]" then
                           -- if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * MethodFarm)
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoFarmGlass or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                          --  end
                        end
                    end
                end
            end
        end)
    end
end)


Main:Label("Auto BigMom")

Main:Toggle("Auto BigMom\nออโต้ฟามบิ๊กมำ",_G.Settings.AutoBigMon,function(value)
    _G.Settings.AutoBigMon = value
    SaveSettings()
end)

spawn(function()
	while wait() do  
		pcall(function()
			if _G.Settings.AutoBigMon then  
				if game:GetService("Workspace").Monster.Boss:FindFirstChild("Ms. Mother [Lv. 7500]") then
					for i, v in pairs(ame:GetService("Workspace").Monster.Boss:GetChildren()) do
						if v.Name == "Ms. Mother [Lv. 7500]" then
							--if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								repeat task.wait()
									AutoSkill()
									EquipWeapon(_G.Settings.SelectWeapon)
									Haki() 
									Cl()
									Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
									v.HumanoidRootPart.CanCollide = false
									v.Humanoid.WalkSpeed = 0
									v.Head.CanCollide = false
									PosMon =  v.HumanoidRootPart.CFrame
									v.HumanoidRootPart.Size = Vector3.new(80,80,80)
								until not _G.Settings.AutoBigMon or not v.Parent or v.Humanoid.Health <= 0
							--end
						end
					end
				end
			end
		end)
	end
end)





Main:Label("Auto Farm SeaKing")
Main:Toggle("Auto Farm SeaKing",_G.Settings.AutoFarmSeaKing,function(value)
    _G.Settings.AutoFarmSeaKing = value
	SaveSettings() --กล่อง -670.511047, 20.845871, -7412.35156, -0.996531844, -7.71622055e-08, 0.083212465, -8.09884781e-08, 1, -4.26064943e-08, -0.083212465, -4.9197979e-08, -0.996531844
end)
--game:GetService("Workspace").SecondSeaPreload
spawn(function() -- SeaKing
    while wait() do
        pcall(function() -- game:GetService("Workspace").SeaMonster.SeaKing.HumanoidRootPart -728.328003, 32.973999, -7758.54932, 0.129663587, 0, 0.991558075, 0, 1, 0, -0.991558075, 0, 0.129663587
            if _G.Settings.AutoFarmSeaKing then
                if game:GetService("Workspace").SeaMonster:FindFirstChild("SeaKing") then
                    for i, v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do 
                        if v.Name == "SeaKing" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Cl()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))-- CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    AutoSkill()
                                    Haki()
                                until not _G.Settings.AutoFarmSeaKing or not v.Parent -- or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                else 
                if game:GetService("Workspace").SeaMonster.SeaKing.Humanoid.Health <= 0 then
                    if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame
                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame
                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame
                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
                       game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame
                    end
                end
                   print("QNA")-- Tween(CFrame.new(-670.511047, 20.845871, -7412.35156, -0.996531844, -7.71622055e-08, 0.083212465, -8.09884781e-08, 1, -4.26064943e-08, -0.083212465, -4.9197979e-08, -0.996531844))
                end
            end
        end)
    end
end)

---12465.7666, 18.7575169, -2334.94141, 0.0205248594, -0, -0.999789357, 0, 1, -0, 0.999789357, 0, 0.0205248594
---12464.8066, 21.7249298, -2334.81055, 0.016664369, -3.59973349e-08, -0.999861121, 3.46885791e-08, 1, -3.54241898e-08, 0.999861121, -3.40934392e-08, 0.016664369
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoFarmSeaKing then 
                if CFrameQAutoFarmAutoFarmSeaKing.Position (game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1500 then
                    for i, v in pairs(game:GetService("Workspace").SeaMonster.SeaKing:GetChildren()) do
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
								AutoSkill()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                Haki()
                                Tween(v.HumanoidRootPart.CFrame * MethodFarm)
                                Cl()
                                AutoSkill()
                                if v.Humanoid.Health <= 0 then
                                    if game:GetService("Workspace").Island:FindFirstChild("Legacy Island1") then
                                    	Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame)--CFrame.new(12465.7666, 18.7575169, -2334.94141, 0.0205248594, -0, -0.999789357, 0, 1, -0, 0.999789357, 0, 0.0205248594)--
                                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island2") then
                                    	Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame)
                                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island3") then
                                    	Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame)
                                    elseif game:GetService("Workspace").Island:FindFirstChild("Legacy Island4") then
                                    	Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame)
									else
										Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island1").ChestSpawner.CFrame)
										Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island2").ChestSpawner.CFrame)
										Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island3").ChestSpawner.CFrame)
										Tween(game:GetService("Workspace").Island:FindFirstChild("Legacy Island4").ChestSpawner.CFrame)
										
                                    end
                                end
                            until not _G.Settings.AutoFarmSeaKing or not v.Parent -- or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                        end
                    end
                end
            end
        end)
    end
end)
Main:Label("Auto Ghost Ship")
Main:Toggle("Auto Ghost Ship",_G.Settings.GhostShip,function(value)
    _G.Settings.GhostShip = value
	SaveSettings()
end)
spawn(function()
	while wait() do  
		pcall(function()
			if _G.Settings.GhostShip then 
				if game:GetService("Workspace").GhostMonster:FindFirstChild("Ghost Ship") then
					for i,v in pairs(game:GetService("Workspace").GhostMonster:GetChildren()) do
						if v.Name == "Ghost Ship" then
							repeat wait()
								AutoSkill()
								EquipWeapon(_G.Settings.SelectWeapon)
								Haki()
								Cl()
								Tween(v.HumanoidRootPart.CFrame * CFrame.new(0,8,8))--CFrame.new(0,0,8)
								v.HumanoidRootPart.CanCollide = false
								v.Humanoid.WalkSpeed = 0
								v.Head.CanCollide = false
								PosMon =  v.HumanoidRootPart.CFrame
								v.HumanoidRootPart.Size = Vector3.new(80,80,80)
							until not _G.Settings.GhostShip or not v.Parent or v.Humanoid.Health <= 0
						end
					end
				else
					if game:GetService("Workspace"):FindFirstChild("Chest1") then
						Tween(game:GetService("Workspace").Chest1.RootPart.CFrame)
					elseif game:GetService("Workspace"):FindFirstChild("Chest2") then
						Tween(game:GetService("Workspace").Chest2.RootPart.CFrame)
					elseif game:GetService("Workspace"):FindFirstChild("Chest3") then
						Tween(game:GetService("Workspace").Chest3.RootPart.CFrame)
					elseif game:GetService("Workspace"):FindFirstChild("Chest4") then
						Tween(game:GetService("Workspace").Chest4.RootPart.CFrame)
					elseif game:GetService("Workspace"):FindFirstChild("Chest5") then
						Tween(game:GetService("Workspace").Chest5.RootPart.CFrame)
					elseif game:GetService("Workspace"):FindFirstChild("Chest6") then
						Tween(game:GetService("Workspace").Chest6.RootPart.CFrame)
					else
						Tween(game:GetService("Workspace").Chest1.RootPart.CFrame)
						Tween(game:GetService("Workspace").Chest2.RootPart.CFrame)
						Tween(game:GetService("Workspace").Chest3.RootPart.CFrame)
						Tween(game:GetService("Workspace").Chest4.RootPart.CFrame)
						Tween(game:GetService("Workspace").Chest5.RootPart.CFrame)
						Tween(game:GetService("Workspace").Chest6.RootPart.CFrame)
					end
				end
			end
		end)
	end
end)

Main:Label("Auto King Samurai")
Main:Toggle("Auto King Samurai",_G.Settings.AutoKingSamurai,function(value)
    _G.Settings.AutoKingSamurai = value
	SaveSettings()
end)
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoKingSamurai then 
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "King Samurai [Lv. 3500]" then
                           -- if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoKingSamurai or not v.Parent or v.Humanoid.Health <= 0
                          --  end
                        end
                    end
                else  
                    Tween(CFrame.new(-5838.94434, 354.945496, 76.1406631, 0, 0, -1, 0, 1, 0, 1, 0, 0))
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoKingSamurai then 
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("King Samurai [Lv. 3500]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "King Samurai [Lv. 3500]" then
                           -- if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * MethodFarm)
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoKingSamurai or not v.Parent or v.Humanoid.Health <= 0
                          --  end
                        end
                    end
                end
            end
        end)
    end
end)--game:GetService("Workspace").SeaMonster
--game:GetService("Workspace").SeaMonster.HydraSeaKing.HumanoidRootPart

function GetHydra()
	for i,v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do
		if v.Name:find("Hydra") then
			return v
		end
	end
	return false
end
function getHydraIsland()
	for i,v in pairs(game:GetService("Workspace").Island:GetChildren()) do
		if v.Name:find("Sea King") then
			return true
		end
	end
	return false
end
Main:Label("Auto HydraSeaKing")
Main:Toggle("Auto HydraSeaKing",_G.Settings.AutoHydraSeaKing,function(value)
    _G.Settings.AutoHydraSeaKing = value
	SaveSettings()
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoHydraSeaKing then
                if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing") then
					if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").Humanoid.Health > 0 then 
							PosMonHydra = game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing"):GetModelCFrame()
							for i, v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do
								if v.Name == "HydraSeaKing" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Cl()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))-- CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    AutoSkill()
                                    Haki()
                                until not _G.Settings.AutoHydraSeaKing or not v.Parent or v.Humanoid.Health <= 0 
								if getHydraIsland() == true then
									game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Island["Sea King "..tostring(getHydraIName())].HydraStand.CFrame * CFrame.new(0,2,-2)
								else
									if _G.Settings.AutoHydraSeaKingHop and NewWorld then
										Hop()
									end   
								end
							end 
                        end-- pcall
					end
                end
            end
        end)
    end
end)


spawn(function()
	while wait() do
		pcall(function()
			if _G.Settings.AutoHydraSeaKing then
				if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing") then
					if game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing").Humanoid.Health > 0 then 
						pcall(function()
							PosMonHydra = game:GetService("Workspace").SeaMonster:FindFirstChild("HydraSeaKing"):GetModelCFrame()
							for i, v in pairs(game:GetService("Workspace").SeaMonster:GetChildren()) do
								if v.Name == "HydraSeaKing" then
									--if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
										repeat wait()
											EquipWeapon(_G.Settings.SelectWeapon)
											Haki()
											Tween(v.HumanoidRootPart.CFrame * (MethodFarm))-- CFrame.new(0,0,8)
											Cl()
											AutoSkill()
										until not _G.Settings.AutoHydraSeaKing or not v.Parent or v.Humanoid.Health <= 0
									--end
								end
							end
						end)
					end
				end
			end
		end)
	end
end)

end

if W1 then

Main:Toggle("Auto Saber",_G.Settings.AutoSaber,function(value)
    _G.Settings.AutoSaber = value
	SaveSettings()
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoSaber then
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Expert Swordman [Lv. 3000]" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                until not _G.Settings.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                else
                    Tween(CFrame.new(5245.53174, 54.8256226, -6631.55469, 0.14680548, 2.70129541e-09, -0.989165366, 3.24562932e-09, 1, 3.21257865e-09, 0.989165366, -3.68208819e-09, 0.14680548))
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoSaber then
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Expert Swordman [Lv. 3000]" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoSaber or not v.Parent or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                end
            end
        end)
    end
end)

if _G.MrMaxNaJaBuy == false then
    Main:Label("Auto Farm Sword Mon Blade\nสำหรับคนซื้อ")
else
    Main:Label("Auto Farm Sword Mon Blade")
end

if _G.MrMaxNaJaBuy == true then

Main:Toggle("Auto Farm Twilight's Orb\nออโต้ฟาร์มฟาร์มแค่ลูกแก้วดำ",_G.Settings.AutoFarmTwilight,function(value)
    _G.Settings.AutoFarmTwilight = value
	SaveSettings()
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmTwilight then
                if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false then
                    Tween(CFrame.new(-2750.03711, 33.5921288, 4452.18555, 0.909992993, -3.68365569e-08, -0.414623559, 1.28604922e-08, 1, -6.06178716e-08, 0.414623559, 4.98295769e-08, 0.909992993))
                    local args = {
                        [1] = "take",
                        [2] = "Kill 1 Shadow Master"
                    }
                    game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer(unpack(args))
                else
                    if game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1650]") then
                        for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                            if v.Name == "Shadow Master [Lv. 1650]" then
                                --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        PosMon =  v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    until not _G.Settings.AutoFarmTwilight or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                                --end
                            end
                        end
                    else
                        Tween(CFrame.new(-2750.03711, 33.5921288, 4452.18555, 0.909992993, -3.68365569e-08, -0.414623559, 1.28604922e-08, 1, -6.06178716e-08, 0.414623559, 4.98295769e-08, 0.909992993))
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmTwilight then
                
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1650]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Shadow Master [Lv. 1650]" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoFarmTwilight or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                            --end
                        end
                    end
                end
                
            end
        end)
    end
end)
Main:Toggle("Auto Farm Sword Mon Blade [Bug]",_G.Settings.AutoFarmSwordMonBlade,function(value)
    _G.Settings.AutoFarmSwordMonBlade = value
	SaveSettings()
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarmSwordMonBlade then
                if game:GetService("Workspace").Monster.Boss:FindFirstChild("Monster [Lv. 2500]") then
                    for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                        if v.Name == "Monster [Lv. 2500]" then
                            --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    EquipWeapon(_G.Settings.SelectWeapon)
                                    Haki()
                                    Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    v.Head.CanCollide = false
                                    PosMon =  v.HumanoidRootPart.CFrame
                                    v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                    Cl()
                                    AutoSkill()
                                until not _G.Settings.AutoFarmSwordMonBlade or not v.Parent or v.Humanoid.Health <= 0
                            --end
                        end
                    end
                else
                    if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame["Inventory_Frame"].ScrollingFrameMaterial["Twilight's Orb"].Visible == false then
                        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false then
                            Tween(CFrame.new(-2750.03711, 33.5921288, 4452.18555, 0.909992993, -3.68365569e-08, -0.414623559, 1.28604922e-08, 1, -6.06178716e-08, 0.414623559, 4.98295769e-08, 0.909992993))
                            local args = {
                                [1] = "take",
                                [2] = "Kill 1 Shadow Master"
                            }
                            game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer(unpack(args))
                        else
                            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Shadow Master [Lv. 1650]") then
                                for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                                    if v.Name == "Shadow Master [Lv. 1650]" then
                                        --if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                            repeat wait()
                                                EquipWeapon(_G.Settings.SelectWeapon)
                                                Haki()
                                                Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                PosMon =  v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                                                Cl()
                                                AutoSkill()
                                            until not _G.Settings.AutoFarmSwordMonBlade or not v.Parent or v.Humanoid.Health <= 0 --or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                                        --end
                                    end
                                end
                            else
                                Tween(CFrame.new(-2750.03711, 33.5921288, 4452.18555, 0.909992993, -3.68365569e-08, -0.414623559, 1.28604922e-08, 1, -6.06178716e-08, 0.414623559, 4.98295769e-08, 0.909992993))
                            end
                        end
                    else
                        Tween(CFrame.new(-2945.20361, 16.0892391, 4446.58545, 0.872506022, -8.6434838e-08, -0.488603383, 1.00153684e-07, 1, 1.9440185e-09, 0.488603383, -5.06315985e-08, 0.872506022))
                        local args = {
                            [1] = workspace.AllNPC.SummonOrcLord
                        }
                        game:GetService("ReplicatedStorage").Chest.Remotes.Functions.CheckQuest:InvokeServer(unpack(args))
                        ry(game:GetService("Players").LocalPlayer.PlayerGui.SummonOrcLord.Dialogue.Accept)
                    end
                end
            end
        end)
    end
end)
end



end
Main:Label("Bring Fruit | ดึงผลไม้")

Main:Toggle("Bring All Fruit\nดึงผลไม้ทั้งหมด",_G.Settings.BringFruitBF,function(value)
  _G.Settings.BringFruitBF = value
	SaveSettings()
end)
spawn(function()
    while wait() do
        if _G.Settings.BringFruitBF then
            pcall(function()
                for i, v in pairs(game:GetService("Workspace").AllDroppedFruit:GetChildren()) do
                    if string.find(v.ClassName, "Tool") then
                        Tween(v.Handle.CFrame)
                    end
                end
            end)
        end
    end
end)

Main:Label2("Main",12)

_G.LocalPlayerWx = game:GetService("Players").LocalPlayer.Name
Main:Toggle2("Auto Open Haki\nออโต้เปิดฮาคิ",_G.Settings.Haki,function(value)
    _G.Settings.Haki = value
	SaveSettings()
end)

function Haki()
    if _G.Settings.Haki and game:GetService("Workspace").PlayerCharacters[_G.LocalPlayerWx].Services.Haki.Value == 0 then
        game:GetService("ReplicatedStorage").Chest.Remotes.Events.Armament:FireServer()
    end
end

Main:Toggle2("Auto Open Ken\nออโต้เปิดฮาคิ",_G.Settings.Ken,function(value)
    _G.Settings.Ken = value
	SaveSettings()
end)

function Ken()
    if _G.Settings.Ken and game:GetService("Workspace").PlayerCharacters[_G.LocalPlayerWx].Services.KenHaki.Value == 0 then
        game:GetService("ReplicatedStorage").Chest.Remotes.Functions.KenEvent:FireServer()
    end
end

Main:Button2("BoostFps\nทำให้เกมลืนโดยการปรับภาพ",function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MarsQQ/ScriptHubScripts/master/FPS%20Boost"))()
end)

Main:Label2("ตั้งค่า\nเกี่ยวกับออโต้ฟาร์ม",12)
Main:Toggle2("Bring Mob\nทำให้มอนนิ่ง",_G.Settings.BringMobFarm,function(value)
    _G.Settings.BringMobFarm = value
	SaveSettings()
end)

Main:Label2("Auto Attack\nการโจมตี",12)

Main:Toggle2("Auto Attack Melee\nออโต้โจมตีโดยใช้หมัด",_G.Settings.AttackMelee,function(value)
    _G.Settings.AttackMelee = value
	SaveSettings()
end)

Main:Toggle2("Auto Attack Sword\nออโต้โจมตีโดยใช้ดาบ",_G.Settings.AttackSword,function(value)
    _G.Settings.AttackSword = value
	SaveSettings()
end)

Main:Label2("Auto Skill\nออโต้สกิว",12)

Main:Toggle2("Auto Skill [ Z ]\nออโต้สกิว [ Z ]",_G.Settings.SkillZ,function(value)
    _G.Settings.SkillZ = value
	SaveSettings()
end)
Main:Toggle2("Auto Skill [ X ]\nออโต้สกิว [ X ]",_G.Settings.SkillX,function(value)
    _G.Settings.SkillX = value
	SaveSettings()
end)
Main:Toggle2("Auto Skill [ C ]\nออโต้สกิว [ C ]",_G.Settings.SkillC,function(value)
    _G.Settings.SkillC = value
	SaveSettings()
end)
Main:Toggle2("Auto Skill [ V ]\nออโต้สกิว [ V ]",_G.Settings.SkillV,function(value)
    _G.Settings.SkillV = value
	SaveSettings()
end)
Main:Toggle2("Auto Skill [ E ]\nออโต้สกิว [ E ]",_G.Settings.SkillE,function(value)
    _G.Settings.SkillE = value
	SaveSettings()
end)
Main:Toggle2("Auto Skill [ B ]\nออโต้สกิว [ E ]",_G.Settings.SkillB,function(value)
    _G.Settings.SkillB = value
	SaveSettings()
end)
function AutoSkill()
    if _G.Settings.SkillZ then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game) wait(.1)
    end
    if _G.Settings.SkillX then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game) wait(.1)
    end
    if _G.Settings.SkillC then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game) wait(.1)
    end
    if _G.Settings.SkillV then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game) wait(.1)
    end
    if _G.Settings.SkillE then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"E",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"E",false,game) wait(.1)
    end
    if _G.Settings.SkillB then
        game:GetService("VirtualInputManager"):SendKeyEvent(true,"B",false,game) wait()
        game:GetService("VirtualInputManager"):SendKeyEvent(false,"B",false,game) wait(.1)
    end
end

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AttackMelee then
                    local args = {
                    [1] = "FS_".._G.Settings.SelectWeapon.."_M1"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))
            end
        end)
    end
end)


spawn(function()
    while wait() do
        pcall(function() 
            if _G.Settings.AttackSword then
                local args = {
                    [1] = "SW_".._G.Settings.SelectWeapon.."_M1"
                    }
                    game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))
             end
        end)
    end
end)

Stats:Label2("Stats \n สตัส",12)

Stats:Toggle("Auto Stats Melee\nออโต้อัพสแตสหมัด",_G.Settings.Melee,function(value)
    _G.Settings.Melee = value
	SaveSettings()
end)
spawn(function()
    while task.wait(0.01) do
        pcall(function()
            if _G.Settings.Melee then
                local args = {
                    [1] = "Melee",
                    [2] = _G.Settings.MaxPointStats
                }

                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end)
Stats:Toggle("Auto Stats Defense\nออโต้อัพสแตสเลือด",_G.Settings.Defense,function(value)
    _G.Settings.Defense = value
	SaveSettings()
end)
 spawn(function()
    while task.wait(0.01) do
        pcall(function()
            if _G.Settings.Defense then
                local args = {
                    [1] = "Defense",
                    [2] = _G.Settings.MaxPointStats
                }
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end)
Stats:Toggle("Auto Stats Sword\nออโต้อัพสแตสดาบ",_G.Settings.Sword,function(value)
    _G.Settings.Sword = value
	SaveSettings()
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Sword then
                local args = {
                    [1] = "Sword",
                    [2] = _G.Settings.MaxPointStats
                }
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end)
Stats:Toggle("Auto Stats Fruit\nออโต้อัพสแตสผลไม้",_G.Settings.Fruit,function(value)
    _G.Settings.Fruit = value
	SaveSettings()
end)
spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.Fruit then
                local args = {
                    [1] = "Fruit",
                    [2] = _G.Settings.MaxPointStats
                }
                game:GetService("Players").LocalPlayer.PlayerGui.MainGui.StarterFrame.StatsFrame.RemoteEvent:FireServer(unpack(args))
            end
        end)
    end
end)
Stats:Toggle("Max Point Stats\nพอยท์ที่อัพจะมาก",_G.Settings.MaxPoint,function(value)
    _G.Settings.MaxPoint = value
	SaveSettings()
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.MaxPoint == true then
                _G.Settings.MaxPointStats = game:GetService("Players").LocalPlayer.PlayerStats.Points.Value
            elseif _G.Settings.MaxPoint == false then
                _G.Settings.MaxPointStats = 1
            else
                _G.Settings.MaxPointStats = 1
            end
        end)
    end
end)
function Cl()
    pcall(function()
        local args = {
            [1] = "FS_".._G.Settings.SelectWeapon2.."_M1"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))
    end)
end

function Cl()
    pcall(function()
        local args = {
            [1] = "FS_".._G.Settings.SelectWeapon.."_M1"
        }
        game:GetService("ReplicatedStorage"):WaitForChild("Chest"):WaitForChild("Remotes"):WaitForChild("Functions"):WaitForChild("SkillAction"):InvokeServer(unpack(args))
    end)
end

task.spawn(function()
    while task.wait() do
        pcall(function()
            if _G.Settings.BringMobFarm then
                for i, mob in pairs(game.Workspace.Monster.Mon:GetChildren()) do
                    if  (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4 then
                        mob.HumanoidRootPart.CFrame = PosMon
                        mob.Humanoid.JumpPower = 0
                        mob.Humanoid.WalkSpeed = 0
                        mob.Humanoid.NameDisplayDistance = 0
                        mob.HumanoidRootPart.CanCollide = false
                        mob.Head.CanCollide = false
                        mob.HumanoidRootPart.Size = Vector3.new(80,80,80)
                        mob.Humanoid:ChangeState(12)
                    end
                end
                for i, mob in pairs(game.Workspace.Monster.Mon:GetChildren()) do
                    if  (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        mob.HumanoidRootPart.CFrame = PosMon
                        mob.Humanoid.JumpPower = 0
                        mob.Humanoid.WalkSpeed = 0
                        mob.Humanoid.NameDisplayDistance = 0
                        mob.HumanoidRootPart.CanCollide = false
                        mob.Head.CanCollide = false
                        mob.HumanoidRootPart.Size = Vector3.new(80,80,80)
                        mob.Humanoid:ChangeState(12)
                    end
                end
                for i, mob in pairs(game.Workspace.Monster.Boss:GetChildren()) do
                    if  (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2 then
                        mob.HumanoidRootPart.CFrame = PosMon
                        mob.Humanoid.JumpPower = 0
                        mob.Humanoid.WalkSpeed = 0
                        mob.Humanoid.NameDisplayDistance = 0
                        mob.HumanoidRootPart.CanCollide = false
                        mob.Head.CanCollide = false
                        mob.HumanoidRootPart.Size = Vector3.new(80,80,80)
                        mob.Humanoid:ChangeState(12)
                    end
                end
                for i, mob in pairs(game.Workspace.Monster.Boss:GetChildren()) do
                    if  (mob.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1   then
                        mob.HumanoidRootPart.CFrame = PosMon
                        mob.Humanoid.JumpPower = 0
                        mob.Humanoid.WalkSpeed = 0
                        mob.Humanoid.NameDisplayDistance = 0
                        mob.HumanoidRootPart.CanCollide = false
                        mob.Head.CanCollide = false
                        mob.HumanoidRootPart.Size = Vector3.new(80,80,80)
                        mob.Humanoid:ChangeState(12)
                    end
                end
            end
        end)
    end
end)

task.spawn(function() 
    while task.wait() do
        if _G.Settings.AutoFarm then
			pcall(function()
                CheckLevel()
                if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestFrame.QuestBoard == false then
                    if (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                        Tween(CFrameMon)
                        wait(0.175)
						if game:GetService("Workspace").Monster.Mon:FindFirstChild(NameMon) or game:GetService("Workspace").Monster.Boss:FindFirstChild(NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false then
                            wait(0.175)
							local args = {
                                [1] = "take",
                                [2] = NameQuest
                            }
                            game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer(unpack(args))
                        else
                            Tween(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                elseif game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestFrame.QuestBoard == true then
                    if game:GetService("Workspace").Monster.Mon:FindFirstChild(NameMon) then
                        for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        --pcall(function()
											Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                    	--end)
									until not _G.Settings.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                                end
                            end
                        end
                    elseif game:GetService("Workspace").Monster.Boss:FindFirstChild(NameMon) then
                        for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                            if v.Name == NameMon then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
										--pcall(function()
                                        	Tween(v.HumanoidRootPart.CFrame * (MethodFarm))  --* CFrame.Angles(math.rad(-90),0,0)
                                    	--end)
									until not _G.Settings.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                                end
                            end
                        end
                    else
                        Tween(CFrameMon)
                    end
                else
                    if (CFrameMon.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 then
                        Tween(CFrameMon)
                        if game:GetService("Workspace").Monster.Mon:FindFirstChild(NameMon) or game:GetService("Workspace").Monster.Boss:FindFirstChild(NameMon) or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false then
                            wait(1.5)
                            local args = {
                                [1] = "take",
                                [2] = NameQuest
                            }
                            game:GetService("ReplicatedStorage").Chest.Remotes.Functions.Quest:InvokeServer(unpack(args))
                        else
                            Tween(CFrameMon)
                        end
                    else
                        Tween(CFrameMon)
                    end
                end
            end)
        end
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.Settings.AutoFarm then
                CheckLevel()
                for i, v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v.Name == NameMon then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            repeat wait()
                                EquipWeapon(_G.Settings.SelectWeapon)
                                Haki()
								PosMon = v.HumanoidRootPart.CFrame
                                AutoSkill()
                                Cl()
                                Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                            until not _G.Settings.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                        end
                    end
                end
                for i, v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                    if v.Name == NameMon then
                        repeat wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            Haki()
							PosMon = v.HumanoidRootPart.CFrame
                            AutoSkill()
                            Cl()
                            Tween(v.HumanoidRootPart.CFrame * MethodFarm)--CFrame.new(0,0,7)  --* CFrame.Angles(math.rad(-90),0,0)
                        until not _G.Settings.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Players").LocalPlayer.PlayerGui.MainGui.QuestBoard.Visible == false
                    end
                end
            end
        end)
    end
end)

Teleport = Library:Tab("Teleport")

NPClist = {}
for i,v in pairs(game:GetService("Workspace").AllNPC:GetChildren()) do
    table.insert(NPClist,v.Name)
end
local SelectedNPC = Teleport:Dropdown("Select NPC\nเลือก NPC","",NPClist,function(value)
    _G.Settings.SelectNPCtoTeleport = value
	SaveSettings()
end)
Teleport:Button("Refresh NPC\nรีเฟส NPC",function()
    SelectedNPC:Clear()
    for i,v in pairs(game:GetService("Workspace").AllNPC:GetChildren()) do
        SelectedNPC:Add(v.Name)
    end
end)
Teleport:Button("Teleport to NPC\nวาปไปยัง NPC",function()
    Tween(game:GetService("Workspace").AllNPC[_G.Settings.SelectNPCtoTeleport].CFrame)
end)

Raid = Library:Tab("Raid")

--_G.MrMaxNaJaBuy = true
Raid:Label("Auto Raid")
Raid:Line()
if W1 then
    Raid:Button("Teleport Raid\nวาปไปยังดัน",function()
        Tween(CFrame.new(-614.49408, 73.6269684, -3607.28198, -0.686195433, 2.00852313e-08, -0.727417231, 1.45994052e-08, 1, 1.38396308e-08, 0.727417231, -1.12316689e-09, -0.686195433))
    end)
end
if W2 then
    Raid:Button("Teleport Raid\nวาปไปยังดัน",function()
        Tween(CFrame.new(-4594.26465, 223.143417, -68.1358566, 0.433611095, 7.56600045e-08, -0.901100099, -5.65751712e-09, 1, 8.12416303e-08, 0.901100099, -3.01292857e-08, 0.433611095))
    end)
end

if _G.MrMaxNaJaBuy then

Raid:Toggle("Auto Raid \n กำลังสร้างมองข้าไปก่อน",_G.Settings.AutoRaid,function(value)
    _G.Settings.AutoRaid = value
	SaveSettings()
end)

spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoRaid then 
                for i, v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait()
                            Tween(v.HumanoidRootPart.CFrame * (MethodFarm))--CFrame.new(0,0,8)
                            v.HumanoidRootPart.CanCollide = false
                            v.Head.CanCollide = false
                            PosMon = v.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.Size = Vector3.new(80,80,80)
                        until not _G.Settings.AutoRaid or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do  
        pcall(function()
            if _G.Settings.AutoRaid then 
                for i, v in pairs(game:GetService("Workspace").MOB:GetChildren()) do
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat wait()
                            EquipWeapon(_G.Settings.SelectWeapon)
                            Haki()
                            AutoSkill()
                            Cl()
                        until not _G.Settings.AutoRaid or not v.Parent or v.Humanoid.Health <= 0
                    end
                end
            end
        end)
    end
end)













else
    Raid:Label("Auto Raid")
    Raid:Line()
    Raid:Label("สำหรับคนซื้อ..")
end

Ply = Library:Tab("Player")

Ply:Toggle("Spectate Player\nดูมุมมองของผู้เล่นอื่นที่เลือกใว้",false,function(value)
    SpectatePlys = value
	SaveSettings()
    local plr1 = game:GetService("Players").LocalPlayer.Character.Humanoid
    local plr2 = game:GetService("Players"):FindFirstChild(_G.Settings.SelectPly)
    repeat wait(.1)
        game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players"):FindFirstChild(_G.Settings.SelectPly).Character.Humanoid
    until SpectatePlys == false 
    game:GetService("Workspace").Camera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
end)

Playerslist = {}

for i,v in pairs(game:GetService("Players"):GetChildren()) do
    table.insert(Playerslist,v.Name)
end

local SelectedPly = Ply:Dropdown("Select Players\nเลือกผู้เล่น","",Playerslist,function(value)
    _G.Settings.SelectPly = value
	SaveSettings()
end)

Ply:Button("Refresh Player\nรีเฟสปุ่มเลือกผู้เล่น",function()
    Playerslist = {}
    SelectedPly:Clear()
    for i,v in pairs(game:GetService("Players"):GetChildren()) do  
        SelectedPly:Add(v.Name)
    end
end)

Ply:Button("Teleport to Player\nวาปไปยังผู้เล่นที่เลือกไว้",function() --game:GetService("Workspace").PlayerCharacters.AxileoRBLX.HumanoidRootPart
    Tween(game:GetService("Players")[_G.Settings.SelectPly].Character.HumanoidRootPart.CFrame)
    Tween(game:GetService("Workspace")[_G.Settings.SelectPly].HumanoidRootPart.CFrame)
    Tween(game:GetService("Workspace").PlayerCharacters[_G.Settings.SelectPly].HumanoidRootPart.CFrame)
end)

function isnil(L_426_arg0)
	return (L_426_arg0 == nil)
end
local function L_52_func(L_427_arg0)
	return math.floor(tonumber(L_427_arg0) + 0.5)
end
Number = math.random(1, 1000000)
function UpdateEspPlayer()
	for L_428_forvar0, L_429_forvar1 in pairs(game:GetService'Players':GetChildren()) do
		pcall(function()
			if not isnil(L_429_forvar1.Character) then
				if ESPPlayer then
					if not isnil(L_429_forvar1.Character.Head) and not L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						local L_430_ = Instance.new('BillboardGui', L_429_forvar1.Character.Head)
						L_430_.Name = 'NameEsp' .. Number
						L_430_.ExtentsOffset = Vector3.new(0, 1, 0)
						L_430_.Size = UDim2.new(1, 200, 1, 30)
						L_430_.Adornee = L_429_forvar1.Character.Head
						L_430_.AlwaysOnTop = true
						local L_431_ = Instance.new('TextLabel', L_430_)
						L_431_.Font = "GothamBold"
						L_431_.FontSize = "Size14"
						L_431_.TextWrapped = true
						L_431_.Text = (L_429_forvar1.Name .. ' \n' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M')
						L_431_.Size = UDim2.new(1, 0, 1, 0)
						L_431_.TextYAlignment = 'Top'
						L_431_.BackgroundTransparency = 1
						L_431_.TextStrokeTransparency = 0.5
						if L_429_forvar1.Team == game:GetService("Teams").Pirates then
							L_431_.TextColor3 = Color3.new(255, 0, 0)
						else
							L_431_.TextColor3 = Color3.new(0, 255, 255)
						end
					else
						L_429_forvar1.Character.Head['NameEsp' .. Number].TextLabel.Text = (L_429_forvar1.Name .. ' | ' .. L_52_func((game:GetService('Players').LocalPlayer.Character.Head.Position - L_429_forvar1.Character.Head.Position).Magnitude / 3) .. ' M\nHealth : ' .. L_52_func(L_429_forvar1.Character.Humanoid.Health * 100 / L_429_forvar1.Character.Humanoid.MaxHealth) .. '%')
					end
				else
					if L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number) then
						L_429_forvar1.Character.Head:FindFirstChild('NameEsp' .. Number):Destroy()
					end
				end
			end
		end)
	end
end

spawn(function()
    while wait() do
        pcall(function()
            if MobESP then --game:GetService("Workspace").Monster.Mon["Soldier [Lv. 1]"].HumanoidRootPart
                for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("MobEap") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "MobEap"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.MobEap.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Monster.Mon:GetChildren()) do
                    if v:FindFirstChild("MobEap") then
                        v.MobEap:Destroy()
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if BossESP then --game:GetService("Workspace").Monster.Boss["Soldier [Lv. 1]"].HumanoidRootPart
                for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                    if v:FindFirstChild('HumanoidRootPart') then
                        if not v:FindFirstChild("BossESP") then
                            local BillboardGui = Instance.new("BillboardGui")
                            local TextLabel = Instance.new("TextLabel")

                            BillboardGui.Parent = v
                            BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                            BillboardGui.Active = true
                            BillboardGui.Name = "BossESP"
                            BillboardGui.AlwaysOnTop = true
                            BillboardGui.LightInfluence = 1.000
                            BillboardGui.Size = UDim2.new(0, 200, 0, 50)
                            BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

                            TextLabel.Parent = BillboardGui
                            TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                            TextLabel.BackgroundTransparency = 1.000
                            TextLabel.Size = UDim2.new(0, 200, 0, 50)
                            TextLabel.Font = Enum.Font.GothamBold
                            TextLabel.TextColor3 = Color3.fromRGB(7, 236, 240)
                            TextLabel.Text.Size = 35
                        end
                        local Dis = math.floor((game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude)
                        v.BossESP.TextLabel.Text = v.Name.." - "..Dis.." Distance"
                    end
                end
            else
                for i,v in pairs(game:GetService("Workspace").Monster.Boss:GetChildren()) do
                    if v:FindFirstChild("BossESP") then
                        v.BossESP:Destroy()
                    end
                end
            end
        end)
    end
end)

Ply:Label("ESP Players V.1")

Ply:Toggle("Esp Player \n มองเส้นผู้เล่น",ESPPlayer,function(a)
    ESPPlayer = a
    while ESPPlayer do wait()
        UpdateEspPlayer()
    end
end)

Ply:Toggle("Esp Mob \n มองเส้น มอน", MobESP, function(nec)
    MobESP = nec
end)
Ply:Toggle("Esp Boss \n มองเส้น บอส", BossESP, function(nec)
    BossESP = nec
end)


Settings = Library:Tab("Settings")

Settings:Label("Method")

Settings:Dropdown("Select Method\nแปลไม่ถูก",_G.Settings.Method,{"Behind","Below","Upper","Random","Settings"},function(value)
    _G.Settings.Method = value
	SaveSettings()
end)

local AttackRandom = 1
spawn(function()
	while task.wait(0.2) do task.wait()
		AttackRandom = math.random(1,4)
	end
end)

spawn(function()
    while wait() do 
        pcall(function()
            if _G.Settings.Method == "Behind" then
                MethodFarm = CFrame.new(0,0,_G.Settings.DistanceMob) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
            elseif _G.Settings.Method == "Below" then
                MethodFarm = CFrame.new(0,-_G.Settings.DistanceMob,0) * CFrame.Angles(math.rad(_G.Settings.GanAngles),0,0)
            elseif _G.Settings.Method == "Upper" then
                MethodFarm = CFrame.new(0,_G.Settings.DistanceMob,0) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
            elseif _G.Settings.Method == "Random" then
                if AttackRandom == 1 then
                    MethodFarm = CFrame.new(0, 0, _G.Settings.DistanceMob) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
                elseif AttackRandom == 2 then
                    MethodFarm = CFrame.new(_G.Settings.DistanceMob, 0, 0) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
                elseif AttackRandom == 3 then
                    MethodFarm = CFrame.new(0, 0, -_G.Settings.DistanceMob) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
                elseif AttackRandom == 4 then
                    MethodFarm = CFrame.new(-_G.Settings.DistanceMob, 0, _G.Settings.DistanceMob) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
                else
                    MethodFarm = CFrame.new(0, 0, _G.Settings.DistanceMob) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
                end
            elseif _G.Settings.Method == "Settings" then
                MethodFarm = CFrame.new(_G.Settings.GanX , _G.Settings.GanY , _G.Settings.GanZ) * CFrame.Angles(math.rad(-_G.Settings.GanAngles),0,0)
            else
                MethodFarm = CFrame.new(0,_G.Settings.DistanceMob,0) * CFrame.Angles(math.rad(-90),0,0)
            end
        end)
    end
end)

Settings:Slider("Farm Distance",-30,30,_G.Settings.DistanceMob,function(value)
	_G.Settings.DistanceMob = value
	SaveSettings()
end)
Settings:Slider("Farm Pos (X)",-30,30,_G.Settings.GanX,function(value)
	_G.Settings.GanX = value
	SaveSettings()
end)
Settings:Slider("Farm Pos (Y)",-30,30,_G.Settings.GanY,function(value)
	_G.Settings.GanY = value
	SaveSettings()
end)
Settings:Slider("Farm Pos (Z)",-30,30,_G.Settings.GanZ,function(value)
	_G.Settings.GanZ = value
	SaveSettings()
end)
Settings:Slider("Farm Pos Angles",-100,100,_G.Settings.GanAngles,function(value)
	_G.Settings.GanAngles = value
	SaveSettings()
end)

Settings:Label("Server|เกี่ยวกับเซิฟ")

Settings:Button("Rejoin Server\nรีจอยเซิฟ",function()
	game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").localPlayer)
end)

local ShowIDServer = Settings:Label("ID Server")
local ShowIDServer = Settings:Label(tostring(game.JobId))
ShowIDServer:Set(tostring(game.JobId))

Settings:Button("Copy Id Server \n ก็อปไอดีเซิฟ",function()
	setclipboard(tostring(game.JobId))
end)

Settings:Textbox("Job Id",true,function(Value)
    _G.Settings.Job = value
	SaveSettings()
end)

Settings:Button("Join Job Id",function()
	--_G.Settings.Rejoin = false
	game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,_G.Settings.Job, game.Players.LocalPlayer)
	game:GetService("TeleportService"):Teleport(game.PlaceId , _G.Settings.Job , game:GetService("Players").localPlayer)
end)

Settings:Button("Hop Server \n ฮอปเซิฟ",function()
	Hop()
end)

-- [ Hop Function ]

function Hop()
	local L_70_ = game.PlaceId
	local L_71_ = {}
	local L_72_ = ""
	local L_73_ = os.date("!*t").hour
	local L_74_ = false
	function TPReturner()
		local L_75_;
		if L_72_ == "" then
			L_75_ = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. L_70_ .. '/servers/Public?sortOrder=Asc&limit=100'))
		else
			L_75_ = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. L_70_ .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. L_72_))
		end
		local L_76_ = ""
		if L_75_.nextPageCursor and L_75_.nextPageCursor ~= "null" and L_75_.nextPageCursor ~= nil then
			L_72_ = L_75_.nextPageCursor
		end
		local L_77_ = 0;
		for L_78_forvar0, L_79_forvar1 in pairs(L_75_.data) do
			local L_80_ = true
			L_76_ = tostring(L_79_forvar1.id)
			if tonumber(L_79_forvar1.maxPlayers) > tonumber(L_79_forvar1.playing) then
				for L_81_forvar0, L_82_forvar1 in pairs(L_71_) do
					if L_77_ ~= 0 then
						if L_76_ == tostring(L_82_forvar1) then
							L_80_ = false
						end
					else
						if tonumber(L_73_) ~= tonumber(L_82_forvar1) then
							local L_83_ = pcall(function()
								L_71_ = {}
								table.insert(L_71_, L_73_)
							end)
						end
					end
					L_77_ = L_77_ + 1
				end
				if L_80_ == true then
					table.insert(L_71_, L_76_)
					wait()
					pcall(function()
						wait()
						game:GetService("TeleportService"):TeleportToPlaceInstance(L_70_, L_76_, game.Players.LocalPlayer)
					end)
					wait(1)
				end
			end
		end
	end
	function Teleport()
		while wait() do
			pcall(function()
				TPReturner()
				if L_72_ ~= "" then
					TPReturner()
				end
			end)
		end
	end
	Teleport()
end

Settings:Button("Hop Server Low Player \n หาเซิฟคนน้อย",function()
		_G.Settings.AutoTeleport = true
		_G.Settings.DontTeleportTheSameNumber = true
		_G.Settings.CopytoClipboard = false
		if not game:IsLoaded() then
			print("Game is loading waiting...")
		end
		local L_475_ = math.huge
		local L_476_;
		local L_477_;
		local L_478_ = "https://games.roblox.com/v1/games/" .. game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
		function serversearch()
			for L_479_forvar0, L_480_forvar1 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(L_478_)).data) do
				if type(L_480_forvar1) == "table" and L_480_forvar1.playing ~= nil and L_475_ > L_480_forvar1.playing then
					L_476_ = L_480_forvar1.maxPlayers
					L_475_ = L_480_forvar1.playing
					L_477_ = L_480_forvar1.id
				end
			end
		end
		function getservers()
			serversearch()
			for L_481_forvar0, L_482_forvar1 in pairs(game:GetService("HttpService"):JSONDecode(game:HttpGetAsync(L_478_))) do
				if L_481_forvar0 == "nextPageCursor" then
					if L_478_:find("&cursor=") then
						local L_483_ = L_478_:find("&cursor=")
						local L_484_ = L_478_:sub(L_483_)
						L_478_ = L_478_:gsub(L_484_, "")
					end
					L_478_ = L_478_ .. "&cursor=" .. L_482_forvar1
					getservers()
				end
			end
		end
		getservers()
		if AutoTeleport then
			if DontTeleportTheSameNumber then
				if # game:GetService("Players"):GetPlayers() - 4 == L_475_ then
					return warn("It has same number of players (except you)")
				elseif L_477_ == game.JobId then
					return warn("Your current server is the most empty server atm")
				end
			end
			game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, L_477_)
		end
	end
)


Settings:Label("Community")

Settings:Button("Click to Copy Link Youtube\nก็อปปี้ลิ้ง ยูทูป",function()
	setclipboard("https://www.youtube.com/@MrMaxNaJaa")
end)
Settings:Button("Click to Copy Link Facebook\nก็อปปี้ลิ้ง เฟส",function()
	setclipboard("https://www.facebook.com/MrMaxHub")
end)
Settings:Button("Click to Copy Link Discord\nก็อปปี้ลิ้ง ดิส",function()
	setclipboard("https://discord.gg/eaResuTyQc")
end)
Settings:Button("Click to Copy Link Discord\nก็อปปี้ลิ้ง ดิส",function()
	setclipboard("https://discord.gg/Bccvvy3AhT")
end)

local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
	vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

Chack = Library:Tab("✅ [ Chack ]")
--✅,❌
Chack:Label("ตอนนี้อยู่ในรุ่นทดสอบให้ใช้กันทุกคน")
Chack:Line()
Chack:Seperator("✅ Chack Boss W1")
Chack:Line()

Chack:Label("วิธีการเช็คคือ ✅ บอสเกิด")
Chack:Label("วิธีการเช็คคือ ❌ บอสไม่เกิด")
Chack:Line()
local ChackSaberExpertSwordmanLv3000 = Chack:Label("Saber|Expert Swordman [Lv. 3000]")
Chack:Line()
local ChackSwordMonBladeMonsterLv2500 = Chack:Label("Sword Mon Blade|Monster [Lv. 2500]")
Chack:Line()
local ChackSaberV2Lv8500 = Chack:Label("Lord of Saber [Lv. 8500]")
Chack:Line()
spawn(function()
    while wait() do
        pcall(function()
            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Expert Swordman [Lv. 3000]") then
                ChackSaberExpertSwordmanLv3000:Set("✅ Saber|Expert Swordman [Lv. 3000]")
            else
                ChackSaberExpertSwordmanLv3000:Set("❌ Saber|Expert Swordman [Lv. 3000]")
            end
            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Monster [Lv. 2500]") then
                ChackSwordMonBladeMonsterLv2500:Set("✅ Sword Mon Blade|Monster [Lv. 2500]")
            else
                ChackSwordMonBladeMonsterLv2500:Set("❌ Sword Mon Blade|Monster [Lv. 2500]")
            end
            if game:GetService("Workspace").Monster.Boss:FindFirstChild("Lord of Saber [Lv. 8500]") then
                ChackSaberV2Lv8500:Set("✅Lord of Saber [Lv. 8500]") 
            else
                ChackSaberV2Lv8500:Set("❌Lord of Saber [Lv. 8500]")
            end
        end)
    end
end)

Chack:Seperator("Chack Fruit Drop")
print("A")

function AntiKick()
    for  descendant in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if descendant:IsA("LocalScript") then
            local blacklistNames = {"General", "Shiftlock", "FallDamage", "4444", "CamBob", "JumpCD", "Looking", "Run"}
            if table.find(blacklistNames, descendant.Name) then
                descendant:Destroy()
            end
        end
    end
    for  descendant in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if descendant:IsA("LocalScript") then
            local blacklistNames = {"RobloxMotor6DBugFix", "Clans", "Codes", "CustomForceField", "MenuBloodSp", "PlayerList"}
            if table.find(blacklistNames, descendant.Name) then
                descendant:Destroy()
            end
        end
    end
end
AntiKick()
