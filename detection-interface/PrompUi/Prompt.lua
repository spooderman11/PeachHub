local PromptUi = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Prompt = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local Line = Instance.new("Frame")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UhOh = Instance.new("TextLabel")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
local Desc = Instance.new("TextLabel")
local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
local YesBut = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local Yes = Instance.new("TextLabel")
local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
local NoBut = Instance.new("TextButton")
local UICorner_3 = Instance.new("UICorner")
local No = Instance.new("TextLabel")
local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_7 = Instance.new("UIAspectRatioConstraint")
local frameStroke = Instance.new("UIStroke")
local yesButtonStroke = Instance.new("UIStroke")
local NoButStroke = Instance.new("UIStroke")


local ts = game:GetService("TweenService")
local tf = TweenInfo.new(
    0.7,
    Enum.EasingStyle.Quad,
    Enum.EasingDirection.InOut
)


PromptUi.Parent = game.CoreGui
PromptUi.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

if game.CoreGui:FindFirstChild("PromptUi") then
    PromptUi:Destroy()
end 

if syn then
    syn.protect_gui("PrompUi")
end

MainFrame.Name = "MainFrame"
MainFrame.Parent = PromptUi
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(44, 44, 44)
MainFrame.Position = UDim2.new(0.507, 0, -0.76, 0)
MainFrame.Size = UDim2.new(0, 288, 0, 129)

UICorner.CornerRadius = UDim.new(0, 3)
UICorner.Parent = MainFrame

Prompt.Name = "Prompt"
Prompt.Parent = MainFrame
Prompt.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Prompt.BackgroundTransparency = 1.000
Prompt.Position = UDim2.new(0.0250278041, 0, 0.0382165611, 0)
Prompt.Size = UDim2.new(0, 135, 0, 15)
Prompt.Font = Enum.Font.GothamMedium
Prompt.Text = "PeachHub - Prompt "
Prompt.TextColor3 = Color3.fromRGB(255, 255, 255)
Prompt.TextSize = 14.000
Prompt.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint.Parent = Prompt
UIAspectRatioConstraint.AspectRatio = 9.000

Line.Name = "Line"
Line.Parent = MainFrame
Line.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Line.BackgroundTransparency = 0.750
Line.BorderSizePixel = 0
Line.Position = UDim2.new(-0.00347222225, 0, 0.170000002, 0)
Line.Size = UDim2.new(0, 288, 0, 1)

UIAspectRatioConstraint_2.Parent = Line
UIAspectRatioConstraint_2.AspectRatio = 288.000

UhOh.Name = "UhOh"
UhOh.Parent = MainFrame
UhOh.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
UhOh.BackgroundTransparency = 1.000
UhOh.Position = UDim2.new(0.0250278041, 0, 0.232014969, 0)
UhOh.Size = UDim2.new(0, 275, 0, 15)
UhOh.Font = Enum.Font.GothamMedium
UhOh.Text = "Uh Oh.."
UhOh.TextColor3 = Color3.fromRGB(255, 255, 255)
UhOh.TextSize = 14.000
UhOh.TextTransparency = 0.300
UhOh.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_3.Parent = UhOh
UIAspectRatioConstraint_3.AspectRatio = 18.333

Desc.Name = "Desc"
Desc.Parent = MainFrame
Desc.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Desc.BackgroundTransparency = 1.000
Desc.Position = UDim2.new(0.0250278041, 0, 0.34829405, 0)
Desc.Size = UDim2.new(0, 275, 0, 51)
Desc.Font = Enum.Font.Gotham
Desc.Text = "It looks like a script for your game hasnt been found. Would you like to execute our universal script?"
Desc.TextColor3 = Color3.fromRGB(255, 255, 255)
Desc.TextScaled = true
Desc.TextSize = 14.000
Desc.TextTransparency = 0.080
Desc.TextWrapped = true
Desc.TextXAlignment = Enum.TextXAlignment.Left

