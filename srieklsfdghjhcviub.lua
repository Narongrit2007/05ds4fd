--เฉพาะ ADMIN \/
--[[    getgenv().config = {
        Selecter = "Luffo",--Roku ,Luffo
        AutoFarmKitun = true, -- ไก่ตัน
		AutoFarm = true,
		FarmTime = 2,

        Present = "14,000",-- ใส่จำนวนตัวเลข ต้องเขียนเหมือนในเกม ตัวอย่างเช่น 20,500 (ต้องมี  , ด้วย)
        GemsA = "20,500",-- ใส่จำนวนตัวเลข ต้องเขียนเหมือนในเกม ตัวอย่างเช่น 20,500 (ต้องมี  , ด้วย)

        Black_Screen = false,
    }
]]

_G.ColorMain = Color3.fromRGB(25,25,25)
_G.ColorMain2 = Color3.fromRGB(12,12,12)
------------------------------------
_G.ColorTab = Color3.fromRGB(20,20,20)
_G.ColorTop = Color3.fromRGB(25,25,25)
_G.ColorTopx = Color3.fromRGB(25,25,25)
_G.ColorTopn = Color3.fromRGB(0,0,65)

_G.ColorButton = Color3.fromRGB(0,0,150)
_G.ColorButton_Stroke = Color3.fromRGB(0,0,200)

_G.Text_Name_and_Hub_RGB_R = true --true , false
_G.Text_Name_and_Hub_Color = Color3.fromRGB(255,255,255)

--[[_G.ColorMain = Color3.fromRGB(255,0,0)
_G.ColorMain2 = Color3.fromRGB(0,0,35)
------------------------------------
_G.ColorTab = Color3.fromRGB(0,0,50)
_G.ColorTop = Color3.fromRGB(0,0,50)
_G.ColorTopx = Color3.fromRGB(0,0,60)
_G.ColorTopn = Color3.fromRGB(0,0,65)

_G.ColorButton = Color3.fromRGB(0,0,150)
_G.ColorButton_Stroke = Color3.fromRGB(0,0,200)

_G.Text_Name_and_Hub_RGB_R = true --true , false
_G.Text_Name_and_Hub_Color = Color3.fromRGB(255,255,255)

]]


local HttpService = game:GetService("HttpService")
local SETTINGS_PATH = "MrMaxNaJa/Wx/AFK.json"
local BASE_FOLDER = "MrMaxNaJa"
local GAME_FOLDER = BASE_FOLDER .. "/Wx"

local function EnsureFoldersExist()
    if not isfolder(BASE_FOLDER) then
        makefolder(BASE_FOLDER)
    end
    if not isfolder(GAME_FOLDER) then
        makefolder(GAME_FOLDER)
    end
end

function SaveSettings()
    if not (readfile and writefile and isfile and isfolder) then
        return warn("Status: Undetected Executor")
    end

    EnsureFoldersExist()
    local savedSettings = table.clone(_G.Settings)
    writefile(SETTINGS_PATH, HttpService:JSONEncode(savedSettings))
end

function LoadSettings()
    if not (readfile and writefile and isfile and isfolder and makefolder) then
        return warn("Status: Undetected Executor")
    end

    EnsureFoldersExist()
    
    if isfile(SETTINGS_PATH) then
        local success, fileContent = pcall(readfile, SETTINGS_PATH)
        if success then
            local successDecode, decodedSettings = pcall(HttpService.JSONDecode, HttpService, fileContent)
            if successDecode and type(decodedSettings) == "table" then
                for key, value in pairs(decodedSettings) do
                    _G.Settings[key] = value
                end
            else
                warn("Failed to decode settings file. Resetting to default.")
                SaveSettings()
            end
        else
            warn("Failed to read settings file. Resetting to default.")
            SaveSettings()
        end
    else
        SaveSettings()
    end
end

wait(0.01)
print("LoadSettings")
--LoadSettings()
print("LoadSettings .. OK")
if game.PlaceId == 16146832113 then
	local player = game:GetService("Players").LocalPlayer
	--local LvAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Level.Level.Text
	--local goAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Currencies.Gold.Amount.Text
	--local gemAmount = player:WaitForChild("PlayerGui"):WaitForChild("HUD"):WaitForChild("Main"):WaitForChild("Currencies"):WaitForChild("Gems"):WaitForChild("Amount").Text
	--local PresentAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Currencies.Present.Amount.Text
	_G.Settings.LvAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Level.Level.Text
	_G.Settings.goAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Currencies.Gold.Amount.Text
	_G.Settings.gemAmount = player:WaitForChild("PlayerGui"):WaitForChild("HUD"):WaitForChild("Main"):WaitForChild("Currencies"):WaitForChild("Gems"):WaitForChild("Amount").Text
	_G.Settings.PresentAmount = game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Currencies.Present.Amount.Text
	SaveSettings()
end
_G.TextMainButton_1 = "[+] Level : "
_G.TextMainButton_2 = "[+] Gold : "
_G.TextMainButton_3 = "[+] Gems : "
_G.TextMainButton_4 = "[+] Present : "
_G.TextMainButton_5 = "[!] ออกนอก lobby จะไม่อัพเดพ"
_G.TextMainButton_6 = "[+] ขอเพิ่มมาได้นะว่าง 2 ช่อง"

spawn(function()
	while task.wait() do
		pcall(function()
			_G.TextMainButton_1 = "[+] Level : ".. _G.Settings.LvAmount or ""
			_G.TextMainButton_2 = "[+] Gold : ".. _G.Settings.goAmount or ""
			_G.TextMainButton_3 = "[+] Gems : ".. _G.Settings.gemAmount or ""
			_G.TextMainButton_4 = "[+] Present : ".. _G.Settings.PresentAmount or ""
			--_G.TextMainButton_5 = "[+] "
			--_G.TextMainButton_6 = "[+] ขอเพิ่มมาได้นะว่าง 2 ช่อง"
		end)
		wait(10)
	end
end)

wait(0.1)   
do local GUI = game.CoreGui:FindFirstChild("MAXUI")
	if GUI then
		GUI:Destroy()
	end
	if _G.Color == nil then
		_G.Color = Color3.fromRGB(0,0,0)
	end
end

--local Update = {}
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

local Update = {}

