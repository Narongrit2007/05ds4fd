
local httpService = game:GetService("HttpService")
-- Webhook Setup
local webhookUrl = "https://discord.com/api/webhooks/1355967580908556359/xep9c8CR16JS2OcCJuQEGluvz17aL-UUx7Ns-hKFViZt0LbdAYOrisyWBseQ7g68vrYW"
local webhookData = {
    ["username"] = "MrMaxNaJa",
    ["avatar_url"] = "https://media.discordapp.net/attachments/952778386764345364/962959671860277258/unknown.png?ex=67d66d14&is=67d51b94&hm=5125f4fbd1dcb605e14ef56fbc790c3606cc5e2bd6976972dfc4685b3badf238&=&format=webp&quality=lossless",--"https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png",
	["embeds"] = {
        {
            ["title"] = "✅ **ข้อมูลลูกค้าที่รันสคริปต์**",
            ["description"] = "👤 **UserPlayer : ".. game.Players.LocalPlayer.Name .. "\n```🎚️ : "..(_G.CKey or "N/A").." : " ..(getgenv().Key or "N/A").."```**" ,
            ["color"] = 0xff0000,
            ["type"] = "rich",
            ["fields"] = {
                { ["name"] = "📌 **HWID**", ["value"] = "``` "..game:GetService("RbxAnalyticsService"):GetClientId().." ```", ["inline"] = true }
            },
			--["thumbnail"] = { ["url"] = avatarUrl}, -- ใส่รูปโปรไฟล์ Roblox ใน thumbnail

        	["thumbnail"] = { ["url"] = "https://cdn.discordapp.com/attachments/948603231192363058/1088077196997955704/Untitled-1_copy.png"},--"https://media.discordapp.net/attachments/952778386764345364/962959671860277258/unknown.png?ex=67d66d14&is=67d51b94&hm=5125f4fbd1dcb605e14ef56fbc790c3606cc5e2bd6976972dfc4685b3badf238&=&format=webp&quality=lossless" },
            ["footer"] = { ["text"] = "📺 YouTube: MrMaxNaJa  •  Web hook by MrMaxNaJa 🔥" },
            ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%SZ") -- Fixed timestamp format
        }
    }
}

local jsonData = httpService:JSONEncode(webhookData)
local headers = { ["Content-Type"] = "application/json" }

local httpRequest = http_request or request or HttpPost or syn.request
local requestPayload = { Url = webhookUrl, Body = jsonData, Method = "POST", Headers = headers }
httpRequest(requestPayload)