UIAspectRatioConstraint_4.Parent = Desc
UIAspectRatioConstraint_4.AspectRatio = 5.392

YesBut.Name = "YesBut"
YesBut.Parent = MainFrame
YesBut.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
YesBut.Position = UDim2.new(0.725694418, 0, 0.813953459, 0)
YesBut.Size = UDim2.new(0, 73, 0, 18)
YesBut.Font = Enum.Font.SourceSans
YesBut.Text = ""
YesBut.TextColor3 = Color3.fromRGB(0, 0, 0)
YesBut.TextSize = 14.000
YesBut.MouseButton1Down:Connect(function()
    local texttween = ts:Create(MainFrame, tf, {Position = UDim2.new(0.507, 0, -0.76, 0)}):Play()
end)

UICorner_2.CornerRadius = UDim.new(0, 3)
UICorner_2.Parent = YesBut

Yes.Name = "Yes"
Yes.Parent = YesBut
Yes.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Yes.BackgroundTransparency = 1.000
Yes.Position = UDim2.new(0.17571269, 0, 0.398681641, 0)
Yes.Size = UDim2.new(0, 47, 0, 5)
Yes.Font = Enum.Font.GothamMedium
Yes.Text = "Yes"
Yes.TextColor3 = Color3.fromRGB(255, 255, 255)
Yes.TextSize = 11.000
Yes.TextTransparency = 0.300

UIAspectRatioConstraint_5.Parent = YesBut
UIAspectRatioConstraint_5.AspectRatio = 4.056

NoBut.Name = "NoBut"
NoBut.Parent = MainFrame
NoBut.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
NoBut.Position = UDim2.new(0.449999988, 0, 0.813953459, 0)
NoBut.Size = UDim2.new(0, 73, 0, 18)
NoBut.Font = Enum.Font.SourceSans
NoBut.Text = ""
NoBut.TextColor3 = Color3.fromRGB(0, 0, 0)
NoBut.TextSize = 14.000
NoBut.MouseButton1Down:Connect(function()
    local texttween = ts:Create(MainFrame, tf, {Position = UDim2.new(0.507, 0, -0.76, 0)}):Play()
end)

UICorner_3.CornerRadius = UDim.new(0, 3)
UICorner_3.Parent = NoBut

No.Name = "No"
No.Parent = NoBut
No.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
No.BackgroundTransparency = 1.000
No.Position = UDim2.new(0.17571269, 0, 0.398681641, 0)
No.Size = UDim2.new(0, 47, 0, 5)
No.Font = Enum.Font.GothamMedium
No.Text = "No"
No.TextColor3 = Color3.fromRGB(255, 255, 255)
No.TextSize = 11.000
No.TextTransparency = 0.300

UIAspectRatioConstraint_6.Parent = NoBut
UIAspectRatioConstraint_6.AspectRatio = 4.056

UIAspectRatioConstraint_7.Parent = MainFrame
UIAspectRatioConstraint_7.AspectRatio = 2.233

frameStroke.Parent = MainFrame
frameStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
frameStroke.Enabled = true
frameStroke.Color = Color3.fromRGB(106, 106, 106)
frameStroke.Thickness = 1.3
frameStroke.Transparency = 0

yesButtonStroke.Parent = MainFrame
yesButtonStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
yesButtonStroke.Enabled = true
yesButtonStroke.Color = Color3.fromRGB(106, 106, 106)
yesButtonStroke.Thickness = 1.3
yesButtonStroke.Transparency = 0

NoButStroke.Parent = MainFrame
NoButStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
NoButStroke.Enabled = true
NoButStroke.Color = Color3.fromRGB(106, 106, 106)
NoButStroke.Thickness = 1.3
NoButStroke.Transparency = 0

local texttween = ts:Create(MainFrame, tf, {Position = UDim2.new(0.501, 0, 0.087, 0)}):Play()