function Update:Window(text,logo,text2,keybind)--(text,logo,keybind)
	local uihide = false
	local abc = false
	local logo = logo --or "rbxassetid://9295892168"
	local currentpage = ""
	local keybind = keybind or Enum.KeyCode.RightControl
	local yoo = string.gsub(tostring(keybind),"Enum.KeyCode.","")

	local MAXUI = Instance.new("ScreenGui")
	MAXUI.Name = "MAXUI"
	MAXUI.Parent = game.CoreGui
	MAXUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	local Main = Instance.new("Frame")
	Main.Name = "Main"
	Main.Parent = MAXUI
	Main.ClipsDescendants = true
	Main.AnchorPoint = Vector2.new(0.5,0.5)
	Main.BackgroundColor3 = _G.ColorMain2
	Main.Position = UDim2.new(0.5, 0, 0.6, 0)
	Main.Size = UDim2.new(0, 300, 0, 0)-- (0, 400, 0, 500)
	---------------------------------------------------------------
    Main:TweenSize(UDim2.new(0, 300, 0, 300),"Out","Quad",0.4,true)
	---------------------------------------------------------------
    local Toggle10101 = Instance.new("TextButton")
    Toggle10101.Name = "Toggle10101"
    Toggle10101.Parent = Main
    Toggle10101.BackgroundColor3 = _G.ColorTab
    Toggle10101.Position = UDim2.new(0, 5, 0, 0)
    Toggle10101.Size = UDim2.new(0, 65, 0, 45)
    Toggle10101.BackgroundTransparency = 1
    Toggle10101.Font = Enum.Font.DenkOne
    Toggle10101.Text = ""
    Toggle10101.TextColor3 = Color3.fromRGB(255,0,0)
    Toggle10101.TextScaled = true
    Toggle10101.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)

	local MCNR = Instance.new("UICorner")
	MCNR.Name = "MCNR"
	MCNR.Parent = Main

	local Top = Instance.new("Frame")
	Top.Name = "Top"
	Top.Parent = Main
    Top.Position = UDim2.new(0, 0, 0, 0)
	Top.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Top.Size = UDim2.new(0, 300, 0, 25.5)

    local UIRGjBs5 = Instance.new("UIGradient")
    UIRGjBs5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, _G.ColorTopx), ColorSequenceKeypoint.new(1.00, _G.ColorTopn)}
    UIRGjBs5.Parent = Top

    local Toggle1010 = Instance.new("TextButton")
    Toggle1010.Name = "Toggle1010"
    Toggle1010.Parent = Top
    Toggle1010.BackgroundColor3 = _G.ColorMain2
    Toggle1010.Position = UDim2.new(0.9, 0, 0.25, 0)
    Toggle1010.Size = UDim2.new(0, 15, 0, 15)
    Toggle1010.Font = Enum.Font.DenkOne
    Toggle1010.Text = "+"
    Toggle1010.TextColor3 = _G.Text_Name_and_Hub_Color--Color3.fromRGB(255,50,50)
    Toggle1010.TextScaled = true
    Toggle1010.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)

	local kdfhgh = Instance.new("UICorner")
	kdfhgh.Name = "kdfhgh"
	kdfhgh.Parent = Toggle1010

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Top

	local Top1 = Instance.new("Frame")
	Top1.Name = "Top1"
	Top1.Parent = Top
    Top1.Position = UDim2.new(0, 0, 0, 255)
	Top1.BackgroundColor3 = _G.ColorTop
	Top1.Size = UDim2.new(0, 301, 0, 40)

	local TCNR1 = Instance.new("UICorner")
	TCNR1.Name = "TCNR"
	TCNR1.Parent = Top1
--[[
	local Logo = Instance.new("ImageLabel")
	Logo.Name = "Logo"
	Logo.Parent = Top
	Logo.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Logo.BackgroundTransparency = 1.000
	Logo.Position = UDim2.new(0, 10, 0, 1)
	Logo.Size = UDim2.new(0, 25, 0, 25)
	Logo.Image = "rbxassetid://9295892168"
-- ]]
	local Name = Instance.new("TextLabel")
	Name.Name = "Name"
	Name.Parent = Top
	Name.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Name.BackgroundTransparency = 1.000
	Name.Position = UDim2.new(0.0609756112, 0, 0, 0)
	Name.Size = UDim2.new(0, 10, 0, 27)
	Name.Font = Enum.Font.DenkOne
	Name.Text = text2 --"Free Map:Blox-Fruits"--text
	Name.TextColor3 = Color3.fromRGB(225, 225, 225)
	Name.TextSize = 12.000

    Name:TweenSize(UDim2.new(0, 330, 0, 30),"Out","Quad",0.5,true)

	local Hub = Instance.new("TextLabel")
	Hub.Name = "Hub"
	Hub.Parent = Top
	Hub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Hub.BackgroundTransparency = 1.000
	Hub.Position = UDim2.new(0, 5, 0, 0)
	Hub.Size = UDim2.new(0, 81, 0, 27)
	Hub.Font = Enum.Font.DenkOne
	Hub.Text = text--"MrMaxNaJa"
	Hub.TextColor3 = _G.Text_Name_and_Hub_Color
	Hub.TextSize = 20.000
	Hub.TextXAlignment = Enum.TextXAlignment.Left

    spawn(function()
        while wait() do 
            if _G.Text_Name_and_Hub_RGB_R then
                for i = 1,255 do
                    Name.TextColor3 = Color3.fromHSV(i/255, 1, 1)
                    Hub.TextColor3 = Color3.fromHSV(i/255, 1, 1)
                    Toggle1010.TextColor3 = Color3.fromHSV(i/255, 1, 1)
                    wait()
                end
            else
                Name.TextColor3 = _G.Text_Name_and_Hub_Color
                Hub.TextColor3 = _G.Text_Name_and_Hub_Color
                Toggle1010.TextColor3 = _G.Text_Name_and_Hub_Color
            end
        end
    end)

	local BindButton = Instance.new("TextButton")
	BindButton.Name = "BindButton"
	BindButton.Parent = Top1
	BindButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	BindButton.BackgroundTransparency = 1.000
	BindButton.Position = UDim2.new(0.687561002, 0, 0, 0)
	BindButton.Size = UDim2.new(0, 100, 0, 27)
	BindButton.Font = Enum.Font.DenkOne
	BindButton.Text = "[ "..string.gsub(tostring(keybind),"Enum.KeyCode.","").." ]"
	BindButton.TextColor3 = Color3.fromRGB(255, 255, 255)
	BindButton.TextSize = 10.000
	
	BindButton.MouseButton1Click:Connect(function ()
		BindButton.Text = "[ ..Ui By MrMaxNaJa.. ]"
		local inputwait = game:GetService("UserInputService").InputBegan:wait()
		local shiba = inputwait.KeyCode == Enum.KeyCode.Unknown and inputwait.UserInputType or inputwait.KeyCode

		if shiba.Name ~= "Focus" and shiba.Name ~= "MouseMovement" then
			BindButton.Text = "[ "..shiba.Name.." ]"
			yoo = shiba.Name
		end
	end)

	local TextMainButton_1 = Instance.new("TextLabel")
	TextMainButton_1.Name = "TextMainButton_1"
	TextMainButton_1.Parent = Top1
	TextMainButton_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_1.BackgroundTransparency = 1
	TextMainButton_1.Position = UDim2.new(0.03, 0, 0, 0)
	TextMainButton_1.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_1.Font = Enum.Font.DenkOne
	TextMainButton_1.Text = _G.TextMainButton_1
	TextMainButton_1.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_1.TextSize = 10.000
    TextMainButton_1.TextXAlignment = Enum.TextXAlignment.Left

    local TextMainButton_2 = Instance.new("TextLabel")
	TextMainButton_2.Name = "TextMainButton_2"
	TextMainButton_2.Parent = Top1
	TextMainButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_2.BackgroundTransparency = 1
	TextMainButton_2.Position = UDim2.new(0.03, 0, 0.3, 0)
	TextMainButton_2.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_2.Font = Enum.Font.DenkOne
	TextMainButton_2.Text = _G.TextMainButton_2
	TextMainButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_2.TextSize = 10.000
    TextMainButton_2.TextXAlignment = Enum.TextXAlignment.Left

    local TextMainButton_3 = Instance.new("TextLabel")
	TextMainButton_3.Name = "TextMainButton_3"
	TextMainButton_3.Parent = Top1
	TextMainButton_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_3.BackgroundTransparency = 1
	TextMainButton_3.Position = UDim2.new(0.03, 0, 0.6, 0)
	TextMainButton_3.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_3.Font = Enum.Font.DenkOne
	TextMainButton_3.Text = _G.TextMainButton_3
	TextMainButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_3.TextSize = 10.000
    TextMainButton_3.TextXAlignment = Enum.TextXAlignment.Left

    local TextMainButton_4 = Instance.new("TextLabel")
	TextMainButton_4.Name = "TextMainButton_4"
	TextMainButton_4.Parent = Top1
	TextMainButton_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_4.BackgroundTransparency = 1
	TextMainButton_4.Position = UDim2.new(0.4, 0, 0, 0)
	TextMainButton_4.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_4.Font = Enum.Font.DenkOne
	TextMainButton_4.Text = _G.TextMainButton_4
	TextMainButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_4.TextSize = 10.000
    TextMainButton_4.TextXAlignment = Enum.TextXAlignment.Left

    local TextMainButton_5 = Instance.new("TextLabel")
	TextMainButton_5.Name = "TextMainButton_5"
	TextMainButton_5.Parent = Top1
	TextMainButton_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_5.BackgroundTransparency = 1
	TextMainButton_5.Position = UDim2.new(0.4, 0, 0.3, 0)
	TextMainButton_5.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_5.Font = Enum.Font.DenkOne
	TextMainButton_5.Text = _G.TextMainButton_5
	TextMainButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_5.TextSize = 10.000
    TextMainButton_5.TextXAlignment = Enum.TextXAlignment.Left

    local TextMainButton_6 = Instance.new("TextLabel")
	TextMainButton_6.Name = "TextMainButton_6"
	TextMainButton_6.Parent = Top1
	TextMainButton_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_6.BackgroundTransparency = 1
	TextMainButton_6.Position = UDim2.new(0.4, 0, 0.6, 0)
	TextMainButton_6.Size = UDim2.new(0, 110, 0, 20)
	TextMainButton_6.Font = Enum.Font.DenkOne
	TextMainButton_6.Text = _G.TextMainButton_6
	TextMainButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextMainButton_6.TextSize = 10.000
    TextMainButton_6.TextXAlignment = Enum.TextXAlignment.Left

	local Tab = Instance.new("Frame")
	Tab.Name = "Tab"
	Tab.Parent = Main
	Tab.BackgroundColor3 = _G.ColorTab
	Tab.Position = UDim2.new(0, 5, 0, 30)
	Tab.Size = UDim2.new(0, 65, 0, 220)

	local TCNR = Instance.new("UICorner")
	TCNR.Name = "TCNR"
	TCNR.Parent = Tab

	local ScrollTab = Instance.new("ScrollingFrame")
	ScrollTab.Name = "ScrollTab"
	ScrollTab.Parent = Tab
	ScrollTab.Active = true
	ScrollTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ScrollTab.BackgroundTransparency = 1
	ScrollTab.Size = UDim2.new(0, 65, 0, 220)
	ScrollTab.CanvasSize = UDim2.new(0, 0, 0, 0)
	ScrollTab.ScrollBarThickness = 0

	local PLL = Instance.new("UIListLayout")
	PLL.Name = "PLL"
	PLL.Parent = ScrollTab
	PLL.SortOrder = Enum.SortOrder.LayoutOrder
	PLL.Padding = UDim.new(0, 15)

	local PPD = Instance.new("UIPadding")
	PPD.Name = "PPD"
	PPD.Parent = ScrollTab
	PPD.PaddingLeft = UDim.new(0, 10)
	PPD.PaddingTop = UDim.new(0, 10)

	local Page = Instance.new("Frame")
	Page.Name = "Page"
	Page.Parent = Main
	Page.BackgroundColor3 = Color3.fromRGB(50, 35, 35)
	Page.BackgroundTransparency = 1
	Page.Position = UDim2.new(0.245426834, 0, 0.075000003, 0)
	Page.Size = UDim2.new(0, 220, 0, 220)
