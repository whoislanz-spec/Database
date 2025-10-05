-- LocalScript (letakkan di StarterPlayerScripts)
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local HttpService = game:GetService("HttpService")

local player = Players.LocalPlayer

-- UI
local screen = Instance.new("ScreenGui")
screen.Name = "BlackScriptGUI"
screen.ResetOnSpawn = false
screen.Parent = player:WaitForChild("PlayerGui")

local main = Instance.new("Frame")
main.Name = "Main"
main.Parent = screen
main.AnchorPoint = Vector2.new(0.5,0.5)
main.Position = UDim2.new(0.5,0.5,0.5,0)
main.Size = UDim2.new(0,400,0,260)
main.BackgroundColor3 = Color3.fromRGB(10,10,10)
main.BorderSizePixel = 0
main.Visible = false

local title = Instance.new("TextLabel")
title.Parent = main
title.Size = UDim2.new(1,-20,0,28)
title.Position = UDim2.new(0,10,0,8)
title.BackgroundTransparency = 1
title.Text = "Black Script GUI"
title.TextColor3 = Color3.new(1,1,1)
title.TextScaled = true
title.Font = Enum.Font.GothamSemibold
title.TextXAlignment = Enum.TextXAlignment.Left

-- Fly URL
local flyLabel = Instance.new("TextLabel")
flyLabel.Parent = main
flyLabel.Size = UDim2.new(0,90,0,20)
flyLabel.Position = UDim2.new(0,10,0,44)
flyLabel.BackgroundTransparency = 1
flyLabel.Text = "Fly Raw URL:"
flyLabel.TextColor3 = Color3.new(1,1,1)
flyLabel.Font = Enum.Font.Gotham
flyLabel.TextSize = 14
flyLabel.TextXAlignment = Enum.TextXAlignment.Left

local flyBox = Instance.new("TextBox")
flyBox.Parent = main
flyBox.Size = UDim2.new(1,-120,0,28)
flyBox.Position = UDim2.new(0,110,0,40)
flyBox.ClearTextOnFocus = false
flyBox.BackgroundColor3 = Color3.fromRGB(20,20,20)
flyBox.TextColor3 = Color3.new(1,1,1)
flyBox.Text = ""
flyBox.Font = Enum.Font.Gotham
flyBox.PlaceholderText = "loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Fly-GUI-54284"))()"

local flyLoadBtn = Instance.new("TextButton")
flyLoadBtn.Parent = main
flyLoadBtn.Size = UDim2.new(0,100,0,28)
flyLoadBtn.Position = UDim2.new(1,-105,0,40)
flyLoadBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
flyLoadBtn.BorderSizePixel = 0
flyLoadBtn.TextColor3 = Color3.new(1,1,1)
flyLoadBtn.Text = "Load Fly"
flyLoadBtn.Font = Enum.Font.Gotham

-- Speed URL
local spdLabel = Instance.new("TextLabel")
spdLabel.Parent = main
spdLabel.Size = UDim2.new(0,90,0,20)
spdLabel.Position = UDim2.new(0,10,0,80)
spdLabel.BackgroundTransparency = 1
spdLabel.Text = "Speed Raw URL:"
spdLabel.TextColor3 = Color3.new(1,1,1)
spdLabel.Font = Enum.Font.Gotham
spdLabel.TextSize = 14
spdLabel.TextXAlignment = Enum.TextXAlignment.Left

local spdBox = Instance.new("TextBox")
spdBox.Parent = main
spdBox.Size = UDim2.new(1,-120,0,28)
spdBox.Position = UDim2.new(0,110,0,76)
spdBox.ClearTextOnFocus = false
spdBox.BackgroundColor3 = Color3.fromRGB(20,20,20)
spdBox.TextColor3 = Color3.new(1,1,1)
spdBox.Text = ""
spdBox.Font = Enum.Font.Gotham
spdBox.PlaceholderText = "https://raw.githubusercontent.com/.../speed.lua"

local spdLoadBtn = Instance.new("TextButton")
spdLoadBtn.Parent = main
spdLoadBtn.Size = UDim2.new(0,100,0,28)
spdLoadBtn.Position = UDim2.new(1,-105,0,76)
spdLoadBtn.BackgroundColor3 = Color3.fromRGB(25,25,25)
spdLoadBtn.BorderSizePixel = 0
spdLoadBtn.TextColor3 = Color3.new(1,1,1)
spdLoadBtn.Text = "Load Speed"
spdLoadBtn.Font = Enum.Font.Gotham

