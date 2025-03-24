print("System MrMaxNaJa")
--getgenv().Key = "Pak1"

   --[[getgenv().config = {
        Selecter = "Luffo",--Roku ,Luffo
        AutoFarmKitun = true, -- ไก่ตัน
        AutoFarm = true,
        FarmTime = 2,

        Present = "0", -- ถ้าต้องการให้ไปวางตัวให้ใส่เลข 0 ถ้าต้องการให้ afk \/
							-- ใส่จำนวนตัวเลข ต้องเขียนเหมือนในเกม ตัวอย่างเช่น 20,500 (ต้องมี  , ด้วย)
        GemsA = "20,500",-- ใส่จำนวนตัวเลข ต้องเขียนเหมือนในเกม ตัวอย่างเช่น 20,500 (ต้องมี  , ด้วย)

        Black_Screen = false,
        linkWebHook = "https://discord.com/api/webhooks/1350444648266465310/gOD38P3z3wquPNbH-7Q74el5o5w9oY8zRaTgwxKo5bHNY8AulfYaVOSmGzQy_3pBCO1K"
    }]]
-- กำหนด Key ที่ใช้งาน
--เฉพาะ ADMIN \/
--getgenv().Key = "Pak1"


--เฉพาะ ADMIN \/
--_G.antLoop = false
--_G.Antloopm = false

-- รายการคีย์และวันหมดอายุ
--loadstring(game:HttpGet("https://pastebin.com/raw/m3QzDi35"))()
-- รายการคีย์และวันหมดอายุ
loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/HHHHHHHHH-dsfsaf-N---a--j--a--.lua"))()

--[[local whitelistPak = {
    { Hwid = "845F3607-8A0E-4D9A-9E13-392E4BD64248", Key = "Pak1", ExpiryDate = os.time{year=2025, month=11, day=25, hour=24, min=0}, Permanent = false },
    --{ Hwid = "53FF23FF-8908-4496-8B86-147B02015C9D", Key = "Pak2", ExpiryDate = math.huge, Permanent = true } -- Key แบบถาวร
}]]

-- ฟังก์ชันตรวจสอบว่า Key หมดอายุหรือยัง
local function isKeyExpired(keyData)
    return not keyData.Permanent and os.time() > keyData.ExpiryDate
end
-- ฟังก์ชันแปลงเวลาหมดอายุเป็นวันที่อ่านง่าย
local function formatExpiryDate(timestamp)
    if timestamp == math.huge then
        return "ถาวร"
    end
    return os.date("%Y-%m-%d %H:%M:%S", timestamp)
end
-- ฟังก์ชันคำนวณจำนวนวันก่อนหมดอายุ
local function daysUntilExpiry(timestamp)
    if timestamp == math.huge then
        return "ถาวร"
    end
    local remainingSeconds = timestamp - os.time()
    local remainingDays = math.floor(remainingSeconds / (60 * 60 * 24))
    return remainingDays .. " วัน"
end

--เฉพาะ ADMIN \/
_G.CModA = true
_G.CModB = false

if _G.antLoop then
	print("_G.antLoop = true")
    _G.antLoop = true
