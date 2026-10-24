
-- Chicken Hub
-- Панель для собственной тестовой игры Roblox

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local guiParent = player:WaitForChild("PlayerGui")

local old = guiParent:FindFirstChild("ChickenHub")
if old then
    old:Destroy()
end

local gui = Instance.new("ScreenGui")
gui.Name = "ChickenHub"
gui.ResetOnSpawn = false
gui.Parent = guiParent

local frame = Instance.new("Frame")
frame.Size = UDim2.fromOffset(250, 145)
frame.Position = UDim2.new(0.5, -125, 0.5, -72)
frame.BackgroundColor3 = Color3.fromRGB(25, 27, 38)
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 10)
corner.Parent = frame

local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, 0, 0, 42)
title.BackgroundColor3 = Color3.fromRGB(45, 80, 180)
title.Text = "Chicken Hub"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextSize = 20
title.Font = Enum.Font.GothamBold
title.Parent = frame

local titleCorner = Instance.new("UICorner")
titleCorner.CornerRadius = UDim.new(0, 10)
titleCorner.Parent = title

local button = Instance.new("TextButton")
button.Size = UDim2.new(1, -24, 0, 48)
button.Position = UDim2.fromOffset(12, 62)
button.BackgroundColor3 = Color3.fromRGB(170, 55, 65)
button.Text = "GOD MODE: OFF"
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 16
button.Font = Enum.Font.GothamBold
button.Parent = frame

local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 8)
buttonCorner.Parent = button

local enabled = false

button.Activated:Connect(function()
    enabled = not enabled

    if enabled then
        button.Text = "GOD MODE: ON"
        button.BackgroundColor3 =
            Color3.fromRGB(45, 160, 90)
    else
        button.Text = "GOD MODE: OFF"
        button.BackgroundColor3 =
            Color3.fromRGB(170, 55, 65)
    end
end)
