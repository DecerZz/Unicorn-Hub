-- Gui to Lua
-- Version: 3.2

-- Instances:

local UNICORNHUB = Instance.new("ScreenGui")
local injectorframe = Instance.new("Frame")
local inject = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local ijFrame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local ImageLabel = Instance.new("ImageLabel")
local injectorclose = Instance.new("TextButton")

--Properties:

UNICORNHUB.Name = "UNICORN HUB"
UNICORNHUB.Parent = game.CoreGui
UNICORNHUB.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

injectorframe.Name = "injectorframe"
injectorframe.Parent = UNICORNHUB
injectorframe.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
injectorframe.Position = UDim2.new(0.342397928, 0, 0.350122809, 0)
injectorframe.Size = UDim2.new(0, 1, 0, 0)
injectorframe.Visible = false

inject.Name = "inject"
inject.Parent = injectorframe
inject.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
inject.BorderColor3 = Color3.fromRGB(255, 255, 255)
inject.Position = UDim2.new(0.148362234, 0, 0.156718522, 0)
inject.Size = UDim2.new(0, 365, 0, 176)
inject.Visible = false
inject.Font = Enum.Font.SourceSans
inject.Text = "Loading..."
inject.TextColor3 = Color3.fromRGB(0, 0, 0)
inject.TextScaled = true
inject.TextSize = 1.000
inject.TextWrapped = true

UICorner.CornerRadius = UDim.new(0.200000003, 0)
UICorner.Parent = inject

ijFrame.Name = "ijFrame"
ijFrame.Parent = injectorframe
ijFrame.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
ijFrame.Size = UDim2.new(0, 519, 0, 25)
ijFrame.Visible = false

TextLabel.Parent = ijFrame
TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.Position = UDim2.new(0.0115606934, 0, 0.0399999991, 0)
TextLabel.Size = UDim2.new(0, 123, 0, 24)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Unicorn Hub"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextSize = 15.000

ImageLabel.Parent = ijFrame
ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel.Size = UDim2.new(0, 25, 0, 25)
ImageLabel.Image = "http://www.roblox.com/asset/?id=5901418203"

injectorclose.Name = "injectorclose"
injectorclose.Parent = ijFrame
injectorclose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
injectorclose.BackgroundTransparency = 1.000
injectorclose.Position = UDim2.new(0.951830447, 0, 0, 0)
injectorclose.Selectable = false
injectorclose.Size = UDim2.new(0, 25, 0, 25)
injectorclose.Font = Enum.Font.SourceSans
injectorclose.Text = "X"
injectorclose.TextColor3 = Color3.fromRGB(0, 0, 0)
injectorclose.TextSize = 14.000

-- Scripts:

local function KTUS_fake_script() -- inject.LocalScript 
	local script = Instance.new('LocalScript', inject)

	local t = 5; --how long does it take to go through the rainbow
	
	local tick = tick
	local fromHSV = Color3.fromHSV
	local RunService = game:GetService("RunService")
	local Frame = script.Parent
	
	RunService:BindToRenderStep("Rainbow", 1000, function()
		local hue = tick() % t / t
		local color = fromHSV(hue, 1, 1)
		script.Parent.TextColor3 = color
	end)
end
coroutine.wrap(KTUS_fake_script)()
local function LYYI_fake_script() -- TextLabel.LocalScript 
	local script = Instance.new('LocalScript', TextLabel)

	local t = 5; --how long does it take to go through the rainbow
	
	local tick = tick
	local fromHSV = Color3.fromHSV
	local RunService = game:GetService("RunService")
	local Frame = script.Parent
	
	RunService:BindToRenderStep("Rainbow", 1000, function()
		local hue = tick() % t / t
		local color = fromHSV(hue, 1, 1)
		script.Parent.TextColor3 = color
	end)
end
coroutine.wrap(LYYI_fake_script)()
local function CTXLDJ_fake_script() -- injectorclose.close 
	local script = Instance.new('LocalScript', injectorclose)

	local gui = script.Parent.Parent.Parent.Parent
	
	script.Parent.close.MouseButton1Down:connect(function()
		gui:Destroy()
	end)
	
end
coroutine.wrap(CTXLDJ_fake_script)()
local function AAFZVFD_fake_script() -- injectorframe.draggui 
	local script = Instance.new('LocalScript', injectorframe)

	local UserInputService = game:GetService("UserInputService")
	
	local gui = script.Parent
	
	local dragging
	local dragInput
	local dragStart
	local startPos
	
	local function update(input)
		local delta = input.Position - dragStart
		gui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position
	
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
	
	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
end
coroutine.wrap(AAFZVFD_fake_script)()
local function NCSL_fake_script() -- injectorframe.animation 
	local script = Instance.new('LocalScript', injectorframe)

	local object = script.Parent
	object.AnchorPoint = Vector2.new(0.5, 0.5)
	object.Position = UDim2.new(0.5, 0, 0.5, 0)
	
	
	script.Parent.Visible = true
	
	wait(0.8)
	
	object:TweenSize(UDim2.new(0, 519, 0, 244))
	
	wait(1)
	
	script.Parent.ijFrame.Visible = true
	script.Parent.inject.Visible = true
	
	
	
end
coroutine.wrap(NCSL_fake_script)()
local function OXOJXP_fake_script() -- injectorframe.gamecheck 
	local script = Instance.new('LocalScript', injectorframe)

	wait(0.5)
	script.Parent.inject.Text = "Loading."
	wait(0.3)
	script.Parent.inject.Text = "Loading.."
	wait(0.3)
	script.Parent.inject.Text = "Loading..."
	wait(0.3)
	script.Parent.inject.Text = "Loading."
	wait(0.3)
	script.Parent.inject.Text = "Loading.."
	wait(0.3)
	script.Parent.inject.Text = "Loading..."
	
	wait(0.1)
	if game.GameId == "155615604" then
		
		script.Parent.inject.Text = "Prison Life"
		
	else
		
		script.Parent.inject.Text = "Aimbot & ESP"
		
	end
end
coroutine.wrap(OXOJXP_fake_script)()
local function GPTAPQ_fake_script() -- UNICORNHUB.injectscript 
	local script = Instance.new('LocalScript', UNICORNHUB)

	script.Parent.injectorframe.inject.MouseButton1Down:connect(function()
		
		
		
		local object = script.Parent.injectorframe
		object.AnchorPoint = Vector2.new(0.5, 0.5)
		object.Position = UDim2.new(0.5, 0, 0.5, 0)
	
	
	
		wait(0.8)
		
		script.Parent.injectorframe.ijFrame.Visible = false
		script.Parent.injectorframe.inject.Visible = false
	
		object:TweenSize(UDim2.new(0, 0, 0, 2))
	
		wait(1)
		
		script.Parent.injectorframe.Visible = false
		
		
	
	
	end)
	
	script.Parent.injectorframe.ijFrame.injectorclose.MouseButton1Down:connect(function()
		script.Parent.injectorframe.Visible = false
		
	
	end)
	
	
end
coroutine.wrap(GPTAPQ_fake_script)()
