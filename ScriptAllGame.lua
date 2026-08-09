-- Script Prank Realistik Error Code 600
-- Letakkan di LocalScript (StarterPlayerScripts atau StarterGui)

local Players = game:GetService("Players")
local localPlayer = Players.LocalPlayer

-- Format teks agar menyerupai tampilan banned sistem keamanan Roblox
local pesanBanPalsu = 
    "\nYour account has been moderated due to unexpected client behavior." ..
    "\n\nReason: Exploiting / Unauthorized Third-Party Software" ..
    "\n\nError Code: 600" ..
    "\nIncident ID: #" .. math.random(100000000, 999999999) .. 
    "\n\nPlease rejoin or visit the Roblox website for more information."

-- Jeda beberapa detik sebelum pemain di-kick agar mereka sempat kaget
task.wait(3)

-- Melakukan kick (pemain hanya keluar dari map/server, tidak benar-benar kena banned permanen)
localPlayer:Kick(pesanBanPalsu)
