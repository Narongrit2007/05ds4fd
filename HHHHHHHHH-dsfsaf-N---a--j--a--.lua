
--getgenv().Key = "Pak1"



local Notification = loadstring(game:HttpGet("https://pastebin.com/raw/Z0dG8rBU", true))()
print("Notification")


getgenv().Key = getgenv().Key

print(getgenv().Key)
print("whitelist Chack..30%")
local ClientId = game:GetService("RbxAnalyticsService"):GetClientId() --local whitelist = string.split((ClientId), '-') local Hxven = whitelist[5] _G.Hxven = whitelist[5]

print("whitelist Chack..58%")
function GreenChack_of_discord()
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
						["name"] = '**Whitelist Chack By MrMaxNaJa สถานะ : '..(_G.ChackWhitelist_1 or "N/A").. '**',
						["value"] = '**PlayerName : '..(game.Players.LocalPlayer.Name or "N/A")..'**',--'Chack Hwid or Key '..(_G.ChackWhitelist_2 or "N/A"),
					},
					{
						["name"] = '**คีย์ Pak ของผู้ใช้งาน**',
						["value"] = '```lua\n["'..(getgenv().Key  or "N/A")..'"]\n```\n',
					},
					{
						["name"] = '**Hwidผู้ใช้งาน**',
						["value"] = '```lua\n"'..(game:GetService("RbxAnalyticsService"):GetClientId() or "N/A")..'"\n```',
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
function Chack_of_discord()
	local url = "https://discord.com/api/webhooks/1300455498298036257/j5hJNJzeJnWwj5uRAXX2_oQVKH2JhYd3oesbmwWMF68PlaDUretmcZR-ii2U6CL3jnco"
	local url2 = "https://discord.com/api/webhooks/1310131419200094270/lAYi9cIC5fs-lqiFBcs_2Yvpcq-MbKr9YDDeXorvB3fjnKh5XCTTaLMtVzJdzz14dNI1" --ให้ทุกคนเห็น
	local data = {
		["username"] = 'MrMaxNaJa',
		["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png?ex=663ebc1b&is=663d6a9b&hm=31495ba22b1bd1219096d6c3283bcaa7c91ca1e58fa7201b97def38e2d40e5b4&", -- ur discord logo url
		["embeds"] = {
			{
				["color"] = tonumber(0x00ff00), -- color id
				["type"] = "rich",
				["fields"] =  {
					{
						["name"] = '**Whitelist Chack By MrMaxNaJa สถานะ : '..(_G.ChackWhitelist_1 or "N/A").. '**',
						["value"] = '**PlayerName : '..(game.Players.LocalPlayer.Name or "N/A")..'**',--'Chack Hwid or Key '..(_G.ChackWhitelist_2 or "N/A"),
					},
					{
						["name"] = '**คีย์ Pak ของผู้ใช้งาน**',
						["value"] = '```lua\n["'..(getgenv().Key  or "N/A")..'"]\n```\n',
					},
					{
						["name"] = '**Hwidผู้ใช้งาน**',
						["value"] = '```lua\n"'..(game:GetService("RbxAnalyticsService"):GetClientId() or "N/A")..'"\n```',
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
	local data = {
		["username"] = 'MrMaxNaJa',
		["avatar_url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png?ex=663ebc1b&is=663d6a9b&hm=31495ba22b1bd1219096d6c3283bcaa7c91ca1e58fa7201b97def38e2d40e5b4&", -- ur discord logo url
		["embeds"] = {
			{
				["color"] = tonumber(0x00ff00), -- color id
				["type"] = "rich",
				["fields"] =  {
					{
						["name"] = '**Whitelist Chack By MrMaxNaJa สถานะ : '..(_G.ChackWhitelist_1 or "N/A").. '**',
						["value"] = '**PlayerName : '..(game.Players.LocalPlayer.Name or "N/A")..'**',--'Chack Hwid or Key '..(_G.ChackWhitelist_2 or "N/A"),
					},
					{
						["name"] = '**Hwidผู้ใช้งาน**',
						["value"] = '```lua\n"'..(game:GetService("RbxAnalyticsService"):GetClientId() or "N/A")..'"\n```',
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
	local abcdef = {Url = url2, Body = newdata, Method = "POST", Headers = headers}
	request(abcdef)
end

print("whitelist Chack..60%")

local whitelist7 = { --คีย์ ไม่ถาวร

"f95a0b9a-1373-4755-a64b-0eeb0d32c5d6", --มือถือ Max
--"3C716E0A-F381-42CB-A634-B1786EEC0CF8", --PC Wx
--"53FF23FF-8908-4496-8B86-147B02015C9D", --PC MAX
}
local whitelist = { --คีย์ ถาวร
--"f95a0b9a-1373-4755-a64b-0eeb0d32c5d6", --มือถือ Max
--"3C716E0A-F381-42CB-A634-B1786EEC0CF8", --PC Wx
"53FF23FF-8908-4496-8B86-147B02015C9D", --PC MAX
}
print("whitelist Chack..64%")

-- กำหนดตาราง Key พร้อมข้อมูลของ Key แต่ละตัว
local whitelistPak = {--เปลี่ยน Key1 ให้หมดอายุในวันที่ 29 ตุลาคม 2024 เวลา 23:59
    { Key = "Pak1", ExpiryDate = os.time{year=2024, month=11, day=25, hour=24, min=00}, Permanent = false }, -- Key แบบหมดอายุ

    { Key = "Pak2", ExpiryDate = os.time{year=9999, month=9999, day=9999, hour=9999, min=9999}, Permanent = true } -- Key แบบถาวร
}

--{ Key = "Pak2", ExpiryDate = 0, Permanent = true } -- Key แบบถาวร
--}

-- ฟังก์ชันตรวจสอบว่า Key หมดอายุหรือยัง
local function isKeyExpired(whitelistPak)
    return not whitelistPak.Permanent and os.time() > whitelistPak.ExpiryDate
end
--_G.Antloopm = false
--_G.antLoop = false
if _G.antLoop == true then
    _G.antLoop = true
else
	for Lp,g7 in ipairs(whitelist7) do --print(g7)
		if g7 == game:GetService("RbxAnalyticsService"):GetClientId() then 
			print("พบคีย์ที่ 2") _G.antLoop = true _G.Antloopm = true _G.ChackWhitelist_1 = " 🟢 | Key เซ่า | Key ใช้งานได้ (มีวันหมดอายุ)"
			wait(.12)
			GreenChack_of_discord() print("Key ใช้งานได้ (มีวันหมดอายุ)")
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			Notification.new("success", "Success | 🟢 Key มีวันหมดอายุ Hwid ถูกต้อง","สคริปต์ Hack By MrMaxNaJa")
		end
	end
	wait(.12)
 	for p,g in ipairs(whitelist) do --print(g)
		if g == game:GetService("RbxAnalyticsService"):GetClientId() then 
			print("พบ Hwid") _G.antLoop = true _G.Antloopm = true _G.ChackWhitelist_1 = "🟢 | Key ถาวร พบ Hwid แล้ว"  _G.ChackWhitelist_2 = "🟢"
			GreenChack_of_discord()
			loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
			Notification.new("success", "Success | 🟢 Key ถาวร Hwid ถูกต้อง","สคริปต์ Hack By MrMaxNaJa")
		end
	end
	wait(.12)
	if _G.Antloopm == true then
		print("_G.Antloopm = true")
	else
		for i,v in ipairs(whitelistPak) do --print(v)
		print("ระบบ Hwid เริ่มทำงาน")
			wait(.12)
			if v.Key == getgenv().Key  then --print(v.Key)
				wait(.12)
				if isKeyExpired(v) then--เช็คอายุ Key
					print("Key หมดอายุแล้ว กรุณาใส่ Key ใหม่")
					wait(.5)
					game.Players.LocalPlayer:kick("Key หมดอายุแล้ว กรุณาใส่ Key ใหม่")
					warn("🔴 | พบผู้มีปัญหาชื่อ : "..(game.Players.LocalPlayer.Name or "N\A").."Key หมดอายุแล้ว กรุณาใส่ Key ใหม่")
					wait(.1)
					return false
				else wait(.12)
					if v.Permanent then
						print("Key ถาวร")
						print("พบคีย์ที่ 1") _G.antLoop = true _G.ChackWhitelist_1 = "🟡 | พบ Key แอดมินควร Add HWID !(แอดมิน add HWID ด่วน) Key ใช้งานได้ (ถาวร)"
						warn("🟡 | พบผู้มีปัญหาชื่อ : "..(game.Players.LocalPlayer.Name or "N\A").."DM หาแอดมินด่วน")
						wait(.1) Chack_of_discord()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
						Notification.new("warning", "🟡 คัดลอก Key ใหม่แล้ว โปรด DM หา Admin Key ถาวร ยังไม่พบ Hwid",game:GetService("RbxAnalyticsService"):GetClientId()) -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
						setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
					else
						print("Key ไม่ถาวร")
						print("พบคีย์ที่ 2") _G.antLoop = true _G.ChackWhitelist_1 = "🟡 | Key เซ่า | ควรแจ้งให้ ADMIN Add HWID !(แอดมิน add HWID ด่วน) Key ใช้งานได้ (มีวันหมดอายุ)"
						warn("🟡 | พบผู้มีปัญหาชื่อ : "..(game.Players.LocalPlayer.Name or "N\A").."DM หาแอดมินด่วน")
						wait(.1) Chack_of_discord()
						loadstring(game:HttpGet("https://raw.githubusercontent.com/Narongrit2007/05ds4fd/refs/heads/main/asdfcxvdfdfs-n-a-j-a.lua"))()
						Notification.new("warning", "🟡 คัดลอก Key ใหม่แล้ว โปรด DM หา Admin Key เซ่า ยังไม่พบ Hwid",game:GetService("RbxAnalyticsService"):GetClientId()) -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
						setclipboard(game:GetService("RbxAnalyticsService"):GetClientId())
					end
					return true
				end
			else wait(.12)
				--if _G.Antloopm == true then
				--	print("_G.Antloopm = true")
				--else
					_G.ChackWhitelist_1 = "🔴 | พบบุคคลอันตราย (คนไม่มี Key และ HWID)"
					Chack_of_discord()
					warn("ไม่พบคีย์") wait(.5) game.Players.LocalPlayer:kick("DM to supermaxnaja | ไปหาซื้อ key เถอะ ไม่กี่บาทหรอก")
					_G.Antloopm = true
					Notification.new("error", "🔴 Error", "") -- Args(<string> Type, <string> Heading, <string> Body, <boolean?> AutoRemoveNotif, <number?> AutoRemoveTime, <function?> OnCloseFunction)
				--end
			end
		end
	end
end 

print("whitelist Chack = "..(_G.ChackWhitelist_3 or "N/A"))
print("whitelist By MrMaxNaJa")
print("whitelist Chack.OK")