------------------------
--[[
	local PCNR = Instance.new("UICorner")
	PCNR.Name = "PCNR"
	PCNR.Parent = Page
--]]
	local MainPage = Instance.new("Frame")
	MainPage.Name = "MainPage"
	MainPage.Parent = Page
	MainPage.ClipsDescendants = true
	MainPage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	MainPage.BackgroundTransparency = 1
	MainPage.Size = UDim2.new(0, 220, 0, 220)
--------------------
	local PageList = Instance.new("Folder")
	PageList.Name = "PageList"
	PageList.Parent = MainPage

	local UIPageLayout = Instance.new("UIPageLayout")

	UIPageLayout.Parent = PageList
	UIPageLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIPageLayout.EasingDirection = Enum.EasingDirection.InOut
	UIPageLayout.EasingStyle = Enum.EasingStyle.Quad
	UIPageLayout.FillDirection = Enum.FillDirection.Vertical
	UIPageLayout.Padding = UDim.new(0, 15)--50,15
	UIPageLayout.TweenTime = 0.400 --0.400
	UIPageLayout.GamepadInputEnabled = false
	UIPageLayout.ScrollWheelInputEnabled = false
	UIPageLayout.TouchInputEnabled = false
	
	MakeDraggable(Top,Main)

	UserInputService.InputBegan:Connect(function(input)
		if input.KeyCode == Enum.KeyCode[yoo] then
			if uihide == false then
				uihide = true
				Main:TweenSize(UDim2.new(0, 95, 0, 22.5),"In","Quad",0.4,true)
			else
				uihide = false
				Main:TweenSize(UDim2.new(0, 300, 0, 300),"Out","Quad",0.4,true)
			end
		end
	end)

    local IMGNAME = Instance.new("ImageButton")
    IMGNAME.Name = "IMGDATA"
    IMGNAME.Parent = ScrollTab
    IMGNAME.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    IMGNAME.BackgroundTransparency = 1
    IMGNAME.Position = UDim2.new(0, 0, 0, 0)
    IMGNAME.Size = UDim2.new(0, 45.5, 0, 45.5)
    IMGNAME.Image = logo
    IMGNAME.MouseButton1Down:connect(function()
        game:GetService("VirtualInputManager"):SendKeyEvent(true,305,false,game)
        game:GetService("VirtualInputManager"):SendKeyEvent(false,305,false,game)
    end)

	local uitab = {}
    
