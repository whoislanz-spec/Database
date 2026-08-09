local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "Zxc X Sasaki Hub [Private]", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "ZxcSasakiConfig",
    IntroText = "Loading Zxc X Sasaki..."
})

local MainTab = Window:MakeTab({
    Name = "Main Exploit",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local TrollTab = Window:MakeTab({
    Name = "Troll Features",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

MainTab:AddToggle({
    Name = "Auto Win / Infinite Yield",
    Default = false,
    Callback = function(Value)
        print("Auto Win: " .. tostring(Value))
    end
})

MainTab:AddSlider({
    Name = "Speed Hack",
    Min = 16,
    Max = 300,
    Default = 16,
    Color = Color3.fromRGB(0, 255, 255),
    Increment = 5,
    ValueName = "Speed",
    Callback = function(Value)
        print("Speed set to: " .. Value)
    end
})

TrollTab:AddButton({
    Name = "Bypass Anti-Cheat (Client)",
    Callback = function()
        OrionLib:MakeNotification({
            Title = "Zxc X Sasaki",
            Content = "Anti-Cheat successfully bypassed!",
            Image = "rbxassetid://4483345998",
            Time = 2
        })
    end
})

OrionLib:Init()

task.wait(4)

OrionLib:Destroy()

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local pesanBanPalsu = 
    "\nYour account has been moderated due to unexpected client behavior." ..
    "\n\nReason: Exploiting / Unauthorized Third-Party Software" ..
    "\nModerator Note: Detected modified code or exploit injection." ..
    "\n\nError Code: 600" ..
    "\nIncident ID: #" .. math.random(100000000, 999999999) .. 
    "\n\nPlease rejoin or visit the Roblox website for more information."

localPlayer:Kick(pesanBanPalsu)
    end
})

OrionLib:Init()

task.wait(4)

OrionLib:Destroy()

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

local pesanBanPalsu = 
    "\nYour account has been moderated due to unexpected client behavior." ..
    "\n\nReason: Exploiting / Unauthorized Third-Party Software" ..
    "\nModerator Note: Detected modified code or exploit injection." ..
    "\n\nError Code: 600" ..
    "\nIncident ID: #" .. math.random(100000000, 999999999) .. 
    "\n\nPlease rejoin or visit the Roblox website for more information."

localPlayer:Kick(pesanBanPalsu)

