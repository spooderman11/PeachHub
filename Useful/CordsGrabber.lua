-- Gui to Lua
-- Version: 3.2

-- Instances:

local Dolphin = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local CordsHolder = Instance.new("Frame")
local CordsHoldStroke = Instance.new("UIStroke")
local UICorner_2 = Instance.new("UICorner")
local Cords = Instance.new("TextLabel")
local Value = Instance.new("TextLabel")
local Grab = Instance.new("TextButton")
local GrabStroke = Instance.new("UIStroke")
local UICorner_3 = Instance.new("UICorner")
local GrabCords = Instance.new("TextLabel")
local Grab_2 = Instance.new("TextButton")
local Grab2Stroke = Instance.new("UIStroke")
local UICorner_4 = Instance.new("UICorner")
local CopyCOrds = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

--Properties:

Dolphin.Name = "Dolphin"
Dolphin.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

MainFrame.Name = "MainFrame"
MainFrame.Parent = Dolphin
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(37, 37, 37)
MainFrame.Position = UDim2.new(0.499634236, 0, 0.482864141, 0)
MainFrame.Size = UDim2.new(0, 427, 0, 161)

UICorner.CornerRadius = UDim.new(0, 4)
UICorner.Parent = MainFrame

Title.Name = "Title"
Title.Parent = MainFrame
Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Title.BackgroundTransparency = 1.000
Title.Position = UDim2.new(0.208430916, 0, 0.0372340418, 0)
Title.Size = UDim2.new(0, 248, 0, 18)
Title.Font = Enum.Font.GothamMedium
Title.Text = "PeachHub - Cordinates Grabber GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 14.000

CordsHolder.Name = "CordsHolder"
CordsHolder.Parent = MainFrame
CordsHolder.AnchorPoint = Vector2.new(0.5, 0.5)
CordsHolder.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
CordsHolder.Position = UDim2.new(0.497999996, 0, 0.439999998, 0)
CordsHolder.Size = UDim2.new(0, 412, 0, 24)

CordsHoldStroke.Parent = CordsHolder
CordsHoldStroke.ApplyStrokeMode = 'Contextual'
CordsHoldStroke.Color = Color3.fromRGB(106,106,106)
CordsHoldStroke.Enabled = true
CordsHoldStroke.Thickness = 1
CordsHoldStroke.Transparency = 0
CordsHoldStroke.LineJoinMode = Enum.LineJoinMode.Round

UICorner_2.CornerRadius = UDim.new(0, 4)
UICorner_2.Parent = CordsHolder

Cords.Name = "Cords"
Cords.Parent = CordsHolder
Cords.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Cords.BackgroundTransparency = 1.000
Cords.Position = UDim2.new(0.0163934212, 0, 0.178707123, 0)
Cords.Size = UDim2.new(0, 399, 0, 15)
Cords.Font = Enum.Font.Gotham
Cords.Text = ""
Cords.TextColor3 = Color3.fromRGB(255, 255, 255)
Cords.TextSize = 11.000
Cords.TextXAlignment = Enum.TextXAlignment.Left

Value.Name = "Value"
Value.Parent = MainFrame
Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Value.BackgroundTransparency = 1.000
Value.Position = UDim2.new(0.0163934417, 0, 0.262040257, 0)
Value.Size = UDim2.new(0, 239, 0, 15)
Value.Font = Enum.Font.GothamMedium
Value.Text = "Cordinates:"
Value.TextColor3 = Color3.fromRGB(255, 255, 255)
Value.TextSize = 14.000
Value.TextXAlignment = Enum.TextXAlignment.Left

Grab.Name = "Grab"
Grab.Parent = MainFrame
Grab.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Grab.Position = UDim2.new(0.323185027, 0, 0.589051008, 0)
Grab.Size = UDim2.new(0, 151, 0, 20)
Grab.Font = Enum.Font.SourceSans
Grab.Text = ""
Grab.TextColor3 = Color3.fromRGB(0, 0, 0)
Grab.TextSize = 14.000
Grab.MouseButton1Click:Connect(function()
    Cords.Text = tostring(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position)
end)

