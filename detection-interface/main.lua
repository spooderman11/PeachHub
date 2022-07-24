-- GUI INSTANCES
local ScreenGui = Instance.new("ScreenGui")
local Titleandshit = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local MainFrame = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local icon = Instance.new("ImageLabel")
local UICorner_3 = Instance.new("UICorner")
local Message = Instance.new("TextLabel")
local GameName = Instance.new("TextLabel")
local Desc = Instance.new("TextLabel")
local ContToTween = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")
local Yes = Instance.new("TextLabel")
-- OTHER IMPORTANT LOCALS

local uis = game:GetService("UserInputService")
local ts = game:GetService("TweenService")
local info = TweenInfo.new(
    0.5,
    Enum.EasingStyle.Circular,
    Enum.EasingDirection.InOut
)

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Titleandshit.Name = "Titleandshit"
Titleandshit.Parent = ScreenGui
Titleandshit.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
Titleandshit.BackgroundTransparency = 1.000
Titleandshit.Position = UDim2.new(0.332291663, 0, 0.0216216389, 0)
Titleandshit.Size = UDim2.new(0, 644, 0, 38)

UICorner.CornerRadius = UDim.new(1, 0)
UICorner.Parent = Titleandshit

TextLabel.Parent = Titleandshit
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0745341629, 0, 0, 0)
TextLabel.Size = UDim2.new(0, 152, 0, 38)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.Text = "Detection Engine"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14.000
TextLabel.TextTransparency = 1.000
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

ImageLabel.Parent = Titleandshit
ImageLabel.BackgroundTransparency = 1.000
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.024844721, 0, 0.236842096, 0)
ImageLabel.Size = UDim2.new(0, 20, 0, 20)
ImageLabel.Image = "http://www.roblox.com/asset/?id=6034789879"
ImageLabel.ImageTransparency = 1.000

MainFrame.Name = "MainFrame"
MainFrame.Parent = Titleandshit
MainFrame.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
MainFrame.BackgroundTransparency = 1.000
MainFrame.ClipsDescendants = true
MainFrame.Position = UDim2.new(0, 0, 1.18421054, 0)
MainFrame.Size = UDim2.new(0, 644, 0, 139)

UICorner_2.CornerRadius = UDim.new(0, 25)
UICorner_2.Parent = MainFrame

icon.Name = "icon"
icon.Parent = MainFrame
icon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
icon.BackgroundTransparency = 1.000
icon.Position = UDim2.new(0.0372670814, 0, 0.131139189, 0)
icon.Size = UDim2.new(0, 100, 0, 100)
icon.ZIndex = 2
icon.Image = "rbxassetid://"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).IconImageAssetId
icon.ImageTransparency = 1.000

UICorner_3.CornerRadius = UDim.new(0, 19)
UICorner_3.Parent = icon

Message.Name = "Message"
Message.Parent = MainFrame
Message.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Message.BackgroundTransparency = 1.000
Message.Position = UDim2.new(0.20807457, 0, 0.332151949, 0)
Message.Size = UDim2.new(0, 152, 0, 38)
Message.ZIndex = 2
Message.Font = Enum.Font.GothamBlack
Message.Text = "Game Detected!"
Message.TextColor3 = Color3.fromRGB(255, 255, 255)
Message.TextScaled = true
Message.TextSize = 14.000
Message.TextTransparency = 1.000
Message.TextWrapped = true
Message.TextXAlignment = Enum.TextXAlignment.Left

local gamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name

GameName.Name = "GameName"
GameName.Parent = MainFrame
GameName.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GameName.BackgroundTransparency = 1.000
GameName.Position = UDim2.new(0.208074555, 0, 0.527779639, 0)
GameName.Size = UDim2.new(0, 152, 0, 16)
GameName.ZIndex = 2
GameName.Font = Enum.Font.GothamBold
GameName.Text = gamename
GameName.TextColor3 = Color3.fromRGB(255, 255, 255)
GameName.TextScaled = true
GameName.TextSize = 14.000
GameName.TextTransparency = 1.000
GameName.TextWrapped = true
GameName.TextXAlignment = Enum.TextXAlignment.Left

Desc.Name = "Desc"
Desc.Parent = MainFrame
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0.518633544, 0, 0.0879737213, 0)
Desc.Size = UDim2.new(0, 293, 0, 112)
Desc.ZIndex = 2
Desc.Font = Enum.Font.GothamBold
Desc.Text = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Description
Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc.TextScaled = true
Desc.TextSize = 14.000
Desc.TextTransparency = 1.000
Desc.TextWrapped = true
Desc.TextXAlignment = Enum.TextXAlignment.Right

ContToTween.Name = "ContToTween"
ContToTween.Parent = MainFrame
ContToTween.BackgroundColor3 = Color3.fromRGB(42, 42, 42)
ContToTween.BackgroundTransparency = 1.000
ContToTween.ClipsDescendants = true
ContToTween.Position = UDim2.new(0, 0, 0.726618707, 0)
ContToTween.Size = UDim2.new(0, 382, 0, 51)

UICorner_4.CornerRadius = UDim.new(0, 25)
UICorner_4.Parent = ContToTween

Yes.Name = "Yes"
Yes.Parent = ContToTween
Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yes.BackgroundTransparency = 1.000
Yes.Position = UDim2.new(0.60, 0, 0.34, 0)
Yes.Size = UDim2.new(0, 309, 0, 16)
Yes.ZIndex = 2
Yes.Font = Enum.Font.GothamBold
Yes.Text = "Press Y to execute"
Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
Yes.TextScaled = true
Yes.TextSize = 14.000
Yes.TextTransparency = 1.000
Yes.TextWrapped = true
Yes.TextXAlignment = Enum.TextXAlignment.Left

task.wait(1)

warn(game.Name.." is supported!")
task.wait(0.3)
local titletween = ts:Create(Titleandshit, info, {BackgroundTransparency = 0}):Play()
local icontween = ts:Create(ImageLabel, info, {ImageTransparency = 0}):Play()
local texttween = ts:Create(TextLabel, info, {TextTransparency = 0}):Play()

task.wait(2)
local titletween = ts:Create(MainFrame, info, {BackgroundTransparency = 0}):Play()
local icontween = ts:Create(icon, info, {ImageTransparency = 0}):Play()
local texttween = ts:Create(Message, info, {TextTransparency = 0}):Play()
local texttween = ts:Create(GameName, info, {TextTransparency = 0}):Play()
local texttween = ts:Create(Desc, info, {TextTransparency = 0}):Play()
task.wait(3)
local texttween = ts:Create(Yes, info, {TextTransparency = 0}):Play()

_G.Executed = false

uis.InputBegan:Connect(function(Input)
    if Input.KeyCode == Enum.KeyCode.Y then
        task.wait(0.3)
        local texttween = ts:Create(GameName, info, {TextTransparency = 1}):Play()
        local texttween = ts:Create(Desc, info, {TextTransparency = 1}):Play()
        local texttween = ts:Create(Yes, info, {TextTransparency = 1}):Play()
        task.wait(1)
        local icontween = ts:Create(icon, info, {ImageTransparency = 1}):Play()
        local texttween = ts:Create(Message, info, {TextTransparency = 1}):Play()
        task.wait(0.99)
        local titletween = ts:Create(MainFrame, info, {BackgroundTransparency = 1}):Play()
        local titletween = ts:Create(Titleandshit, info, {BackgroundTransparency = 1}):Play()
        local icontween = ts:Create(ImageLabel, info, {ImageTransparency = 1}):Play()
        local texttween = ts:Create(TextLabel, info, {TextTransparency = 1}):Play()
    end
end)
