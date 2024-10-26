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

SaveSettings()
LoadSettings()

local whitelistPak = {
"Pak1",
"Pak2",
}

local whitelist = {
"1",
"2",
--"3C716E0A-F381-42CB-A634-B1786EEC0CF8",
}

if _G.antLoop == true then
    _G.antLoop = true
else
    for i,v in pairs(whitelistPak) do
        for p,g in pairs(whitelist) do
            print("ระบบ Hwid เริ่มทำงาน")
            if v == getgenv().K then
                print("พบคีย์ที่ 1")
                if _G.SaveSettings.OFFo == true then
                    _G.SaveSettings.OFFo = true
                  
                    warn("ไม่บันทึกซ้ำ")
                else
                    _G.SaveSettings.Hxven = Hxven
                    _G.SaveSettings.ClientId = ClientId
                    wait(.1)
                    _G.SaveSettings.OFFo = true
                    SaveSettings()
                    print("บันทึก Hwid")
                end
                _G.antLoop = true
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
            elseif g == ClientId then
    	        print("พบ Hwid")
                _G.antLoop = true
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
        	else
        	    warn("ไม่พบคีย์")
        	end
        end
    end
end

if _G.Settings.OFFo == true then
    print("By MrMaxNaJa")
else
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