GrabStroke.Parent = Grab
GrabStroke.ApplyStrokeMode = "Border"
GrabStroke.Color = Color3.fromRGB(106,106,106)
GrabStroke.Enabled = true
GrabStroke.Thickness = 1
GrabStroke.Transparency = 0
GrabStroke.LineJoinMode = Enum.LineJoinMode.Round


UICorner_3.CornerRadius = UDim.new(0, 4)
UICorner_3.Parent = Grab

GrabCords.Name = "GrabCords"
GrabCords.Parent = Grab
GrabCords.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GrabCords.BackgroundTransparency = 1.000
GrabCords.Position = UDim2.new(0, 0, 0.178707883, 0)
GrabCords.Size = UDim2.new(0, 150, 0, 12)
GrabCords.Font = Enum.Font.Gotham
GrabCords.Text = "Grab Cords"
GrabCords.TextColor3 = Color3.fromRGB(255, 255, 255)
GrabCords.TextSize = 11.000

Grab_2.Name = "Grab"
Grab_2.Parent = MainFrame
Grab_2.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Grab_2.Position = UDim2.new(0.323185027, 0, 0.800307751, 0)
Grab_2.Size = UDim2.new(0, 151, 0, 20)
Grab_2.Font = Enum.Font.SourceSans
Grab_2.Text = ""
Grab_2.TextColor3 = Color3.fromRGB(0, 0, 0)
Grab_2.TextSize = 14.000
Grab_2.MouseButton1Click:Connect(function()
    setclipboard(""..Cords.Text)
end)

Grab2Stroke.Parent = Grab_2
Grab2Stroke.ApplyStrokeMode = "Border"
Grab2Stroke.Color = Color3.fromRGB(106,106,106)
Grab2Stroke.Enabled = true
Grab2Stroke.Thickness = 1
Grab2Stroke.Transparency = 0
Grab2Stroke.LineJoinMode = Enum.LineJoinMode.Round

UICorner_4.CornerRadius = UDim.new(0, 4)
UICorner_4.Parent = Grab_2

CopyCOrds.Name = "CopyCOrds"
CopyCOrds.Parent = Grab_2
CopyCOrds.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CopyCOrds.BackgroundTransparency = 1.000
CopyCOrds.Position = UDim2.new(0, 0, 0.178707883, 0)
CopyCOrds.Size = UDim2.new(0, 150, 0, 12)
CopyCOrds.Font = Enum.Font.Gotham
CopyCOrds.Text = "Copy Cords"
CopyCOrds.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyCOrds.TextSize = 11.000

UIAspectRatioConstraint.Parent = MainFrame
UIAspectRatioConstraint.AspectRatio = 2.652

-- Scripts:

local function GPAECGT_fake_script() -- MainFrame.Smooth GUI Dragging 
	local script = Instance.new('LocalScript', MainFrame)

	local UserInputService = game:GetService("UserInputService")
	local runService = (game:GetService("RunService"));
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	function Lerp(a, b, m)
		return a + (b - a) * m
	end;
	
	local lastMousePos
	local lastGoalPos
	local DRAG_SPEED = (8); -- // The speed of the UI darg.
	function Update(dt)
		if not (startPos) then return end;
		if not (dragging) and (lastGoalPos) then
			gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, lastGoalPos.X.Offset, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, lastGoalPos.Y.Offset, dt * DRAG_SPEED))
			return 
		end;
	
		local delta = (lastMousePos - UserInputService:GetMouseLocation())
		local xGoal = (startPos.X.Offset - delta.X);
		local yGoal = (startPos.Y.Offset - delta.Y);
		lastGoalPos = UDim2.new(startPos.X.Scale, xGoal, startPos.Y.Scale, yGoal)
		gui.Position = UDim2.new(startPos.X.Scale, Lerp(gui.Position.X.Offset, xGoal, dt * DRAG_SPEED), startPos.Y.Scale, Lerp(gui.Position.Y.Offset, yGoal, dt * DRAG_SPEED))
	end;
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
			lastMousePos = UserInputService:GetMouseLocation()
	
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	
	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)
	
	runService.Heartbeat:Connect(Update)
end
coroutine.wrap(GPAECGT_fake_script)()
