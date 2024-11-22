print("whitelist Chack...1%")
--getgenv().Key = "Pak1"
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
print("whitelist Chack..30%")
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId() local whitelist = string.split((ClientId), '-') local Hxven = whitelist[5] _G.Hxven = whitelist[5]

SaveSettings()
LoadSettings()
print("whitelist Chack..60%")
local whitelistPak = {
	"Pak1",
	"Pak2"
}

local whitelist = {
"f95a0b9a-1373-4755-a64b-0eeb0d32c5d6", --มือถือ Max
"3C716E0A-F381-42CB-A634-B1786EEC0CF8", --PC Wx
"e19cc5ad-df97-4c06-b81c-327ce7daf342", --มือถือ ใน pc wx
}
print("whitelist Chack..64%")
function maxwx_kasodljdfincxkvhxzcuvhfdusghughcjxzvbkczjkfgdyasid()
	local url = "https://discordapp.com/api/webhooks/1299748672434868224/w6B9RODJLf1jCoN0Tzbziy8FrPfMzDgq44q9q3JjwppYBHc7BYsVfPazcmgVUF-OZAq8"
	local data = {
		["username"] = 'MrMaxNaJa',
		["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png?ex=663ebc1b&is=663d6a9b&hm=31495ba22b1bd1219096d6c3283bcaa7c91ca1e58fa7201b97def38e2d40e5b4&", -- ur discord logo url
		["embeds"] = {
			{
				["color"] = tonumber(0x00ff00), -- color id
				["type"] = "rich",
				["fields"] =  {
					{
						["name"] = '**whitelist Chack By MrMaxNaJa สถานะ : '..(_G.ChackWhitelist_2 or "N/A")..'**',
						["value"] = '**Chack whitelist (Hwid or Key) = '.._G.ChackWhitelist_2..'\n'..(_G.ChackWhitelist_1 or "N/A")..'**',
					},
					{
						["name"] = '**คีย์ Pak ของผู้ใช้งาน**',
						["value"] = '```lua\n["'..(getgenv().Key or "N/A")..'"]\n```\n',
					},
					{
						["name"] = '**Hwidผู้ใช้งาน**',
						["value"] = '```lua\n"'..(ClientId or "N/A")..'"\n```',
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
if _G.antLoop == true then
    _G.antLoop = true
else
    for i,v in pairs(whitelistPak) do
        for p,g in pairs(whitelist) do
            print("ระบบ Hwid เริ่มทำงาน")
			if g == ClientId then _G.ChackWhitelist_3 = "🟢 | พบ Hwid แล้ว whitelist (ผ่าน)" 
				print("พบ Hwid") _G.antLoop = true _G.ChackWhitelist_1 = "🟢 | พบ Hwid แล้ว whitelist (ผ่าน)" _G.ChackWhitelist_2 = "🟢"
				maxwx_kasodljdfincxkvhxzcuvhfdusghughcjxzvbkczjkfgdyasid()
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			elseif v == getgenv().Key then _G.ChackWhitelist_3 = "🟡 | พบ Key ควรแจ้งให้ ADMIN Add HWID !(แอดมิน add HWID ด่วน)" _G.ChackWhitelist_2 = "🟡"
				print("พบคีย์ที่ 1") _G.antLoop = true _G.ChackWhitelist_1 = "🟡 | พบ Key แอดมินควร Add HWID !(แอดมิน add HWID ด่วน)"
				local url = "https://discord.com/api/webhooks/1300455498298036257/j5hJNJzeJnWwj5uRAXX2_oQVKH2JhYd3oesbmwWMF68PlaDUretmcZR-ii2U6CL3jnco"
				local data = {
					["username"] = 'MrMaxNaJa',
					["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png?ex=663ebc1b&is=663d6a9b&hm=31495ba22b1bd1219096d6c3283bcaa7c91ca1e58fa7201b97def38e2d40e5b4&", -- ur discord logo url
					["embeds"] = {
						{
							["color"] = tonumber(0x00ff00), -- color id
							["type"] = "rich",
							["fields"] =  {
								{
									["name"] = '**whitelist Chack By MrMaxNaJa สถานะ : '..(_G.ChackWhitelist_2 or "N/A")..'**',
									["value"] = '**Chack whitelist (Hwid or Key) = '.._G.ChackWhitelist_2..'\n'..(_G.ChackWhitelist_1 or "N/A")..'**',
								},
								{
									["name"] = '**คีย์ Pak ของผู้ใช้งาน**',
									["value"] = '```lua\n["'..(getgenv().Key or "N/A")..'"]\n```\n',
								},
								{
									["name"] = '**Hwidผู้ใช้งาน**',
									["value"] = '```lua\n"'..(ClientId or "N/A")..'"\n```',
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
				maxwx_kasodljdfincxkvhxzcuvhfdusghughcjxzvbkczjkfgdyasid()
        		loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
        	else _G.ChackWhitelist_3 = "🔴 | พบบุคคลอันตราย (คนไม่มี Key และ HWID)" _G.ChackWhitelist_2 = "🔴"
				_G.ChackWhitelist_1 = "🔴 | พบบุคคลอันตราย (คนไม่มี Key และ HWID)"
				maxwx_kasodljdfincxkvhxzcuvhfdusghughcjxzvbkczjkfgdyasid()
        	    warn("ไม่พบคีย์")
        	end
        end
    end
end wait(.1)
print("whitelist Chack = "..(_G.ChackWhitelist_3 or "N/A"))
print("whitelist Chack..90%")


print("whitelist By MrMaxNaJa")
print("whitelist Chack.100%")


print("whitelist Chack.OK")