--[[
        local ButtonHolderUIStroke1 = Instance.new("UIStroke")
        ButtonHolderUIStroke1.Name = "ButtonHolderUIStroke1"
        ButtonHolderUIStroke1.Parent = IMGNAME
        ButtonHolderUIStroke1.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        ButtonHolderUIStroke1.Color = Color3.fromRGB(255, 255, 255)
        ButtonHolderUIStroke1.LineJoinMode = Enum.LineJoinMode.Round
        ButtonHolderUIStroke1.Thickness = 1.5
        ButtonHolderUIStroke1.Transparency = 0.200
        ButtonHolderUIStroke1.Enabled = true
        ButtonHolderUIStroke1.Archivable = true
--]]
	function uitab:Tab(text)
		local TabButton = Instance.new("TextButton")
		TabButton.Parent = ScrollTab
		TabButton.Name = text.."Server"
		TabButton.Text = text
		TabButton.BackgroundColor3 = Color3.fromRGB(200, 200, 200)
		TabButton.BackgroundTransparency = 0.500
		TabButton.Size = UDim2.new(0, 45, 0, 45)
		TabButton.Font = Enum.Font.GothamSemibold
		TabButton.TextColor3 = Color3.fromRGB(255, 255, 255)
		TabButton.TextSize = 12.000
		TabButton.TextTransparency = 0.000

        local ButtonHolderUIStroke = Instance.new("UIStroke")
        ButtonHolderUIStroke.Name = "ButtonHolderUIStroke"
        ButtonHolderUIStroke.Parent = TabButton
        ButtonHolderUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
        ButtonHolderUIStroke.Color = Color3.fromRGB(255,255,255)
        ButtonHolderUIStroke.LineJoinMode = Enum.LineJoinMode.Round
        ButtonHolderUIStroke.Thickness = 2
        ButtonHolderUIStroke.Transparency = 0.500
        ButtonHolderUIStroke.Enabled = true
        ButtonHolderUIStroke.Archivable = true

        local crobqq = Instance.new("UICorner")
        crobqq.CornerRadius = UDim.new(0, 5)
        crobqq.Name = "GlowFrameCorner"
        crobqq.Parent = TabButton

		local MainFramePage = Instance.new("ScrollingFrame")
		MainFramePage.Name = text.."_Page"
		MainFramePage.Parent = PageList
		MainFramePage.Active = true
		MainFramePage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		MainFramePage.BackgroundTransparency = 1--1,0
		MainFramePage.BorderSizePixel = 0
		MainFramePage.Size = UDim2.new(0, 220, 0, 220)-- UDim2.new(0, 220, 0, 220)
		MainFramePage.CanvasSize = UDim2.new(0, 0, 0, 0)
		MainFramePage.ScrollBarThickness = 0
		
		local UIPadding = Instance.new("UIPadding")
		local UIListLayout = Instance.new("UIListLayout")
		
		UIPadding.Parent = MainFramePage
		UIPadding.PaddingLeft = UDim.new(0, 10)
		UIPadding.PaddingTop = UDim.new(0, 10)

		UIListLayout.Padding = UDim.new(0,5) --15 , 5
		UIListLayout.Parent = MainFramePage
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		
		TabButton.MouseButton1Click:Connect(function()
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			for i,v in next, PageList:GetChildren() do
				currentpage = string.gsub(TabButton.Name,"Server","").."_Page"
				if v.Name == currentpage then
					UIPageLayout:JumpTo(v)
				end
			end
		end)

		if abc == false then
			for i,v in next, ScrollTab:GetChildren() do
				if v:IsA("TextButton") then
					TweenService:Create(
						v,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end
				TweenService:Create(
					TabButton,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextTransparency = 0}
				):Play()
			end
			UIPageLayout:JumpToIndex(1)
			abc = true
		end
		
		game:GetService("RunService").Stepped:Connect(function()
			pcall(function()
				MainFramePage.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 20)
				ScrollTab.CanvasSize = UDim2.new(0,0,0,PLL.AbsoluteContentSize.Y + 20)
			end)
		end)
		
		local main = {}
		function main:Button(text,callback)
			local Button = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local TextBtn = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Black = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			
			Button.Name = "Button"
			Button.Parent = MainFramePage
			Button.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Button.Size = UDim2.new(0, 200, 0, 20)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Button
			
			TextBtn.Name = "TextBtn"
			TextBtn.Parent = Button
			TextBtn.BackgroundColor3 = _G.ColorButton --Color3.fromRGB(150, 45, 45)
			TextBtn.Position = UDim2.new(0, 1, 0, 1)
			TextBtn.Size = UDim2.new(0, 198, 0, 18)
			TextBtn.AutoButtonColor = false
			TextBtn.Font = Enum.Font.DenkOne
			TextBtn.Text = text
			TextBtn.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBtn.TextSize = 12.000
			
			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBtn
			
			Black.Name = "Black"
			Black.Parent = Button
			Black.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Black.BackgroundTransparency = 1.000
			Black.BorderSizePixel = 0
			Black.Position = UDim2.new(0, 1, 0, 1)
			Black.Size = UDim2.new(0, 197, 0, 17)
			
			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Black

			TextBtn.MouseEnter:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.7}
				):Play()
			end)
			TextBtn.MouseLeave:Connect(function()
				TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 1}
				):Play()
			end)
			TextBtn.MouseButton1Click:Connect(function()
				TextBtn.TextSize = 0
                TweenService:Create(
					Black,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundTransparency = 0.45}
				):Play()
				TweenService:Create(
					TextBtn,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{TextSize = 15}
				):Play()
				callback()
			end)
		end
		function main:Toggle(text,config,callback)
			config = config or false
			local toggled = config
			local Toggle = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local Button = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Label = Instance.new("TextLabel")
            local LabelEmojeHack = Instance.new("TextLabel")
			local ToggleImage = Instance.new("Frame")
			local UICorner_3 = Instance.new("UICorner")
			local Circle = Instance.new("Frame")
			local UICorner_4 = Instance.new("UICorner")

			Toggle.Name = "Toggle"
			Toggle.Parent = MainFramePage
			Toggle.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Toggle.Size = UDim2.new(0, 200, 0, 23)

			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Toggle

			Button.Name = "Button"
			Button.Parent = Toggle
			Button.BackgroundColor3 = _G.ColorButton --Color3.fromRGB(150, 45, 45)
			Button.Position = UDim2.new(0, 1, 0, 1)
			Button.Size = UDim2.new(0, 198, 0, 21)
			Button.AutoButtonColor = false
			Button.Font = Enum.Font.DenkOne
			Button.Text = ""
			Button.TextColor3 = Color3.fromRGB(45, 45, 45)
			Button.TextSize = 11.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = Button

			ToggleImage.Name = "ToggleImage"
			ToggleImage.Parent = Toggle
			ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			ToggleImage.Position = UDim2.new(0, 1, 0, 0)
			ToggleImage.Size = UDim2.new(0, 198, 0, 21)
            ToggleImage.BackgroundTransparency = 1

			UICorner_3.CornerRadius = UDim.new(0, 10)
			UICorner_3.Parent = ToggleImage

			Circle.Name = "Circle"
			Circle.Parent = ToggleImage
			Circle.BackgroundColor3 = _G.ColorMain
			Circle.Position = UDim2.new(0, 0, 0, 1)
			Circle.Size = UDim2.new(0, 198, 0, 20)
            Circle.BackgroundTransparency = 0.500

			UICorner_4.CornerRadius = UDim.new(0, 5)
			UICorner_4.Parent = Circle

            Label.Name = "Label"
			Label.Parent = Toggle
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1
			Label.Position = UDim2.new(0, 22, 0, 2)
			Label.Size = UDim2.new(0, 170, 0, 18)
			Label.Font = Enum.Font.DenkOne
			Label.Text = text
			Label.TextColor3 = Color3.fromRGB(255, 255, 255)
			Label.TextSize = 12.000
            Label.TextXAlignment = Enum.TextXAlignment.Left

            LabelEmojeHack.Name = "LabelEmojeHack"
			LabelEmojeHack.Parent = Toggle
			LabelEmojeHack.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
			LabelEmojeHack.BackgroundTransparency = 0.85
			LabelEmojeHack.Position = UDim2.new(0, 5, 0, 5)
			LabelEmojeHack.Size = UDim2.new(0, 12, 0, 12)
			LabelEmojeHack.Font = Enum.Font.DenkOne
			LabelEmojeHack.Text = "❌"
			LabelEmojeHack.TextColor3 = Color3.fromRGB(255, 255, 255)
			LabelEmojeHack.TextSize = 12.000

			Button.MouseButton1Click:Connect(function()
				if toggled == false then
					toggled = true
					Circle:TweenPosition(UDim2.new(0,0,0,1),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(0, 255, 0)}
					):Play()
                    LabelEmojeHack.BackgroundTransparency = 0
                    LabelEmojeHack.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                    LabelEmojeHack.Text = "✅"
				else
					toggled = false
					Circle:TweenPosition(UDim2.new(0,0,0,1),"Out","Sine",0.2,true)
					TweenService:Create(
						Circle,
						TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{BackgroundColor3 = Color3.fromRGB(180, 0, 0)}
					):Play()
                    LabelEmojeHack.BackgroundTransparency = 0.85
                    LabelEmojeHack.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
                    LabelEmojeHack.Text = "❌"
				end
				pcall(callback,toggled)
			end)

			if config == true then
				toggled = true
				Circle:TweenPosition(UDim2.new(0,0,0,1),"Out","Sine",0.4,true)
				TweenService:Create(
					Circle,
					TweenInfo.new(0.4,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{BackgroundColor3 = Color3.fromRGB(0, 255, 0)}
				):Play()
                LabelEmojeHack.BackgroundTransparency = 0
                LabelEmojeHack.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
                LabelEmojeHack.Text = "✅"
				pcall(callback,toggled)
			end
		end
		--[[function main:Dropdown(text,option,callback)
			local isdropping = false
			local Dropdown = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local DropTitle = Instance.new("TextLabel")
			local DropScroll = Instance.new("ScrollingFrame")
			local UIListLayout = Instance.new("UIListLayout")
			local UIPadding = Instance.new("UIPadding")
			local DropButton = Instance.new("TextButton")
			local DropImage = Instance.new("ImageLabel")
			
			Dropdown.Name = "Dropdown"
			Dropdown.Parent = MainFramePage
			Dropdown.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
            Dropdown.BackgroundTransparency = 0.500
			Dropdown.ClipsDescendants = true
			Dropdown.Size = UDim2.new(0, 200, 0, 20)
			
			UICorner.CornerRadius = UDim.new(0, 5)
			UICorner.Parent = Dropdown
			
			local ButtonHolderUIStro1010ke = Instance.new("UIStroke")
			ButtonHolderUIStro1010ke.Name = "ButtonHolderUIStroke"
 			ButtonHolderUIStro1010ke.Parent = Dropdown
 			ButtonHolderUIStro1010ke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
 			ButtonHolderUIStro1010ke.Color = _G.ColorButton_Stroke
			ButtonHolderUIStro1010ke.LineJoinMode = Enum.LineJoinMode.Round
 			ButtonHolderUIStro1010ke.Thickness = 1
 			ButtonHolderUIStro1010ke.Transparency = 0
 			ButtonHolderUIStro1010ke.Enabled = true
			ButtonHolderUIStro1010ke.Archivable = true

			DropTitle.Name = "DropTitle"
			DropTitle.Parent = Dropdown
			DropTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropTitle.BackgroundTransparency = 1.000
			DropTitle.Size = UDim2.new(0, 200, 0, 20)
			DropTitle.Font = Enum.Font.DenkOne
			DropTitle.Text = text.. " :  "
			DropTitle.TextColor3 = Color3.fromRGB(225, 225, 225)
			DropTitle.TextSize = 12.000
			
			DropScroll.Name = "DropScroll"
			DropScroll.Parent = DropTitle
			DropScroll.Active = true
			DropScroll.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropScroll.BackgroundTransparency = 1
			DropScroll.BorderSizePixel = 0
			DropScroll.Position = UDim2.new(0, 0, 0, 20)
			DropScroll.Size = UDim2.new(0, 200, 0, 70)---------?
			DropScroll.CanvasSize = UDim2.new(0, 0, 0, 0)
			DropScroll.ScrollBarThickness = 3
			
			UIListLayout.Parent = DropScroll
			UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
			UIListLayout.Padding = UDim.new(0, 5)
			
			UIPadding.Parent = DropScroll
			UIPadding.PaddingLeft = UDim.new(0, 5)
			UIPadding.PaddingTop = UDim.new(0, 5)
			
			DropImage.Name = "DropImage"
			DropImage.Parent = Dropdown
			DropImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropImage.BackgroundTransparency = 1
			DropImage.Position = UDim2.new(0, 10, 0, 3)
			DropImage.Rotation = 180.000
			DropImage.Size = UDim2.new(0, 15, 0, 15)
			DropImage.Image = "rbxassetid://6031090990"
			
			DropButton.Name = "DropButton"
			DropButton.Parent = Dropdown
			DropButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			DropButton.BackgroundTransparency = 1.000
			DropButton.Size = UDim2.new(0, 200, 0, 20)
			DropButton.Font = Enum.Font.DenkOne
			DropButton.Text = ""
			DropButton.TextColor3 = Color3.fromRGB(0, 0, 0)
			DropButton.TextSize = 12.000

			for i,v in next,option do
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 190, 0, 20)
				Item.Font = Enum.Font.DenkOne
				Item.Text = tostring(v)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 10.500
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,200,0,21),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end

			DropScroll.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 10)

			DropButton.MouseButton1Click:Connect(function()
				if isdropping == false then
					isdropping = true
					Dropdown:TweenSize(UDim2.new(0,200,0,90),"Out","Quad",0.3,true)--------------------?
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 0}
					):Play()
				else
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,200,0,21),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
				end
			end)

			local dropfunc = {}
			function dropfunc:Add(t)
				local Item = Instance.new("TextButton")
				Item.Name = "Item"
				Item.Parent = DropScroll
				Item.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Item.BackgroundTransparency = 1.000
				Item.Size = UDim2.new(0, 190, 0, 20)
				Item.Font = Enum.Font.DenkOne
				Item.Text = tostring(t)
				Item.TextColor3 = Color3.fromRGB(225, 225, 225)
				Item.TextSize = 13.000
				Item.TextTransparency = 0.500

				Item.MouseEnter:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0}
					):Play()
				end)

				Item.MouseLeave:Connect(function()
					TweenService:Create(
						Item,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{TextTransparency = 0.5}
					):Play()
				end)

				Item.MouseButton1Click:Connect(function()
					isdropping = false
					Dropdown:TweenSize(UDim2.new(0,200,0,21),"Out","Quad",0.3,true)
					TweenService:Create(
						DropImage,
						TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
						{Rotation = 180}
					):Play()
					callback(Item.Text)
					DropTitle.Text = text.." : "..Item.Text
				end)
			end
			function dropfunc:Clear()
				DropTitle.Text = tostring(text).." : "
				isdropping = false
				Dropdown:TweenSize(UDim2.new(0,200,0,21),"Out","Quad",0.3,true)
				TweenService:Create(
					DropImage,
					TweenInfo.new(0.3,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
					{Rotation = 180}
				):Play()
				for i,v in next, DropScroll:GetChildren() do
					if v:IsA("TextButton") then
						v:Destroy()
					end
				end
			end
			return dropfunc
		end]]

		function main:Slider(text,min,max,set,callback)
			local Slider = Instance.new("Frame")
			local slidercorner = Instance.new("UICorner")
			local sliderr = Instance.new("Frame")
			local sliderrcorner = Instance.new("UICorner")
			local SliderLabel = Instance.new("TextLabel")
			local HAHA = Instance.new("Frame")
			local AHEHE = Instance.new("TextButton")
			local bar = Instance.new("Frame")
			local bar1 = Instance.new("Frame")
			local bar1corner = Instance.new("UICorner")
			local barcorner = Instance.new("UICorner")
			local circlebar = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local slidervalue = Instance.new("Frame")
			local valuecorner = Instance.new("UICorner")
			local TextBox = Instance.new("TextBox")
			local UICorner_2 = Instance.new("UICorner")

			Slider.Name = "Slider"
			Slider.Parent = MainFramePage
			Slider.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Slider.BackgroundTransparency = 0
			Slider.Size = UDim2.new(0, 200, 0, 27)

			slidercorner.CornerRadius = UDim.new(0, 5)
			slidercorner.Name = "slidercorner"
			slidercorner.Parent = Slider

			sliderr.Name = "sliderr"
			sliderr.Parent = Slider
			sliderr.BackgroundColor3 = _G.ColorButton --Color3.fromRGB(150, 45, 45)
			sliderr.Position = UDim2.new(0, 1, 0, 1)
			sliderr.Size = UDim2.new(0, 198, 0, 25)

			sliderrcorner.CornerRadius = UDim.new(0, 5)
			sliderrcorner.Name = "sliderrcorner"
			sliderrcorner.Parent = sliderr

			SliderLabel.Name = "SliderLabel"
			SliderLabel.Parent = sliderr
			SliderLabel.BackgroundColor3 = _G.ColorButton
			SliderLabel.BackgroundTransparency = 0
			SliderLabel.Position = UDim2.new(0, 58, 0, -2)
			SliderLabel.Size = UDim2.new(0, 80, 0, 15)
			SliderLabel.Font = Enum.Font.DenkOne
			SliderLabel.Text = text
			SliderLabel.TextColor3 = Color3.fromRGB(225, 225, 225)
			SliderLabel.TextSize = 12.000
			--SliderLabel.TextTransparency = 0
			--SliderLabel.TextXAlignment = Enum.TextXAlignment.Left

            local SliderLabelUICorner = Instance.new("UICorner")
            SliderLabelUICorner.CornerRadius = UDim.new(0, 2)
			SliderLabelUICorner.Parent = SliderLabel

            local SliderLabelUIStroke = Instance.new("UIStroke")
            SliderLabelUIStroke.Name = "SliderLabelUIStroke"
            SliderLabelUIStroke.Parent = SliderLabel
            SliderLabelUIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
            SliderLabelUIStroke.Color = _G.ColorButton
            SliderLabelUIStroke.LineJoinMode = Enum.LineJoinMode.Round
            SliderLabelUIStroke.Thickness = 1.5
            SliderLabelUIStroke.Transparency = 0.200
            SliderLabelUIStroke.Enabled = true
            SliderLabelUIStroke.Archivable = true

			HAHA.Name = "HAHA"
			HAHA.Parent = sliderr
			HAHA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HAHA.BackgroundTransparency = 1.000
			HAHA.Size = UDim2.new(0, 100, 0, 29)

			AHEHE.Name = "AHEHE" -- Hack
			AHEHE.Parent = sliderr
			AHEHE.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			AHEHE.BackgroundTransparency = 1.000
			AHEHE.Position = UDim2.new(0, 10, 0, 15)
			AHEHE.Size = UDim2.new(0, 110, 0, 5)
			AHEHE.Font = Enum.Font.DenkOne
			AHEHE.Text = ""
			AHEHE.TextColor3 = Color3.fromRGB(0, 0, 0)
			AHEHE.TextSize = 12.000

			bar.Name = "bar"
			bar.Parent = AHEHE
			bar.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			bar.Size = UDim2.new(0, 110, 0, 5)

			bar1.Name = "bar1"
			bar1.Parent = bar
			bar1.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			bar1.BackgroundTransparency = 0
			bar1.Size = UDim2.new(set/max, 0, 0, 5)

			bar1corner.CornerRadius = UDim.new(0, 5)
			bar1corner.Name = "bar1corner"
			bar1corner.Parent = bar1

			barcorner.CornerRadius = UDim.new(0, 5)
			barcorner.Name = "barcorner"
			barcorner.Parent = bar

			circlebar.Name = "circlebar"
			circlebar.Parent = bar1
			circlebar.BackgroundColor3 = Color3.fromRGB(225, 225, 225)
			circlebar.Position = UDim2.new(1, -2, 0, -3)
			circlebar.Size = UDim2.new(0, 10, 0, 10)

			UICorner.CornerRadius = UDim.new(0, 100)
			UICorner.Parent = circlebar

			slidervalue.Name = "slidervalue"
			slidervalue.Parent = sliderr
			slidervalue.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			slidervalue.BackgroundTransparency = 0
			slidervalue.Position = UDim2.new(0, 135, 0, 5)
			slidervalue.Size = UDim2.new(0, 58, 0, 16)

			valuecorner.CornerRadius = UDim.new(0, 5)
			valuecorner.Name = "valuecorner"
			valuecorner.Parent = slidervalue

			TextBox.Parent = slidervalue -- Hack
			TextBox.BackgroundColor3 = _G.ColorButton_Stroke--Color3.fromRGB(100, 35, 35)
			TextBox.Position = UDim2.new(0, 1, 0, 1)
			TextBox.Size = UDim2.new(0, 56, 0, 14)
			TextBox.Font = Enum.Font.DenkOne
			TextBox.TextColor3 = Color3.fromRGB(225, 225, 225)
			TextBox.TextSize = 9.000
			TextBox.Text = set
			TextBox.TextTransparency = 0

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = TextBox

			local mouse = game.Players.LocalPlayer:GetMouse()
			local uis = game:GetService("UserInputService")

			if Value == nil then
				Value = set
				pcall(function()
					callback(Value)
				end)
			end
			
			AHEHE.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(max) - tonumber(min)) / 110) * bar1.AbsoluteSize.X) + tonumber(min)) or 0
				pcall(function()
					callback(Value)
				end)
				bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 110), 0, 5)
				circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 110), 0, -3)
				moveconnection = mouse.Move:Connect(function()
					TextBox.Text = Value
					Value = math.floor((((tonumber(max) - tonumber(min)) / 110) * bar1.AbsoluteSize.X) + tonumber(min))
					pcall(function()
						callback(Value)
					end)
					bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 110), 0, 5)
					circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 110), 0, -3)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(max) - tonumber(min)) / 110) * bar1.AbsoluteSize.X) + tonumber(min))
						pcall(function()
							callback(Value)
						end)
						bar1.Size = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X, 0, 110), 0, 5)
						circlebar.Position = UDim2.new(0, math.clamp(mouse.X - bar1.AbsolutePosition.X - 2, 0, 110), 0, -3)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
					end
				end)
			end)
			releaseconnection = uis.InputEnded:Connect(function(Mouse)
				if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
					Value = math.floor((((tonumber(max) - tonumber(min)) / 110) * bar1.AbsoluteSize.X) + tonumber(min))
					TextBox.Text = Value
				end
			end)

			TextBox.FocusLost:Connect(function()
				if tonumber(TextBox.Text) > max then
					TextBox.Text  = max
				end
				bar1.Size = UDim2.new((TextBox.Text or 0) / max, 0, 0, 5)
				circlebar.Position = UDim2.new(1, -2, 0, -3)
				TextBox.Text = tostring(TextBox.Text and math.floor( (TextBox.Text / max) * (max - min) + min) )
				pcall(callback, TextBox.Text)
			end)
		end

		function main:Label(text)
			local Label = Instance.new("TextLabel")
			local PaddingLabel = Instance.new("UIPadding")
			local labelfunc = {}
	
			Label.Name = "Label"
			Label.Parent = MainFramePage
			Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Label.BackgroundTransparency = 1.000
			Label.Size = UDim2.new(0, 0, 0, 10)
			Label.Font = Enum.Font.DenkOne
			Label.TextColor3 = Color3.fromRGB(225, 225, 225)
			Label.TextSize = 12.000
			Label.Text = text
			Label.TextXAlignment = Enum.TextXAlignment.Left

			PaddingLabel.PaddingLeft = UDim.new(0,15)
			PaddingLabel.Parent = Label
			PaddingLabel.Name = "PaddingLabel"
	
			function labelfunc:Set(newtext)
				Label.Text = newtext
			end
			return labelfunc
		end

		function main:Seperator(text)
			local Seperator = Instance.new("Frame")
			local Sep1 = Instance.new("Frame")
			local Sep2 = Instance.new("TextLabel")
			local Sep3 = Instance.new("Frame")
			
			Seperator.Name = "Seperator"
			Seperator.Parent = MainFramePage
			Seperator.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Seperator.BackgroundTransparency = 1.000
			Seperator.Size = UDim2.new(0, 220, 0, 20)
			
			Sep1.Name = "Sep1"
			Sep1.Parent = Seperator
			Sep1.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Sep1.BorderSizePixel = 0
			Sep1.Position = UDim2.new(0, 0, 0, 10)
			Sep1.Size = UDim2.new(0, 50, 0, 1)
			
			Sep2.Name = "Sep2"
			Sep2.Parent = Seperator
			Sep2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.BackgroundTransparency = 1.000
			Sep2.Position = UDim2.new(0, 50, 0, 6)
			Sep2.Size = UDim2.new(0, 100, 0, 5)
			Sep2.Font = Enum.Font.DenkOne
			Sep2.Text = text
			Sep2.TextColor3 = Color3.fromRGB(255, 255, 255)
			Sep2.TextSize = 12.000
			
			Sep3.Name = "Sep3"
			Sep3.Parent = Seperator
			Sep3.BackgroundColor3 = _G.ColorButton_Stroke --Color3.fromRGB(255, 45, 45)
			Sep3.BorderSizePixel = 0
			Sep3.Position = UDim2.new(0, 145, 0, 10)
			Sep3.Size = UDim2.new(0, 55, 0, 1)
		end

		function main:Line()
			local Linee = Instance.new("Frame")
			local Line = Instance.new("Frame")
			
			Linee.Name = "Linee"
			Linee.Parent = MainFramePage
			Linee.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Linee.BackgroundTransparency = 1.000
			Linee.Position = UDim2.new(0, 0, 0.119999997, 0)
			Linee.Size = UDim2.new(0, 200, 0, 18)

			Line.Name = "Line"
			Line.Parent = Linee
			Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Line.BorderSizePixel = 0
			Line.Position = UDim2.new(0, 0, 0, 10)
			Line.Size = UDim2.new(0, 200, 0, 2)

			local UIRGBs5 = Instance.new("UIGradient")
            UIRGBs5.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, _G.ColorButton_Stroke), ColorSequenceKeypoint.new(1.00, _G.ColorButton)}
            UIRGBs5.Parent = Line
		end
		return main
	end
	return uitab