-- Fly toggle
local flyToggle = Instance.new("TextButton")
flyToggle.Parent = main
flyToggle.Size = UDim2.new(0,150,0,36)
flyToggle.Position = UDim2.new(0,10,0,120)
flyToggle.BackgroundColor3 = Color3.fromRGB(20,20,20)
flyToggle.BorderSizePixel = 0
flyToggle.TextColor3 = Color3.new(1,1,1)
flyToggle.Text = "Fly: Mati"
flyToggle.Font = Enum.Font.Gotham

-- Speed slider
local speedLabel = Instance.new("TextLabel")
speedLabel.Parent = main
speedLabel.Size = UDim2.new(0,150,0,20)
speedLabel.Position = UDim2.new(0,10,0,166)
speedLabel.BackgroundTransparency = 1
speedLabel.TextColor3 = Color3.new(1,1,1)
speedLabel.Text = "Speed: 16"
speedLabel.Font = Enum.Font.Gotham

local speedSlider = Instance.new("Frame")
speedSlider.Parent = main
speedSlider.Size = UDim2.new(0,220,0,20)
speedSlider.Position = UDim2.new(0,10,0,188)
speedSlider.BackgroundColor3 = Color3.fromRGB(30,30,30)
speedSlider.BorderSizePixel = 0

local knob = Instance.new("ImageLabel")
knob.Parent = speedSlider
knob.Size = UDim2.new(0,14,1,0)
knob.Position = UDim2.new(0.16,-7,0,0)
knob.BackgroundColor3 = Color3.fromRGB(200,200,200)
knob.Image = ""
knob.BorderSizePixel = 0

local statusLabel = Instance.new("TextLabel")
statusLabel.Parent = main
statusLabel.Size = UDim2.new(1,-20,0,20)
statusLabel.Position = UDim2.new(0,10,1,-30)
statusLabel.BackgroundTransparency = 1
statusLabel.TextColor3 = Color3.new(1,1,1)
statusLabel.Font = Enum.Font.Gotham
statusLabel.Text = "Status: Siap"
statusLabel.TextXAlignment = Enum.TextXAlignment.Left

local runButton = Instance.new("TextButton")
runButton.Parent = screen
runButton.Name = "RunBtn"
runButton.Size = UDim2.new(0,150,0,36)
runButton.Position = UDim2.new(0,20,0,20)
runButton.AnchorPoint = Vector2.new(0,0)
runButton.BackgroundColor3 = Color3.fromRGB(20,20,20)
runButton.BorderSizePixel = 0
runButton.TextColor3 = Color3.new(1,1,1)
runButton.Text = "Jalankan Script"
runButton.Font = Enum.Font.Gotham

-- State
local guiActive = false
local flyEnabled = false
local walkSpeed = 16
local sliderMin, sliderMax = 8, 200
local dragging = false

-- External handlers
local externalFly = nil -- may be function or table
local externalSpeed = nil -- may be function or table

-- Helpers
local function updateStatus(t) statusLabel.Text = "Status: "..t end
local function toggleGUI() guiActive = not guiActive; main.Visible = guiActive end
runButton.MouseButton1Click:Connect(toggleGUI)

-- Slider logic
local function setSliderFromX(x)
	local rel = math.clamp(x - speedSlider.AbsolutePosition.X, 0, speedSlider.AbsoluteSize.X)
	local t = rel / speedSlider.AbsoluteSize.X
	local speed = math.floor(sliderMin + (sliderMax - sliderMin) * t + 0.5)
	knob.Position = UDim2.new(t, -7, 0, 0)
	speedLabel.Text = "Speed: "..tostring(speed)
	-- apply to external or local humanoid
	if externalSpeed then
		-- if externalSpeed is function
		if type(externalSpeed) == "function" then
			pcall(externalSpeed, speed)
		elseif type(externalSpeed) == "table" and type(externalSpeed.set) == "function" then
			pcall(externalSpeed.set, speed)
		elseif type(externalSpeed) == "table" and type(externalSpeed.setSpeed) == "function" then
			pcall(externalSpeed.setSpeed, speed)
		else
			-- fallback: set Humanoid WalkSpeed
			if player.Character and player.Character:FindFirstChild("Humanoid") then
				player.Character.Humanoid.WalkSpeed = speed
			end
		end
	else
		if player.Character and player.Character:FindFirstChild("Humanoid") then
			player.Character.Humanoid.WalkSpeed = speed
		end
	end
	walkSpeed = speed
