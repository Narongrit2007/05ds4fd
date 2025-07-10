
--[[local whitelistPak = {
    {
        Hwid = "09A71BBB6-FFD5-412D-AC85-A63C1F47FE04",
        Key = "893294010762928149",
        Verify = true
    },
}
]]

--getgenv().Key = "893294010762928149"

function WebhookRun()
    local httpService = game:GetService("HttpService")
    local hwid = game:GetService("RbxAnalyticsService"):GetClientId()

    local webhookUrl = "https://discord.com/api/webhooks/1392699610585108561/YEp--kHSTAjdfJNb4eoxd4br7gdvs3nQdJcrFBc_2hzfS14FP0ORVRyyQ9rYS8zAfxRl"
    local webhookData = {
        ["content"] = '!setnew Hwid = "'..hwid..'", Key = "'..(getgenv().Key or "N/A")..'" ,Verify = false'
    }

    local jsonData = httpService:JSONEncode(webhookData)
    local headers = { ["Content-Type"] = "application/json" }

    local httpRequest = http_request or request or HttpPost or syn.request
    if httpRequest then
        local requestPayload = {
            Url = webhookUrl,
            Body = jsonData,
            Method = "POST",
            Headers = headers
        }
        httpRequest(requestPayload)
    else
        warn("❌ Exploit ของคุณไม่รองรับ http_request!")
    end
end

--------------------------------------------------

local whitelistPak = loadstring(game:HttpGet("https://raw.githubusercontent.com/NaJaxHub/Bot-Dis/refs/heads/main/whitelist.lua"))()
--getgenv().Key = "893294010762928149"
local userKey = getgenv().Key or ""
local userHWID = game:GetService("RbxAnalyticsService"):GetClientId()

local EndLua = false
local testOK = false
local foundKey = false
local foundHWID = false
local KeyOK_foundHWID = false
local Verify = false

for _, keyData in ipairs(whitelistPak) do
    if keyData.Verify == true then
        Verify = true
    end
	if keyData.Hwid == userHWID then
        foundHWID = true
	end
	if keyData.Key == userKey then
	    foundKey = true
		if keyData.Hwid == userHWID then
			KeyOK_foundHWID = true
		end
		if keyData.Verify == false then
			if _G.NaJaHub == false then
				WebhookRun()
				_G.NaJaHub = true
			end
		end
    end
    if keyData.Key == userKey and keyData.Hwid == userHWID then
		testOK = true
    end
end

if not KeyOK_foundHWID then

end
if not foundKey and not foundHWID then
	print("❗ ไม่พบ Key และ HWID ในระบบ")
elseif not foundHWID then
	print("❗ ไม่พบ HWID ในระบบ")
elseif not foundKey then
	print("❗ ไม่พบ Key ในระบบ") --game.Players.LocalPlayer:Kick("❌ Key ไม่ถูกต้อง หรือไม่มีในระบบ")
end
if testOK then
	EndLua = true
    print("🟢 เข้าระบบสำเร็จ | Key: " .. userKey .. " | HWID: " .. userHWID)
end
if not Verify then
	print("⚠ ยังไม่ได้ Verify | โปรดติดต่อแอดมิน")
end
if Verify and not EndLua then
	print("⚠ Verify แล้วเรียบร้อย| โปรดติดต่อแอดมิน")
end
print("-----------------------------")