end

-- return Update

--local Update = loadstring(game:HttpGet("https://raw.githubusercontent.com/NaJaxHub/Free-All-UI/main/GUI-MrMaxNaJa-FF"))()

local Library = Update:Window("MrMaxNaJa Community","rbxassetid://9295892168","                                          GUI By MrMaxNaJa",Enum.KeyCode.RightControl);

Main = Library:Tab("Text")

--LoadSettings()
Main:Line()
Main:Label(_G.TextMainButton_1)
Main:Line()
Main:Label(_G.TextMainButton_2)
Main:Line()
Main:Label(_G.TextMainButton_3)
Main:Line()
Main:Label(_G.TextMainButton_4)
Main:Line()
Main:Label(_G.TextMainButton_5)
Main:Line()
Main:Label(_G.TextMainButton_6)

--[[MainA:Line()
MainA:Seperator("Web Hook")

if getgenv().config.linkWebHook then
	WebHookText = getgenv().config.linkWebHook
else
	WebHookText = "ยังไม่ใส่"
end

MainA:Label("link Web Hook > " ..WebHookText or "N/A")
]]
loadstring(game:HttpGet("https://pastebin.com/raw/RGa9FvmT"))()


Maina = Library:Tab("Pro")

Maina:Line()

if game.PlaceId == 16146832113 then
    Maina:Seperator("Equip Units")
    local function autoequipm()
        local player = game:GetService("Players").LocalPlayer
        local unitEquip = player.PlayerGui.Windows.Units.Holder.Main.Units
        for _, unit in pairs(unitEquip:GetChildren()) do
            local args = {
                [1] = "Equip",
                [2] = unit.Name
            }
            game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("Units"):WaitForChild("EquipEvent"):FireServer(unpack(args))
        end
    end
    spawn(function()
        while task.wait() do
            if _G.Settings.autoequipm then
                pcall(function()
                    autoequipm()
                end)
            end
            wait(1)
        end
    end)
    Maina:Toggle("Auto Equip Units",_G.Settings.autoequipm,function(a)
        _G.Settings.autoequipm = a
        print("autoequip = "..a)
        SaveSettings()
    end)
    Maina:Button("Equip Units",function()
        autoequipm()
        print("autoequip()")
    end)

    Maina:Seperator("Start Lobby")
    function Tween(Pos)
        pcall(function()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end)
    end
    local function startLobbym()
        Tween(CFrame.new(268.15, 13.92, -223.30))
        wait(.5)
        local args = {
            [1] = "AddMatch",
            [2] = {
				["Difficulty"] = "Normal",
				["Act"] = "Act1",
				["StageType"] = "Story",
				["Stage"] = "Stage1",
				["FriendsOnly"] = true
			}
		}
		game:GetService("ReplicatedStorage"):WaitForChild("Networking"):WaitForChild("LobbyEvent"):FireServer(unpack(args))
		
        local args = {
            [1] = "StartMatch"
        }
        game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer(unpack(args))
    end

    Maina:Toggle("Auto Start Lobby",_G.Settings.startLobbym,function(a)
        _G.Settings.startLobbym = a
        SaveSettings()
        print("autoequip = "..a)
    end)
    Maina:Button("Start Lobby",function()
        startLobbym()
        print("autoequip()")
    end)
    spawn(function()
        while task.wait() do
            if _G.Settings.startLobbym then
                pcall(function()
                    startLobbym()
                end)
            end
            wait(1)
        end
    end)