else
    if _G.Antloopm then
        print("_G.Antloopm = true")
    else
        for _, keyData in ipairs(whitelistPak) do
			if keyData.Permanent then
				_G.CKey = "Key ถาวร"
				_G.CKeyy = "+ https://discord.gg/jWyFvsm2Gp + Hack By MrMaxNaJa"
				_G.antLoop = true
			else
				_G.CKey = "คีย์ เช่า "
				_G.CKeyy = "| วันหมดอายุของคีย์: ".. formatExpiryDate(keyData.ExpiryDate) .. " | เหลือเวลาอีก: " .. daysUntilExpiry(keyData.ExpiryDate)
				_G.antLoop = true
			end
            if keyData.Key == getgenv().Key then
				_G.CModB = true
                if isKeyExpired(keyData) then
                    warn("🔴 | พบผู้มีปัญหาชื่อ : " .. (game.Players.LocalPlayer.Name or "N/A") .. " | Key หมดอายุแล้ว กรุณาใส่ Key ใหม่")
                    warn("🔴 | คีย์เช่าหมดอายุแล้ว! | วันหมดอายุของคีย์: ".. formatExpiryDate(keyData.ExpiryDate))
					_G.CModA = false
                end
                if keyData.Hwid == game:GetService("RbxAnalyticsService"):GetClientId() and _G.CModA then
					warn("🟢 | พบ Hwid" .. _G.CKey .._G.CKeyy or "")
                    --_G.antLoop = true
                    _G.Antloopm = true
                    local CoreGui = game:GetService("CoreGui")
                    local target = CoreGui:FindFirstChild("MrMaxNaJaHWID")
                    if target then
                        target:Destroy()
                        print("ลบ MrMaxNaJaHWID สำเร็จ")
                    else
                        print("ไม่พบ MrMaxNaJaHWID")
                    end
                    loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/srieklsfdghjhcviub.lua"))()
				else
					if _G.CModA then
						if game.PlaceId == 16146832113 then print("Lobby") else
							game.Players.LocalPlayer:Kick("คุณถูกเตะออกจากเซิร์ฟเวอร์")
						end
						warn("🟡 | พบผู้มีปัญหาชื่อ : " .. (game.Players.LocalPlayer.Name or "N/A") .. " โปรดติดต่อแอดมิน เพิ่ม Hwid" .._G.CKey)
						setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
						
						--wait(.1) do 
						local CoreGui = game:GetService("CoreGui")
						local target = CoreGui:FindFirstChild("MrMaxNaJaHWID")
						if target then
							target:Destroy()
							print("ลบ MrMaxNaJaHWID สำเร็จ")
						else
							print("ไม่พบ MrMaxNaJaHWID")
						end

						print("1")

						local UserInputService = game:GetService("UserInputService")
						local TweenService = game:GetService("TweenService")

						local function MakeDraggable(topbarobject, object)
							local Dragging = nil
							local DragInput = nil
							local DragStart = nil
							local StartPosition = nil

							local function Update(input)
								local Delta = input.Position - DragStart
								local pos = UDim2.new(StartPosition.X.Scale, StartPosition.X.Offset + Delta.X, StartPosition.Y.Scale, StartPosition.Y.Offset + Delta.Y)
								local Tween = TweenService:Create(object, TweenInfo.new(0.0), {Position = pos})
								--local Tween = TweenService:Create(object, TweenInfo.new(0.15), {Position = pos})
								Tween:Play()
							end

							topbarobject.InputBegan:Connect(
								function(input)
									if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
										Dragging = true
										DragStart = input.Position
										StartPosition = object.Position

										input.Changed:Connect(
											function()
												if input.UserInputState == Enum.UserInputState.End then
													Dragging = false
												end
											end
										)
									end
								end
							)

							topbarobject.InputChanged:Connect(
								function(input)
									if
										input.UserInputType == Enum.UserInputType.MouseMovement or
										input.UserInputType == Enum.UserInputType.Touch
									then
										DragInput = input
									end
								end
							)

							UserInputService.InputChanged:Connect(
								function(input)
									if input == DragInput and Dragging then
										Update(input)
									end
								end
							)
						end

						-- Instances:

						local MrMaxNaJaHWID = Instance.new("ScreenGui")
						local ImageLabel = Instance.new("ImageLabel")
						local UICorner = Instance.new("UICorner")
						local NAMEHub = Instance.new("TextLabel")
						local Status = Instance.new("TextLabel")
						local UICorner_2 = Instance.new("UICorner")
						local ADMIN = Instance.new("TextLabel")
						local UICorner_3 = Instance.new("UICorner")
						local TextBox = Instance.new("TextBox")
						local TextButton = Instance.new("TextButton")
						local UICorner_4 = Instance.new("UICorner")
						local all = Instance.new("TextLabel")
						local UICorner_5 = Instance.new("UICorner")
						local ImageButton = Instance.new("ImageButton")
						local UICorner_6 = Instance.new("UICorner")

						--Properties:
						MrMaxNaJaHWID.Name = "MrMaxNaJaHWID"
						MrMaxNaJaHWID.Parent = game.CoreGui--game.Players.LocalPlayer:WaitForChild("PlayerGui")
						MrMaxNaJaHWID.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

						ImageLabel.Parent = MrMaxNaJaHWID
						ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 38)
						ImageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ImageLabel.BorderSizePixel = 0
						ImageLabel.Position = UDim2.new(0.287775248, 0, 0.271565497, 0)
						ImageLabel.Size = UDim2.new(0, 559, 0, 286)
						ImageLabel.Image = "rbxassetid://85023916007320"
						ImageLabel.ImageColor3 = Color3.fromRGB(15, 171, 255)
						ImageLabel.ImageTransparency = 1.000

						MakeDraggable(ImageLabel,ImageLabel)

						UICorner.CornerRadius = UDim.new(0, 10)
						UICorner.Parent = ImageLabel

						NAMEHub.Name = "NAME Hub"
						NAMEHub.Parent = ImageLabel
						NAMEHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						NAMEHub.BackgroundTransparency = 1.000
						NAMEHub.BorderColor3 = Color3.fromRGB(0, 0, 0)
						NAMEHub.BorderSizePixel = 0
						NAMEHub.Position = UDim2.new(0.281603336, 0, -0.00285104616, 0)
						NAMEHub.Size = UDim2.new(0, 244, 0, 50)
						NAMEHub.Font = Enum.Font.FredokaOne
						NAMEHub.Text = "System HWID MrMaxNaJa"
						NAMEHub.TextColor3 = Color3.fromRGB(148, 6, 6)
						NAMEHub.TextScaled = false
						NAMEHub.TextSize = 22.000
						NAMEHub.TextWrapped = true

						Status.Name = "Status"
						Status.Parent = NAMEHub
						Status.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						Status.BackgroundTransparency = 1.000
						Status.BorderColor3 = Color3.fromRGB(0, 0, 0)
						Status.BorderSizePixel = 0
						Status.Position = UDim2.new(-0.129344508, 0, 4.35, 0)
						Status.Size = UDim2.new(0, 126, 0, 20)
						Status.Font = Enum.Font.FredokaOne
						Status.Text = " สถานะ : " .. _G.CKey or ""
						Status.TextColor3 = Color3.fromRGB(255, 255, 255)
						Status.TextScaled = false
						Status.TextSize = 12.000
						Status.TextWrapped = true
						Status.TextXAlignment = Enum.TextXAlignment.Left

						UICorner_2.CornerRadius = UDim.new(0, 5)
						UICorner_2.Parent = Status

						ADMIN.Name = "ADMIN"
						ADMIN.Parent = NAMEHub
						ADMIN.BackgroundColor3 = Color3.fromRGB(197, 255, 253)
						ADMIN.BackgroundTransparency = 0.500
						ADMIN.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ADMIN.BorderSizePixel = 0
						ADMIN.Position = UDim2.new(-0.129344508, 0, 2.1400001, 0)
						ADMIN.Size = UDim2.new(0, 307, 0, 32)
						ADMIN.Font = Enum.Font.DenkOne
						ADMIN.Text = "คัดลอกข้อความข้างล่างส่งให้ ADMIN"
						ADMIN.TextColor3 = Color3.fromRGB(255, 255, 255)
						ADMIN.TextSize = 26.000
						ADMIN.TextWrapped = true

						UICorner_3.CornerRadius = UDim.new(0, 0)
						UICorner_3.Parent = ADMIN

						local GetClientId_HWID = game:GetService("RbxAnalyticsService"):GetClientId()
						TextBox.Parent = ADMIN
						TextBox.BackgroundColor3 = Color3.fromRGB(206, 247, 255)
						TextBox.BackgroundTransparency = 0.500
						TextBox.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextBox.BorderSizePixel = 0
						TextBox.Position = UDim2.new(0.000949126494, 0, 1.30196667, 0)
						TextBox.Size = UDim2.new(0, 306, 0, 33)
						TextBox.Font = Enum.Font.DenkOne
						TextBox.Text = GetClientId_HWID or ""
						TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
						TextBox.TextSize = 14.000

						TextBox.Focused:Connect(function()
							if TextBox.Text ~= GetClientId_HWID then
								TextBox.Text = GetClientId_HWID
							end
						end)

						TextButton.Parent = TextBox
						TextButton.BackgroundColor3 = Color3.fromRGB(152, 202, 229)
						TextButton.BackgroundTransparency = 0.500
						TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
						TextButton.BorderSizePixel = 0
						TextButton.Position = UDim2.new(-0.000952228205, 0, 1.2, 0)
						TextButton.Size = UDim2.new(0, 307, 0, 28)
						TextButton.Font = Enum.Font.DenkOne
						TextButton.Text = "Copy"
						TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
						TextButton.TextScaled = false
						TextButton.TextSize = 24.000
						TextButton.TextWrapped = true

						TextButton.MouseButton1Down:connect(function()
							setclipboard(GetClientId_HWID)
							TextBox.Text = "Copy แล้ว!" wait(1)
							TextBox.Text = GetClientId_HWID or ""
						end)

						spawn(function()
							while wait() do 
								for i = 1,255 do --255
									TextButton.TextColor3 = Color3.fromHSV(i/255, 1, 1) --255
									Status.TextColor3 = Color3.fromHSV(i/255, 1, 1) --255 
									--ADMIN.TextColor3 = Color3.fromHSV(i/255, 1, 1) --255
									--NAMEHub.TextColor3 = Color3.fromHSV(i/255, 1, 1) --255
									--TextBox.TextColor3 = Color3.fromHSV(i/255, 1, 1) --255
									wait()
								end
							end
						end)


						UICorner_4.CornerRadius = UDim.new(0, 3)
						UICorner_4.Parent = TextButton

						all.Name = "all"
						all.Parent = NAMEHub
						all.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						all.BackgroundTransparency = 1.000
						all.BorderColor3 = Color3.fromRGB(0, 0, 0)
						all.BorderSizePixel = 0
						all.Position = UDim2.new(-0.518688738, 0, 5.12000084, 0)
						all.Size = UDim2.new(0, 487, 0, 20)
						all.Font = Enum.Font.FredokaOne
						all.Text = _G.CKeyy or "" --"+ ฟหกฟหสวกสฟวหงาาหฟกด + ฟาหก่ดาส่หฟกสาด่าหฟาสกดว + หกสดาสหฟก"
						all.TextColor3 = Color3.fromRGB(255, 255, 255)
						all.TextScaled = false
						all.TextSize = 12.000
						all.TextWrapped = true
						all.TextXAlignment = Enum.TextXAlignment.Left

						UICorner_5.CornerRadius = UDim.new(0, 5)
						UICorner_5.Parent = all

						ImageButton.Parent = ImageLabel
						ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
						ImageButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
						ImageButton.BorderSizePixel = 0
						ImageButton.Position = UDim2.new(0.890876591, 0, 0.032113988, 0)
						ImageButton.Size = UDim2.new(0, 50, 0, 50)
						ImageButton.Image = "rbxassetid://97939671926320"
						ImageButton.ImageColor3 = Color3.fromRGB(173, 0, 3)

						ImageButton.MouseButton1Down:connect(function()
							setclipboard("https://discord.gg/jWyFvsm2Gp")
						end)

						UICorner_6.CornerRadius = UDim.new(0, 12)
						UICorner_6.Parent = ImageButton
						print("UI ..MrMaxNaJaHWID")
					end
                end
            end
        end
    end
end
if _G.CModB == false then
	warn("ไม่พบคีย์ หรือ HWID ในระบบ | Key and HWID not found in system")
	local player = game.Players.LocalPlayer
	player:Kick("คุณถูกเตะออกจากเซิร์ฟเวอร์")
end
