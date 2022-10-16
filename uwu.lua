local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Meow", HidePremium = false,IntroText = "Enjoy uwu",IntroEnabled = true, SaveConfig = true, ConfigFolder = "meow uwu"})

-- tabs

local Heals = Window:MakeTab({
	Name = "Heals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Farming = Window:MakeTab({
	Name = "Farming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local AfkFarming = Window:MakeTab({
	Name = "AfkFarming",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Visuals = Window:MakeTab({
	Name = "Visuals",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Keybinds = Window:MakeTab({
	Name = "Keybinds",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Misc = Window:MakeTab({
	Name = "Misc",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local Credits = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- global variables

_G.AutoBlood = false
_G.AutoPumpkin = false
_G.AutoBerries = false
_G.AutoBluefruit = false
_G.AutoLemons = false
_G.AutoJelly = false
_G.AutoBoxNew = false
_G.AutoBoxesLazyS = false
_G.AutoBoxesL1 = false
_G.AutoBoxesL2 = false
_G.AutoBoxesL3 = false
_G.AutoBoxesL4 = false
_G.AutoBoxesL5 = false
_G.AutoBoxesL6 = false
_G.AutoPlant = false
_G.AutoHarvest = false
_G.AutoPlant2 = false
_G.AutoHarvest2 = false
_G.AutoPlant3 = false
_G.AutoHarvest3 = false
_G.AutoPlant4 = false
_G.AutoHarvest4 = false
_G.AutoPlant5 = false
_G.AutoHarvest5 = false
_G.AutoPlant6 = false
_G.AutoHarvest6 = false

--locals
local Player = game:GetService("Players").LocalPlayer
local FruitName
local CropName

-- functions

function AutoPickUp()
    for _, v in pairs(workspace:GetChildren()) do
        if v.Name == CropName and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
            game.ReplicatedStorage.Events.Pickup:FireServer(v)
        end
    end
end

function AutoPlant()
    for _, v in pairs(workspace.Deployables:GetChildren()) do
        if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
            game.ReplicatedStorage.Events.InteractStructure:FireServer(v, FruitName)
        end
    end
end

function AutoBlood()
        while _G.AutoBlood == true do
        if _G.AutoBlood == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bloodfruit") -- fruit
         end
          task.wait()
       end
    end
end

function AutoPumpkin()
    while _G.AutoPumpkin == true do
        if _G.AutoPumpkin ==true then        
            if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Pumpkin") -- fruit
         end
          task.wait()
       end
    end
end
            
function AutoBerries()
    while _G.AutoBerries == true do
        if _G.AutoBerries == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Berry") -- fruit
        end
        task.wait()
       end
    end
end

function AutoBluefruit()
    while _G.AutoBluefruit == true do
        if _G.AutoBluefruit == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Bluefruit") -- fruit
         end
          task.wait()
       end
    end
end

function AutoLemons()
    while _G.AutoLemons == true do
        if _G.AutoLemons == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
        game:GetService("ReplicatedStorage").Events.UseBagItem:FireServer("Lemon") -- fruit
         end
          task.wait()
       end
    end
end

function AutoJelly()
    while _G.AutoJelly == true do
        if _G.AutoJelly == true then 
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 96 then
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
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(45.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-45.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(39, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-39, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(32.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-32.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(26, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-26, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(19.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-19.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(13, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-13, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(6.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-6.5, -4, 0))
            happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(0, -4, 0))
            task.wait(0.026)
        end
    end
end

function AutoBoxesLazySlow() 
    while _G.AutoBoxesLazyS == true do
        if _G.AutoBoxesLazyS == true then
local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait (9.69) 
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -5.5), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -5.5), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -5.5), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -5.5), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -5.5), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -10), 0)
        task.wait(0.069420)
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -5.5), 0)
        task.wait(0.069420)
        end
    end
end

function AutoBoxesL1() 
    while _G.AutoBoxesL1 == true do
        if _G.AutoBoxesL1 == true then
local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait() 
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4.5, -5.5), 0)
        task.wait()
        end
    end
end

function AutoBoxesL2() 
    while _G.AutoBoxesL2 == true do
        if _G.AutoBoxesL2 == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -4, -5.5), 0)
        task.wait()
        end
    end
end

function AutoBoxesL3() 
    while _G.AutoBoxesL3 == true do
        if _G.AutoBoxesL3 == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait() 
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3.5, -5.5), 0)
        task.wait()
        end
    end
end

function AutoBoxesL4() 
    while _G.AutoBoxesL4 == true do
        if _G.AutoBoxesL4 == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait() 
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -3, -5.5), 0)
        task.wait()
        end
    end