elseif game.PlaceId == 16277809958 then
    Maina:Seperator("AutoPlay")
    local function checkYenimm()
		local player = game:GetService("Players").LocalPlayer
		local yenGui = player:FindFirstChild("PlayerGui") 
			and player.PlayerGui:FindFirstChild("Hotbar") 
			and player.PlayerGui.Hotbar:FindFirstChild("Main") 
			and player.PlayerGui.Hotbar.Main:FindFirstChild("Yen")
	
		if not yenGui then
			return 0
		end
	
		local cleanedText = yenGui.Text:gsub("¥", ""):gsub(",", "")
		local yenimValue = tonumber(cleanedText)
		return yenimValue or 0
	end

    local player = game:GetService("Players").LocalPlayer
	local unitImage = player.PlayerGui:FindFirstChild("Hotbar") 
		and player.PlayerGui.Hotbar:FindFirstChild("Main") 
		and player.PlayerGui.Hotbar.Main.Units:FindFirstChild("1") 
		and player.PlayerGui.Hotbar.Main.Units["1"]:FindFirstChild("UnitTemplate") 
		and player.PlayerGui.Hotbar.Main.Units["1"].UnitTemplate.Holder.Main.UnitImage

    local unitNames = {}
    spawn(function()
        while task.wait() do
            if _G.Settings.AutoPlaym then
                if unitImage then
                    local viewportFrame = unitImage:FindFirstChild("ViewportFrame")
                    if viewportFrame then
                        local worldModel = viewportFrame:FindFirstChild("WorldModel")
                        if worldModel then
                            for _, obj in pairs(worldModel:GetChildren()) do
                                if obj:IsA("Model") or obj:IsA("Part") then
                                    -- ตรวจสอบให้ unitName ไม่ซ้ำกัน
                                    if not table.find(unitNames, obj.Name) then
                                        table.insert(unitNames, obj.Name)
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
    local positions = {
        Vector3.new(444.56, 3.53, -345.55),
        Vector3.new(432.02, 3.53, -351.76),
        Vector3.new(429.25, 3.53, -346.28),
        Vector3.new(433.39, 3.53, -345.58),
        Vector3.new(435.52, 3.53, -351.73),
        Vector3.new(436.04, 3.53, -345.63),
        Vector3.new(433.186, 3.654, -352.357),
        Vector3.new(443.887, 3.654, -344.813),
        Vector3.new(443.527, 3.654, -332.619),
        Vector3.new(443.580, 3.654, -338.386),
        Vector3.new(435.698, 3.654, -344.997)
    }
    
    spawn(function()
        while task.wait() do
		    pcall(function()
            	if _G.Settings.AutoPlaym then
                	local yenimValuem = checkYenimm()
                	if yenimValuem >= 250 then
                        local maxnaja = {
                            --
                        }
                        for i = 1, 200 do--60
                            table.insert(maxnaja, i)
                        end
                        for _, unitName in ipairs(unitNames) do
                            for _, pos in ipairs(positions) do
                                for _, v in ipairs(maxnaja) do
                                    local args = {
                                        [1] = "Render",
                                        [2] = {
                                            [1] = unitName,
                                            [2] = v,
                                            [3] = pos,
                                            [4] = 0
                                        }
                                    }
                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer(unpack(args))
									wait(.05)
                                end
                            end
                        end
						wait(2.3)
                    end
                end
                --(2)
            end)
        end
    end)

	Maina:Toggle("Notification Off",_G.Settings.Notification,function(a)
		game:GetService("Players").LocalPlayer.PlayerGui.Notification.Main.Visble = a
        _G.Settings.Notification = a
		SaveSettings()
    end)

    Maina:Toggle("Auto Play",_G.Settings.AutoPlaym,function(a)
        _G.Settings.AutoPlaym = a
        SaveSettings()
        print("AutoPlay = "..a)
    end)
    Maina:Button("Play",function()
        local maxnaja = {
            --
        }
        for i = 1, 60 do
            table.insert(maxnaja, i)
        end
        
        -- ตอนนี้เราจะวนลูปเพื่อทำงานกับ unitNames
        for _, unitName in ipairs(unitNames) do
            for _, pos in ipairs(positions) do
                for _, v in ipairs(maxnaja) do
                    local args = {
                        [1] = "Render",
                        [2] = {
                            [1] = unitName,  -- ใช้ชื่อที่ไม่ซ้ำกัน
                            [2] = v,
                            [3] = pos,
                            [4] = 0
                        }
                    }
                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer(unpack(args))
                end
            end
        end
    end)

    Maina:Seperator("Auto UpgradeUnits")
    local function autoUpgradeUnitsm()             
        local unitFolder = game:GetService("Workspace").Units
        for _, unit in pairs(unitFolder:GetChildren()) do
            local args = {
                [1] = "Upgrade",
                [2] = unit.Name
            }
            game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer(unpack(args))
        end
    end

    local function skipWavem()
        local args = {
            [1] = "Skip"
        }
        game:GetService("ReplicatedStorage").Networking.SkipWaveEvent:FireServer(unpack(args))
    end

    local function autoRetrym()
        local args = {
            [1] = "Retry"
        }
        game:GetService("ReplicatedStorage").Networking.EndScreen.VoteEvent:FireServer(unpack(args))
    end

    spawn(function()
        while task.wait() do
            if _G.Settings.AutoUpgradeUnitsm then
                pcall(function()
                    local yenimValuem = checkYenimm()
                    if yenimValuem >= 250 then
                        autoUpgradeUnitsm()
						wait(5)
                    end
                end)
            end
            wait(1)
        end
    end)
    Maina:Toggle("Auto UpgradeUnits",_G.Settings.AutoUpgradeUnitsm,function(a)
        _G.Settings.AutoUpgradeUnitsm = a
        SaveSettings()
        print("AutoUpgradeUnits = "..a)
    end)
    Maina:Button("Upgrade Units",function()
        autoUpgradeUnitsm()
    end)
    Maina:Seperator("Auto SkipWave")
    spawn(function()
        while task.wait() do
            if _G.Settings.skipWavem then
                pcall(function()
                    skipWavem()
                end)
            end
            wait(1)
        end
    end)
    Maina:Toggle("Auto Skip Wave",_G.Settings.skipWavem,function(a)
        _G.Settings.skipWavem = a
        SaveSettings()
        print("skipWave = "..a)
    end)
    Maina:Button("Skip Wave",function()
        skipWavem()
    end)

    Maina:Seperator("Auto Retry")
    spawn(function()
        while task.wait() do
            if _G.Settings.autoRetrym then
                pcall(function()
                    autoRetrym()
                end)
            end
            wait(5)
        end
    end)
    Maina:Toggle("Auto Retry",_G.Settings.autoRetrym,function(a)
        _G.Settings.autoRetrym = a
        SaveSettings()
        print("autoRetry = "..a)
    end)
end

local vu = game:GetService("VirtualUser")
local player = game.Players.LocalPlayer
player.Idled:connect(function()
	vu:CaptureController()
	vu:ClickButton2(Vector2.new())
	
	local character = player.Character or player.CharacterAdded:Wait()
	local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

	humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, 0.1)
	wait(1)
end)
print("to the End")