end

knob.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
end)
UserInputService.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
end)
UserInputService.InputChanged:Connect(function(input)
	if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
		setSliderFromX(input.Position.X)
	end
end)

-- Fly built-in fallback (simple)
local BV, BG, keys = nil, nil, {W=false,A=false,S=false,D=false}
local ascend = 0
local flySpeed = 50

local function enableBuiltinFly()
	local char = player.Character
	if not char then return end
	local hrp = char:FindFirstChild("HumanoidRootPart")
	local humanoid = char:FindFirstChild("Humanoid")
	if not hrp or not humanoid then return end
	if BV then return end
	BV = Instance.new("BodyVelocity")
	BV.MaxForce = Vector3.new(1e5,1e5,1e5)
	BV.Velocity = Vector3.new(0,0,0)
	BV.Parent = hrp
	BG = Instance.new("BodyGyro")
	BG.MaxTorque = Vector3.new(1e5,1e5,1e5)
	BG.CFrame = hrp.CFrame
	BG.Parent = hrp
	humanoid.PlatformStand = true
end

local function disableBuiltinFly()
	if BV then BV:Destroy(); BV = nil end
	if BG then BG:Destroy(); BG = nil end
	if player.Character and player.Character:FindFirstChild("Humanoid") then
		player.Character.Humanoid.PlatformStand = false
	end
end

UserInputService.InputBegan:Connect(function(inp, gameProcessed)
	if gameProcessed then return end
	local kc = inp.KeyCode
	if kc == Enum.KeyCode.W then keys.W = true end
	if kc == Enum.KeyCode.S then keys.S = true end
	if kc == Enum.KeyCode.A then keys.A = true end
	if kc == Enum.KeyCode.D then keys.D = true end
	if kc == Enum.KeyCode.Space then ascend = 1 end
	if kc == Enum.KeyCode.LeftShift then ascend = -1 end
end)
UserInputService.InputEnded:Connect(function(inp)
	local kc = inp.KeyCode
	if kc == Enum.KeyCode.W then keys.W = false end
	if kc == Enum.KeyCode.S then keys.S = false end
	if kc == Enum.KeyCode.A then keys.A = false end
	if kc == Enum.KeyCode.D then keys.D = false end
	if kc == Enum.KeyCode.Space then ascend = 0 end
	if kc == Enum.KeyCode.LeftShift then ascend = 0 end
end)

RunService.RenderStepped:Connect(function()
	if flyEnabled then
		-- prefer external fly velocity if provided
		if externalFly and (type(externalFly) == "table" or type(externalFly) == "function") then
			-- assume external fly manages itself after enable called
		else
			if BV and BG and player.Character and workspace.CurrentCamera then
				local char = player.Character
				local hrp = char:FindFirstChild("HumanoidRootPart")
				local humanoid = char:FindFirstChild("Humanoid")
				if not hrp or not humanoid then return end
				local cam = workspace.CurrentCamera
				local forward = cam.CFrame.LookVector
				local right = cam.CFrame.RightVector
				local inputVec = Vector3.new(0,0,0)
				if keys.W then inputVec = inputVec + Vector3.new(forward.X,0,forward.Z) end
				if keys.S then inputVec = inputVec - Vector3.new(forward.X,0,forward.Z) end
				if keys.A then inputVec = inputVec - Vector3.new(right.X,0,right.Z) end
				if keys.D then inputVec = inputVec + Vector3.new(right.X,0,right.Z) end
				local horizontal = inputVec.Magnitude > 0 and inputVec.Unit or Vector3.new(0,0,0)
				local vy = 0
				if ascend == 1 then vy = flySpeed end
				if ascend == -1 then vy = -flySpeed end
				local vel = horizontal * flySpeed + Vector3.new(0, vy, 0)
				if BV then BV.Velocity = vel end
				if BG and hrp then BG.CFrame = CFrame.new(hrp.Position, hrp.Position + workspace.CurrentCamera.CFrame.LookVector) end
			end
		end
	end
end)