end

function AutoBoxesL5() 
    while _G.AutoBoxesL5 == true do
        if _G.AutoBoxesL5 == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2.5, -5.5), 0)
        task.wait()
        end
    end
end

function AutoBoxesL6() 
    while _G.AutoBoxesL6 == true do
        if _G.AutoBoxesL6 == true then
            local happyghosty = game:GetService("ReplicatedStorage").Events.PlaceStructure
            local playerhrp = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
        task.wait() 
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -14), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -13.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -13), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -12.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -12), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -11.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -11), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -10.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -10), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -9.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -9), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -8.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -8), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -7.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -7), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -6.5), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -6), 0)
        task.wait()
        happyghosty:FireServer("Plant Box", playerhrp.CFrame * CFrame.new(-0, -2, -5.5), 0)
        task.wait()
        end
    end
end

function AutoPlantBlood()
    while task.wait() do 
        if not _G.AutoPlant1 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Bloodfruit")
                    task.wait()
                end
            end
        end
    end
end

function AutoHarvestBlood()
    while task.wait(0.2) do
        if not _G.AutoHarvest1 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Bloodfruit Bush" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

function AutoPlantBerry()
    while task.wait() do 
        if not _G.AutoPlant2 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Berry")
                    task.wait()
                end
            end
        end
    end
end


function AutoHarvestBerry()
    while task.wait(0.2) do
        if not _G.AutoHarvest2 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Pumpkin Patch Crop" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

function AutoPlantBlue()
    while task.wait() do 
        if not _G.AutoPlant3 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Bluefruit")
                    task.wait()
                end
            end
        end
    end
end


function AutoHarvestBlue()
    while task.wait(0.2) do
        if not _G.AutoHarvest3 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Bluefruit Bush" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

function AutoPlantLemon()
    while task.wait() do 
        if not _G.AutoPlant4 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Lemon")
                    task.wait()
                end
            end
        end
    end
end


function AutoHarvestLemon()
    while task.wait(0.2) do
        if not _G.AutoHarvest4 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Lemon Tree" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

function AutoPlantJelly()
    while task.wait() do 
        if not _G.AutoPlant5 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Jelly")
                    task.wait()
                end
            end
        end
    end
end


function AutoHarvestJelly()
    while task.wait(0.2) do
        if not _G.AutoHarvest5 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Jelly Crop" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

function AutoPlantPumpkins()
    while task.wait() do 
        if not _G.AutoPlant6 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Pumpkin")
                    task.wait()
                end
            end
        end
    end
end


function AutoHarvestPumpkins()
    while task.wait(0.2) do
        if not _G.AutoHarvest6 then 
            return 
        end
        
        if (Player.Character and Player.Character.PrimaryPart) then
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Pumpkin Patch Crop" and (Player.Character.PrimaryPart.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
    end
end

-- toggles

Heals:AddToggle({
	Name = "AutoHeal - Bloodfruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBlood = Value
        AutoBlood()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Pumpkin",
	Default = false,
	Callback = function(Value)
		_G.AutoPumpkin = Value
        AutoPumpkin()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Berries",
	Default = false,
	Callback = function(Value)
		_G.AutoBerries = Value
        AutoBerries()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Bluefruit",
	Default = false,
	Callback = function(Value)
		_G.AutoBluefruit = Value
        AutoBluefruit()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Lemons",
	Default = false,
	Callback = function(Value)
		_G.AutoLemons = Value
        AutoLemons()
	end    
})

Heals:AddToggle({
	Name = "AutoHeal - Jelly",
	Default = false,
	Callback = function(Value)
		_G.AutoJelly = Value
        AutoJelly()
	end    
})

local TrashyBox = Farming:AddSection({
	Name = "Boxxy"
})
Farming:AddToggle({
	Name = "AutoBoxNew",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxNew = Value
        AutoBoxNew()
	end    
})

local FruitToFarm = Farming:AddSection({
	Name = "Fruits to farm"
})

Farming:AddButton({
	Name = "Autofarm - Bloodfruit",
	Callback = function()
        local placekey = "p"
        local plantkey = "["
        local collectkey = "]"
        local amountofpots = 40  
        

        local Mouse = Player:GetMouse()
        
        _G.plant = function()
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Bloodfruit")
                end
            end
        end
        
        _G.collect = function()
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Bloodfruit Bush" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
        
        Mouse.KeyUp:connect(function(k)
            if k == placekey then
                for i = 1, amountofpots do
                    game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                end
            elseif k == plantkey then
                _G.plant()
            elseif k == collectkey then
                _G.collect()
            end
        end)
  	end    
})

