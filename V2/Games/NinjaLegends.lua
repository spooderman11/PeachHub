getgenv().settings = {
    AutoSwing = false,
    AutoSell = false,
    AutoBuybs = false,
    AutoBuybestBelt = false,
    AutoBuyBestSkill = false,
    AutoBuyBestShuriken = false,
    selected = "nil"
}

local worldtable = {}
for _, v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
    table.insert(worldtable, v.Name)
end

function sell()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(78.39301300048828, 18.986454010009766, -43.5402717590332)
end

function buyBestShuriken()
    local args = {
        [1] = "buyAllSwords",
        [2] = "InnerPeaceIsland"
    }

    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end

function buyBestSword()
    local args = {
        [1] = "buyAllSwords",
        [2] = "InnerPeaceIsland"
    }

    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end

function buyBestBelt()
    local args = {
        [1] = "buyAllBelts",
        [2] = "InnerPeaceIsland"
    }

    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end

function buyBestSkill()
    local args = {
        [1] = "buyAllSkills",
        [2] = "InnerPeaceIsland"
    }

    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end

function swing()
    for _,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
        if v:FindFirstChild("ninjitsuGain") then
            game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
            break
        end
    end
    local args = {
        [1] = "swingKatana"
    }

    game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(unpack(args))
end

local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

local Window = Rayfield:CreateWindow({
	Name = "Ninja Legends",
	LoadingTitle = "PeachHub",
	LoadingSubtitle = "by PeachHub Development",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "PeachHub", 
		FileName = "NinjaLegends"
	},
        Discord = {
        	Enabled = true,
        	Invite = "URU8PSpM",
        	RememberJoins = true 
        },
	KeySystem = false, 
	KeySettings = {
		Title = "Sirius Hub",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/sirius)",
		FileName = "SiriusKey",
		SaveKey = true,
		GrabKeyFromSite = false, 
		Key = "Hello"
	}
})

local a = Window:CreateTab("Auto-Stuff")

local Section = a:CreateSection("Auto")

local Toggle = a:CreateToggle({
	Name = "Auto-Swing",
	CurrentValue = false,
	Flag = "swing1",
	Callback = function(Value)
        getgenv().settings.AutoSwing = Value

        while getgenv().settings.AutoSwing do
            task.wait()
            swing()
        end
	end,
})

local Toggle = a:CreateToggle({
	Name = "Auto-Sell",
	CurrentValue = false,
	Flag = "sell",
	Callback = function(Value)
        getgenv().settings.AutoSell = Value

        while getgenv().settings.AutoSell do
            task.wait(0.5)
            sell()
        end
	end,
})

local Section = a:CreateSection("Auto-Buy")

local Toggle = a:CreateToggle({
	Name = "Auto-Buy All swords",
	CurrentValue = false,
	Flag = "bs",
	Callback = function(Value)
        getgenv().settings.AutoBuybs = Value

        while getgenv().settings.AutoBuybs do
            task.wait(0.5)
            buyBestSword()
        end
	end,
})

local Toggle = a:CreateToggle({
	Name = "Auto-Buy All belts",
	CurrentValue = false,
	Flag = "bb",
	Callback = function(Value)
        getgenv().settings.AutoBuybestBelt = Value

        while getgenv().settings.AutoBuybestBelt do
            task.wait(0.5)
            buyBestBelt()
        end
	end,
})

local Toggle = a:CreateToggle({
	Name = "Auto-Buy All skills",
	CurrentValue = false,
	Flag = "bbs",
	Callback = function(Value)
        getgenv().settings.AutoBuyBestSkill = Value

        while getgenv().settings.AutoBuyBestSkill do
            task.wait(0.5)
            buyBestSkill()
        end
	end,
})

local Toggle = a:CreateToggle({
	Name = "Auto-Buy All Shurikens",
	CurrentValue = false,
	Flag = "bbs",
	Callback = function(Value)
        getgenv().settings.AutoBuyBestShuriken = Value

        while getgenv().settings.AutoBuyBestShuriken do
            task.wait(0.5)
            buyBestShuriken()
        end
	end,
})

local b = Window:CreateTab("Teleports")

local Section = b:CreateSection("Instant Unlock")

local Button = b:CreateButton({
	Name = "Unlock all islands",
	Callback = function()
        local oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        for _,v in pairs(game:GetService("Workspace").islandUnlockParts:GetChildren()) do
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
            wait(0.1)
        end
        wait(0.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = oldcframe
	end,
})

local Section = b:CreateSection("Teleports")

local Dropdown = b:CreateDropdown({
	Name = "World",
	Options = worldtable,
	CurrentOption = "nil",
	Flag = "sss", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Option)
        getgenv().settings.selected = Option
	end,
})

local Button = b:CreateButton({
	Name = "Teleport",
	Callback = function()
        local selected = getgenv().settings.selected
        game.Players.LocalPlayer.Character:MoveTo(selected.Position)
	end,
})