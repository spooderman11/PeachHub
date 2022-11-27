getgenv().notify = false
getgenv().farm = false

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Making scam calls to save your best friend tycoon",
	LoadingTitle = "PeachHub",
	LoadingSubtitle = "by PeachHub Development",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = nil, -- Create a custom folder for your hub/game
		FileName = "Big Hub"
	},
        Discord = {
        	Enabled = false,
        	Invite = "sirius", -- The Discord invite code, do not include discord.gg/
        	RememberJoins = true -- Set this to false to make them join the discord every time they load it up
        },
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "PeachHub",
		Subtitle = "Key System",
		Note = "Key link copied",
		FileName = "what",
		SaveKey = true,
		GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
		Key = "$PeachHubOnTop!"
	}
})

setclipboard("")


function scamcall()
    if getgenv().notify then
        game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()
        wait(1)
        local number = tostring(game:GetService("Players").LocalPlayer.GeneratedNumber.Value)
        Rayfield:Notify({
            Title = "Card number",
            Content = "Card number generated: "..number..", transfering...",
            Duration = 4,
            Image = 4483362458,
        })

        wait(0.3)

        local args = {
            [1] = game:GetService("Players").LocalPlayer.GeneratedNumber.Value
        }

        game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(unpack(args))

        wait(game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value)

        Rayfield:Notify({
            Title = "Complete",
            Content = "Starting new scam call...",
            Duration = 4,
            Image = 4483362458,
        })
    else
        game:GetService("ReplicatedStorage").Events.GenerateNumber:FireServer()  

        wait(1)

        wait(4)

        local args = {
            [1] = game:GetService("Players").LocalPlayer.GeneratedNumber.Value
        }

        game:GetService("ReplicatedStorage").Events.CheckNumber:FireServer(unpack(args))

        wait(game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value)
    end
end

local Tab = Window:CreateTab("Auto-Stuff") -- Title, Image

local Section = Tab:CreateSection("Scam stuff")

local Slider = Tab:CreateSlider({
	Name = "scam transfer speed",
	Range = {0.1, 5},
	Increment = 0.1,
	Suffix = "Seconds",
	CurrentValue = 0.1,
	Flag = "slid", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        game:GetService("Players").LocalPlayer.Data.TransferSpeed.Value = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Notify Progress",
	CurrentValue = false,
	Flag = "ss", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().notify = Value
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto-Scam",
	CurrentValue = false,
	Flag = "ss", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().farm = Value

        while getgenv().farm do
            wait()
            scamcall()
        end
	end,
})

local ss = Tab:CreateSection("Upgrades")

local Toggle = Tab:CreateToggle({
	Name = "Auto-Upgrade Transfer speed",
	CurrentValue = false,
	Flag = "frghrt", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().ffff = Value

        while getgenv().ffff do
            wait()
            local args = {
                [1] = "TransferSpeed",
                [2] = 16
            }

            game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto-Upgrade scam speed",
	CurrentValue = false,
	Flag = "ww", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().scamup = Value

        while getgenv().scamup do
            wait()
            local args = {
                [1] = "ScamSpeed",
                [2] = 5
            }

            game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
        end
	end,
})

local Toggle = Tab:CreateToggle({
	Name = "Auto-Upgrade scam Value",
	CurrentValue = false,
	Flag = "dfdf", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Value)
        getgenv().scam1 = Value

        while getgenv().scam1 do
            wait()
            local args = {
                [1] = "ScamValue",
                [2] = 7
            }

            game:GetService("ReplicatedStorage").Events.UpgradeItem:FireServer(unpack(args))
        end
	end,
})