-- Fly toggle button
flyToggle.MouseButton1Click:Connect(function()
	flyEnabled = not flyEnabled
	if flyEnabled then
		-- try external enable
		local ok, ret = pcall(function()
			if type(externalFly) == "function" then
				return externalFly(true)
			elseif type(externalFly) == "table" then
				if type(externalFly.toggle) == "function" then return externalFly.toggle(true) end
				if type(externalFly.enable) == "function" then return externalFly.enable() end
				if type(externalFly.on) == "function" then return externalFly.on() end
			end
			return nil
		end)
		if not ok then
			updateStatus("Fly eksternal error: "..tostring(ret))
			-- fallback
			enableBuiltinFly()
			flyToggle.Text = "Fly: Aktif"
		else
			-- if external didn't manage fly, use builtin
			if not ret then enableBuiltinFly() end
			flyToggle.Text = "Fly: Aktif"
		end
	else
		-- disable external if possible
		pcall(function()
			if type(externalFly) == "function" then externalFly(false) end
			if type(externalFly) == "table" and type(externalFly.disable) == "function" then externalFly.disable() end
		end)
		disableBuiltinFly()
		flyToggle.Text = "Fly: Mati"
	end
end)

-- Load & register external script helper
local function loadExternal(url)
	if not url or url == "" then return false, "URL kosong" end
	if not (string.find(url, "raw.githubusercontent.com") or string.find(url, "raw.githack.com") or string.find(url, "gist.githubusercontent.com")) then
		return false, "Gunakan raw.githubusercontent / raw.githack / gist raw"
	end
	local ok, enabled = pcall(function() return HttpService.HttpEnabled end)
	if not ok or not enabled then
		return false, "HttpService tidak aktif"
	end
	local ok2, body = pcall(function() return HttpService:GetAsync(url, true) end)
	if not ok2 then return false, "Gagal ambil: "..tostring(body) end
	local fn, err = loadstring(body)
	if not fn then return false, "Load error: "..tostring(err) end
	local env = {}
	setmetatable(env, {__index = _G})
	setfenv(fn, env)
	local ok3, ret = pcall(fn)
	if not ok3 then return false, "Runtime error: "..tostring(ret) end
	return true, ret
end

-- Buttons to load external
flyLoadBtn.MouseButton1Click:Connect(function()
	updateStatus("Mengambil fly...")
	local ok, res = loadExternal(flyBox.Text)
	if not ok then updateStatus(res); return end
	-- register
	if type(res) == "table" or type(res) == "function" then
		externalFly = res
		updateStatus("Fly dimuat")
	else
		-- if script didn't return, try to find in env globals (best-effort)
		updateStatus("Fly script tidak mengembalikan value. Mencoba global _G.ExternalFly...")
		if _G.ExternalFly then externalFly = _G.ExternalFly; updateStatus("Fly dimuat dari _G.ExternalFly") else updateStatus("Tidak ada handler fly") end
	end
end)

spdLoadBtn.MouseButton1Click:Connect(function()
	updateStatus("Mengambil speed...")
	local ok, res = loadExternal(spdBox.Text)
	if not ok then updateStatus(res); return end
	if type(res) == "function" or type(res) == "table" then
		externalSpeed = res
		updateStatus("Speed dimuat")
	else
		updateStatus("Speed script tidak mengembalikan handler. Mencoba _G.ExternalSpeed...")
		if _G.ExternalSpeed then externalSpeed = _G.ExternalSpeed; updateStatus("Speed dimuat dari _G.ExternalSpeed") else updateStatus("Tidak ada handler speed") end
	end
end)

-- Keep humanoid walk speed after respawn
player.CharacterAdded:Connect(function(c)
	local humanoid = c:WaitForChild("Humanoid")
	humanoid.WalkSpeed = walkSpeed
end)

-- initial
speedLabel.Text = "Speed: "..tostring(walkSpeed)
updateStatus("Siap")

-- Catatan singkat:
-- 1) Pastikan URL raw (raw.githubusercontent.com...). 2) Fly script harus mengembalikan handler seperti dijelaskan di atas. 3) Speed script harus mengembalikan function(speed) atau table{set=fn}.
-- 4) Berhati-hati menjalankan kode pihak ketiga.
