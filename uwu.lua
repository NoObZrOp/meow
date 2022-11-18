local OrionLib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/shlexware/Orion/main/source")))()
local Window =
    OrionLib:MakeWindow(
    {
        Name = "KittyHub",
        HidePremium = false,
        IntroText = "enjoy and have fun!! <3",
        IntroEnabled = true,
        SaveConfig = true,
        ConfigFolder = "meoww nothing here!! go away!!"
    }
)

-- tabs

local Heals =
    Window:MakeTab(
    {
        Name = "Heals",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local AfkFarming =
    Window:MakeTab(
    {
        Name = "AfkFarming",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Keybinds =
    Window:MakeTab(
    {
        Name = "KeybindsFarm",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Visuals =
    Window:MakeTab(
    {
        Name = "Visuals",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Misc =
    Window:MakeTab(
    {
        Name = "Misc",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

local Credits =
    Window:MakeTab(
    {
        Name = "Credits",
        Icon = "rbxassetid://4483345998",
        PremiumOnly = false
    }
)

-- global variables

_G.AutoBlood = false
_G.AutoPumpkin = false
_G.AutoBerries = false
_G.AutoBluefruit = false
_G.AutoLemons = false
_G.AutoJelly = false
_G.PlantAura = false
_G.HarvestAura = false
_G.AutoBoxNew = false

--locals
local Player = game:GetService("Players").LocalPlayer
local FruitName
local CropName
local FruitName2
local CropName2

-- functions

function AutoHarvest()
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == CropName and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 100 then
            game.ReplicatedStorage.Events.Pickup:FireServer(v)
        end
    end
end

function AutoPlant()
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 100 then
            game.ReplicatedStorage.Events.InteractStructure:FireServer(v, FruitName)
        end
    end
end

function AutoBlood()
    while _G.AutoBlood == true do
        if _G.AutoBlood == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit") -- fruit
            end
            task.wait()
        end
    end
end

function AutoPumpkin()
    while _G.AutoPumpkin == true do
        if _G.AutoPumpkin == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Pumpkin") -- fruit
            end
            task.wait()
        end
    end
end

function AutoBerries()
    while _G.AutoBerries == true do
        if _G.AutoBerries == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry") -- fruit
            end
            task.wait()
        end
    end
end

function AutoBluefruit()
    while _G.AutoBluefruit == true do
        if _G.AutoBluefruit == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit") -- fruit
            end
            task.wait()
        end
    end
end

function AutoLemons()
    while _G.AutoLemons == true do
        if _G.AutoLemons == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Lemon") -- fruit
            end
            task.wait()
        end
    end
end

function AutoJelly()
    while _G.AutoJelly == true do
        if _G.AutoJelly == true then
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 90 then
                game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Jelly") -- fruit
            end
            task.wait()
        end
    end
end

function AutoBoxNew()
    while _G.AutoBoxNew == true do
        if _G.AutoBoxNew == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(45.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-45.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(39, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-39, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(32.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-32.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(26, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-26, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(19.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-19.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(13, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-13, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(6.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-6.5, -3, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(0, -3, 0))
            task.wait(0.1)
        end
    end
end

function PlantAura()
    while task.wait() do
        if not _G.PlantAura then
            return
        end

        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if
                    v.Name == "Plant Box" and
                        (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 100
                 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, FruitName2)
                    task.wait()
                end
            end
        end
    end
end

function HarvestAura()
    while task.wait(1) do
        if not _G.HarvestAura then
            return
        end

        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if
                    v.Name == CropName2 and
                        (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 100
                 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

-- toggles
local AutoHeals =
    Heals:AddSection(
    {
        Name = "BadAutoHealingForReborn"
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Bloodfruit",
        Default = false,
        Callback = function(Value)
            _G.AutoBlood = Value
            AutoBlood()
        end
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Pumpkin",
        Default = false,
        Callback = function(Value)
            _G.AutoPumpkin = Value
            AutoPumpkin()
        end
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Berries",
        Default = false,
        Callback = function(Value)
            _G.AutoBerries = Value
            AutoBerries()
        end
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Bluefruit",
        Default = false,
        Callback = function(Value)
            _G.AutoBluefruit = Value
            AutoBluefruit()
        end
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Lemons",
        Default = false,
        Callback = function(Value)
            _G.AutoLemons = Value
            AutoLemons()
        end
    }
)

Heals:AddToggle(
    {
        Name = "AutoHeal - Jelly",
        Default = false,
        Callback = function(Value)
            _G.AutoJelly = Value
            AutoJelly()
        end
    }
)

local TrashyBox =
    AfkFarming:AddSection(
    {
        Name = "PlantBoxxies"
    }
)

AfkFarming:AddToggle(
    {
        Name = "AutoBoxNew",
        Default = false,
        Callback = function(Value)
            _G.AutoBoxNew = Value
            AutoBoxNew()
        end
    }
)

local AutoFarming =
    AfkFarming:AddSection(
    {
        Name = "AutoFarming"
    }
)

AfkFarming:AddTextbox(
    {
        Name = "FruitName -- CaseSensetive!",
        Default = nil,
        TextDisappear = false,
        Callback = function(Value)
            if Value then
                FruitName2 = Value
            end
        end
    }
)

AfkFarming:AddTextbox(
    {
        Name = "CropName -- CaseSensetive!",
        Default = nil,
        TextDisappear = false,
        Callback = function(Value)
            if Value then
                CropName2 = Value
            end
        end
    }
)

AfkFarming:AddToggle(
    {
        Name = "PlantAura -- Buggy/Breaks Often Sorry.. :(",
        Default = false,
        Callback = function(Value)
            _G.PlantAura = Value
            PlantAura()
        end
    }
)

AfkFarming:AddToggle(
    {
        Name = "HarvestAura -- Buggy/Breaks Often Sorry.. :(",
        Default = false,
        Callback = function(Value)
            _G.HarvestAura = Value
            HarvestAura()
        end
    }
)

Keybinds:AddTextbox(
    {
        Name = "FruitName -- CaseSensetive!",
        Default = nil,
        TextDisappear = false,
        Callback = function(Value)
            if Value then
                FruitName = Value
            end
        end
    }
)

Keybinds:AddTextbox(
    {
        Name = "CropName -- CaseSensetive!",
        Default = nil,
        TextDisappear = false,
        Callback = function(Value)
            if Value then
                CropName = Value
            end
        end
    }
)

Keybinds:AddBind(
    {
        Name = "Auto - Plants Fruit You Set",
        Default = " ",
        Hold = false,
        Callback = function()
            AutoPlant()
        end
    }
)

Keybinds:AddBind(
    {
        Name = "Auto - Harvests Crop You Set",
        Default = " ",
        Hold = false,
        Callback = function()
            AutoHarvest()
        end
    }
)

Visuals:AddSlider(
    {
        Name = "Field Of View",
        Min = 10,
        Max = 120,
        Default = 70,
        Color = Color3.fromRGB(60, 234, 176),
        Increment = 1,
        ValueName = "FOV",
        Callback = function(Value)
            game.Workspace.CurrentCamera.FieldOfView = Value
        end
    }
)

Visuals:AddSlider(
    {
        Name = "Brightness",
        Min = 0.1,
        Max = 3,
        Default = 1,
        Color = Color3.fromRGB(60, 234, 176),
        Increment = 1,
        ValueName = "Brightness",
        Callback = function(Value)
            game.Lighting.Brightness = Value
        end
    }
)

Visuals:AddSlider(
    {
        Name = "Saturation",
        Min = 0.1,
        Max = 3,
        Default = 0.1,
        Color = Color3.fromRGB(60, 234, 176),
        Increment = 0.1,
        ValueName = "Saturation",
        Callback = function(Value)
            game.Lighting.ColorCorrection.Saturation = Value
        end
    }
)

Visuals:AddSlider(
    {
        Name = "Contrast",
        Min = 0.1,
        Max = 3,
        Default = 0.1,
        Color = Color3.fromRGB(60, 234, 176),
        Increment = 0.1,
        ValueName = "Contrast",
        Callback = function(Value)
            game.Lighting.ColorCorrection.Contrast = Value
        end
    }
)

Visuals:AddSlider(
    {
        Name = "FogEnd",
        Min = 100,
        Max = 4500,
        Default = 4500,
        Color = Color3.fromRGB(60, 234, 176),
        Increment = 100,
        ValueName = "FogEnd",
        Callback = function(Value)
            game.Lighting.FogEnd = Value
        end
    }
)

Misc:AddButton(
    {
        Name = "Tp To Void - Reborn",
        Callback = function()
            game:GetService("TeleportService"):Teleport(10767870749)
        end
    }
)

Misc:AddButton(
    {
        Name = "Tp To Void - Pluto + Wave's VeryBadOverhealGame",
        Callback = function()
            game:GetService("TeleportService"):Teleport(11533469122)
        end
    }
)

local meoww =
    Credits:AddSection(
    {
        Name = "Credits : "
    }
)

local nyaa =
    Credits:AddSection(
    {
        Name = "1. Yours Truly, kitty <3 "
    }
)

local uwu =
    Credits:AddSection(
    {
        Name = ":3 nya~"
    }
)

local stolenhehe =
    Credits:AddSection(
    {
        Name = "meow get robbed uwu"
    }
)

local totallynotskiddedscript =
    Credits:AddSection(
    {
        Name = "shitty~ I mean really good code cause I totally made it.. :3 "
    }
)

local ToggleGuiKeyBind =
    Credits:AddSection(
    {
        Name = "Right Shift -- opens ui btw"
    }
)
OrionLib:Init()
