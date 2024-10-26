--getgenv().K = "Pak1"
function LoadSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfolder("Key test") then
			makefolder("Key test")
		end
		if not isfolder("Key test/MrMaxNaJa/") then
			makefolder("Key test/MrMaxNaJa/")
		end
		if not isfile("Key test/MrMaxNaJa/?.json") then-- .. game.Players.LocalPlayer.Name .. ".json") then
			writefile("Key test/MrMaxNaJa/?.json", game:GetService("HttpService"):JSONEncode(_G.Settings))-- .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(_G.Settings))
		else
			local L_54_ = game:GetService("HttpService"):JSONDecode(readfile("Key test/MrMaxNaJa/?.json")) --.. game.Players.LocalPlayer.Name .. ".json"))
			for L_55_forvar0, L_56_forvar1 in pairs(L_54_) do
				_G.Settings[L_55_forvar0] = L_56_forvar1
			end
		end
	else
		return warn("Status : Undetected Executor")
	end
end

function SaveSettings()
	if readfile and writefile and isfile and isfolder then
		if not isfile("Key test/MrMaxNaJa/?.json") then-- .. game.Players.LocalPlayer.Name .. ".json") then
			LoadSettings()
		else
			local L_57_ = game:GetService("HttpService"):JSONDecode(readfile("Key test/MrMaxNaJa/?.json")) --.. game.Players.LocalPlayer.Name .. ".json"))
			local L_58_ = {}
			for L_59_forvar0, L_60_forvar1 in pairs(_G.Settings) do
				L_58_[L_59_forvar0] = L_60_forvar1
			end
			writefile("Key test/MrMaxNaJa/?.json", game:GetService("HttpService"):JSONEncode(L_58_))--" .. game.Players.LocalPlayer.Name .. ".json", game:GetService("HttpService"):JSONEncode(L_58_))
		end
	else
		return warn("Status : Undetected Executor")
	end
end

local ClientId = game:GetService("RbxAnalyticsService"):GetClientId() local whitelist = string.split((ClientId), '-') local Hxven = whitelist[5] _G.Hxven = whitelist[5]
_G.Settings = {
    --OFF = false,
    --Hxven = Hxven, --B1786EEC0CF8
    ClientId = ClientId --game:GetService("RbxAnalyticsService"):GetClientId() --3C716E0A-F381-42CB-A634-B1786EEC0CF8
}
SaveSettings()
LoadSettings()

local whitelistPak = {
["Pak1"] = _G.Hxven,
["Pak2"] = _G.Hxven,
["Pak3"] = _G.Hxven,
["Pak4"] = _G.Hxven,
["Pak5"] = _G.Hxven,
}

local whitelist = {
[_G.Hxven] = "1",
[_G.Hxven] = "2",
--[_G.Hxven] = "3C716E0A-F381-42CB-A634-B1786EEC0CF8",
}

if _G.antLoop == true then
    _G.antLoop = true
else
    if whitelistPak[_G.Hxven] == _G.Settings.K then print("ผ่านขั้นตอนที่ 1 ในการพัก [1]")
        if whitelist[_G.Hxven] == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("ผ่านขั้นตอนที่ 2 ในการเช็ค HWID [1]")
            _G.antLoop = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			print("รันสคริป โอเย้")
        elseif _G.Settings.ClientId == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("แก้ไขเรียบร้อย")
            _G.antLoop = true
            print("ผ่านขั้นตอนที่ 2 ในการเช็ค HWID [2]")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			print("รันสคริป โอเย้")
        else
            print("ไม่ผ่านขั้นตอนที่ 2 ในการเช็ค HWID")
            wait(1)
            print("มึงเป็นใคร") print("ติดต่อแอดมินด่วน")
        end
        if _G.Settings.OFF == false then
            _G.Settings.Hxven = _G.Hxven
            _G.Settings.ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
            _G.Settings.K = getgenv().K
            _G.Settings.OFF = true
            SaveSettings()
        end
	elseif whitelistPak[_G.Hxven] == getgenv().K then print("ผ่านขั้นตอนที่ 1 ในการพัก [2]")
        if whitelist[_G.Hxven] == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("ผ่านขั้นตอนที่ 2 ในการเช็ค HWID [1]")
            _G.antLoop = true
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			print("รันสคริป โอเย้")
        elseif _G.Settings.ClientId == game:GetService("RbxAnalyticsService"):GetClientId() then
            print("แก้ไขเรียบร้อย")
            _G.antLoop = true
            print("ผ่านขั้นตอนที่ 2 ในการเช็ค HWID [2]")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			print("รันสคริป โอเย้")
        else
            print("ไม่ผ่านขั้นตอนที่ 2 ในการเช็ค HWID")
            wait(1)
            print("มึงเป็นใคร") print("ติดต่อแอดมินด่วน")
        end
        if _G.Settings.OFF == false then
            _G.Settings.Hxven = _G.Hxven
            _G.Settings.ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
            _G.Settings.K = getgenv().K
            _G.Settings.OFF = true
            SaveSettings()
        end
    else print("ไม่ผ่านขั้นตอนที่ 1 ไม่พบ Key ในระบบ กำลังเช็คให้ละเอียด")
        if getgenv().K == _G.Settings.K then
            _G.Settings.OFF = true
            SaveSettings()
            print("ติดต่อแอดมิน")
		else
			getgenv().K = _G.Settings.K
        end
        if _G.Settings.OFF == false then
            _G.Settings.Hxven = _G.Hxven
            _G.Settings.ClientId = game:GetService("RbxAnalyticsService"):GetClientId()
            _G.Settings.K = getgenv().K
            _G.Settings.OFF = true
            SaveSettings()
            print("แก้ไขเรียบร้อย ลงรันใหม่อีกครั้ง")
        end
    end
end

if _G.Settings.OFF == false then
	local url = "https://discordapp.com/api/webhooks/1299748672434868224/w6B9RODJLf1jCoN0Tzbziy8FrPfMzDgq44q9q3JjwppYBHc7BYsVfPazcmgVUF-OZAq8" -- ur webhook url
	local data = { 
		["username"] = 'MrMaxNaJa', -- Webhook name here
		["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png?ex=663ebc1b&is=663d6a9b&hm=31495ba22b1bd1219096d6c3283bcaa7c91ca1e58fa7201b97def38e2d40e5b4&", -- ur discord logo url
		["embeds"] = {
			{
				["color"] = tonumber(0x00ff00), -- color id
				["type"] = "rich",
				["fields"] =  {
					{
						["name"] = "\n",
						["value"] = '**whitelist Chack ✅**\n\n**ชื่อในเกม : '..game.Players.LocalPlayer.Name..'**',
					},
					{
						["name"] = '**คีย์ผู้ใช้งาน**',
						["value"] = '```lua\n["'..(getgenv().K or "N/A")..'"]\n```\n',
					},
					{
						["name"] = '**Hwidผู้ใช้งาน**',
						["value"] = '```lua\n["'..(ClientId or "N/A")..'"]\n```',
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