Farming:AddButton({
	Name = "Autofarm - Berries",
	Callback = function()
        local placekey = "p"
        local plantkey = "["
        local collectkey = "]"
        local amountofpots = 40  
        

        local Mouse = Player:GetMouse()
        
        _G.plant = function()
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Berry")
                end
            end
        end
        
        _G.collect = function()
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Berry Bush" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
        
        Mouse.KeyUp:connect(function(k)
            if k == placekey then
                for i = 1, amountofpots do
                    game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                end
            elseif k == plantkey then
                _G.plant()
            elseif k == collectkey then
                _G.collect()
            end
        end)
  	end    
})

Farming:AddButton({
	Name = "Autofarm - Bluefruit",
	Callback = function()
        local placekey = "p"
        local plantkey = "["
        local collectkey = "]"
        local amountofpots = 40  
        

        local Mouse = Player:GetMouse()
        
        _G.plant = function()
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Bluefruit")
                end
            end
        end
        
        _G.collect = function()
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Bluefruit Bush" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
        
        Mouse.KeyUp:connect(function(k)
            if k == placekey then
                for i = 1, amountofpots do
                    game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                end
            elseif k == plantkey then
                _G.plant()
            elseif k == collectkey then
                _G.collect()
            end
        end)
  	end    
})

Farming:AddButton({
	Name = "Autofarm - Lemons",
	Callback = function()
        local placekey = "p"
        local plantkey = "["
        local collectkey = "]"
        local amountofpots = 40  
        

        local Mouse = Player:GetMouse()
        
        _G.plant = function()
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Lemon")
                end
            end
        end
        
        _G.collect = function()
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Lemon Tree" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
        
        Mouse.KeyUp:connect(function(k)
            if k == placekey then
                for i = 1, amountofpots do
                    game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                end
            elseif k == plantkey then
                _G.plant()
            elseif k == collectkey then
                _G.collect()
            end
        end)
  	end    
})

Farming:AddButton({
	Name = "Autofarm - Jelly",
	Callback = function()
        local placekey = "p"
        local plantkey = "["
        local collectkey = "]"
        local amountofpots = 40  
        

        local Mouse = Player:GetMouse()
        
        _G.plant = function()
            for _, v in pairs(workspace.Deployables:GetChildren()) do
                if v.Name == "Plant Box" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.InteractStructure:FireServer(v, "Jelly")
                end
            end
        end
        
        _G.collect = function()
            for _, v in pairs(workspace:GetChildren()) do
                if v.Name == "Jelly Crop" and (Player.Character.Head.Position - v.PrimaryPart.Position).magnitude < 50 then
                    game.ReplicatedStorage.Events.Pickup:FireServer(v)
                end
            end
        end
        
        Mouse.KeyUp:connect(function(k)
            if k == placekey then
                for i = 1, amountofpots do
                    game.ReplicatedStorage.Events.PlaceStructure:FireServer("Plant Box", Mouse.Hit, 0)
                end
            elseif k == plantkey then
                _G.plant()
            elseif k == collectkey then
                _G.collect()
            end
        end)
  	end    
})

local AfkBoxes = AfkFarming:AddSection({
	Name = "AutoPlantBoxBeta -- Patched/Outdated"
})

AfkFarming:AddToggle({
	Name = "AutoBoxesLazySlow",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesLazyS = Value
        AutoBoxesLazySlow()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL1",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL1 = Value
        AutoBoxesL1()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL2",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL2 = Value
        AutoBoxesL2()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL3",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL3 = Value
        AutoBoxesL3()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL4",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL4 = Value
        AutoBoxesL4()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL5",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL5 = Value
        AutoBoxesL5()
	end    
})

AfkFarming:AddToggle({
	Name = "AutoBoxesL6",
	Default = false,
	Callback = function(Value)
		_G.AutoBoxesL6 = Value
        AutoBoxesL6()
	end    
})

local AfkFarmingBlood = AfkFarming:AddSection({
	Name = "AfkFarmingBlood"
})

AfkFarming:AddToggle({
	Name = "AfkPlantBlood",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant = Value
        AutoPlantBlood()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestBlood -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest = Value
        AutoHarvestBlood()
	end    
})

local AfkFarmingBerry = AfkFarming:AddSection({
	Name = "AfkFarmingBerry"
})

AfkFarming:AddToggle({
	Name = "AfkPlantBerry",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant2 = Value
        AutoPlantBerry()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestBerry -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest2 = Value
        AutoHarvestBerry()
	end    
})

local AfkFarmingBlue = AfkFarming:AddSection({
	Name = "AfkFarmingBlue"
})

