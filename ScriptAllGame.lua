-- Script Prank Realistik Error Code 600
-- Letakkan di LocalScript (StarterPlayerScripts atau StarterGui)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Format teks agar menyerupai tampilan banned sistem keamanan Roblox
local pesanBanPalsu = 
    "\nYour account has been moderated due to unexpected client behavior." ..
    "\n\nReason: Exploiting / Unauthorized Third-Party Software" ..
    "\nModerator Note: Detected modified code or exploit injection." ..
    "\n\nError Code: 600" ..
    "\nIncident ID: #" .. math.random(100000000, 999999999) .. 
    "\n\nPlease rejoin or visit the Roblox website for more information."

-- Jeda beberapa detik sebelum pemain di-kick agar mereka sempat kaget
task.wait(3)

-- Melakukan kick (pemain hanya keluar dari map/server, tidak benar-benar kena banned permanen)
localPlayer:Kick(pesanBanPalsu)
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