AfkFarming:AddToggle({
	Name = "AfkPlantBlue",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant3 = Value
        AutoPlantBlue()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestBlue -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest3 = Value
        AutoHarvestBlue()
	end    
})

local AfkFarmingLemon = AfkFarming:AddSection({
	Name = "AfkFarmingLemon"
})

AfkFarming:AddToggle({
	Name = "AfkPlantLemon",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant4 = Value
        AutoPlantLemon()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestLemon -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest4 = Value
        AutoHarvestLemon()
	end    
})

local AfkFarmingJelly = AfkFarming:AddSection({
	Name = "AfkFarmingJelly"
})

AfkFarming:AddToggle({
	Name = "AfkPlantJelly",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant5 = Value
        AutoPlantJelly()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestJelly -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest5 = Value
        AutoHarvestJelly()
	end    
})

local AfkFarmingPumpkins = AfkFarming:AddSection({
	Name = "AfkFarmingPumpkins"
})

AfkFarming:AddToggle({
	Name = "AfkPlantPumpkins",
	Default = false,
	Callback = function(Value)
		_G.AutoPlant6 = Value
        AutoPlantPumpkins()
	end    
})

AfkFarming:AddToggle({
	Name = "AfkHarvestPumpkins -- Buggy/Breaks After A While :(",
	Default = false,
	Callback = function(Value)
		_G.AutoHarvest6 = Value
        AutoHarvestPumpkins()
	end    
})

Visuals:AddSlider({
	Name = "Field Of View",
	Min = 10,
	Max = 120,
	Default = 70,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 1,
	ValueName = "FOV",
	Callback = function(Value)
		game.Workspace.CurrentCamera.FieldOfView  = Value
	end    
})

Visuals:AddSlider({
	Name = "Brightness",
	Min = 0.1,
	Max = 3,
	Default = 1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 1,
	ValueName = "Brightness",
	Callback = function(Value)
		game.Lighting.Brightness  = Value
	end    
})

Visuals:AddSlider({
	Name = "Saturation",
	Min = 0.1,
	Max = 3,
	Default = 0.1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Saturation",
	Callback = function(Value)
		game.Lighting.ColorCorrection.Saturation  = Value
	end    
})

Visuals:AddSlider({
	Name = "Contrast",
	Min = 0.1,
	Max = 3,
	Default = 0.1,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 0.1,
	ValueName = "Contrast",
	Callback = function(Value)
		game.Lighting.ColorCorrection.Contrast  = Value
	end    
})

Visuals:AddSlider({
	Name = "FogEnd",
	Min = 100,
	Max = 4500,
	Default = 4500,
	Color = Color3.fromRGB(60, 234, 176),
	Increment = 100,
	ValueName = "FogEnd",
	Callback = function(Value)
		game.Lighting.FogEnd  = Value
	end    
})

Keybinds:AddTextbox({
	Name = "FruitName --CaseSensetive",
	Default = nil,
	TextDisappear = false,
	Callback = function(Value)
    if Value then
        FruitName = Value
    end
end	  
})

Keybinds:AddTextbox({
	Name = "CropName --CaseSensetive",
	Default = nil,
	TextDisappear = false,
	Callback = function(Value)
    if Value then 
        CropName = Value
    end
end
})

Keybinds:AddBind({
	Name = "Auto - Pickup Crop You Set",
	Default = nil,
	Hold = false,
	Callback = function()
		AutoPickUp()
	end    
})

Keybinds:AddBind({
	Name = "Auto - Plant Fruit You Set",
	Default = nil,
	Hold = false,
	Callback = function()
		AutoPlant()
	end    
})

Misc:AddButton({
	Name = "Tp To Void",
	Callback = function()
        game:GetService("TeleportService"):Teleport(10767870749)
  	end    
})

local Credits1 = Credits:AddSection({
	Name = "meow get robbed uwu"
})

local Credits2 = Credits:AddSection({
	Name = "shitty code cause totally not borrowed"
})

local Credits2 = Credits:AddSection({
	Name = "by kitty~   uwu "
})

local Credits2 = Credits:AddSection({
	Name = "by kitty~   uwu "
})

local Credits2 = Credits:AddSection({
	Name = "meow meow meoww "
})

local Credits2 = Credits:AddSection({
	Name = "meow meow meoww "
})

local Credits2 = Credits:AddSection({
	Name = "meow meow meoww "
})

local Credits2 = Credits:AddSection({
	Name = "meow meow meoww "
})

local ToggleGuiKeyBind = Credits:AddSection({
	Name = "Right Shift - Open ui"
})

OrionLib:Init()
