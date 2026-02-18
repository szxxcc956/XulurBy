--[[ BRAINROT HUB by Xulur ]]

-- Panggil library Chloe dari repo library
loadstring(game:HttpGet("https://raw.githubusercontent.com/szxxcc956/library/main/ChloeLib.lua"))()

-- Tunggu library selesai load
wait(1)

-- Setup variable
local P = game.Players.LocalPlayer

-- Create window pake Chloe X
local Window = Chloex:Window({
    Title = "🧠 BRAINROT HUB",
    Footer = "by Xulur",
    Color = Color3.fromRGB(255, 0, 255), -- Pink khas Chloe
    ["Tab Width"] = 120,
    Version = 1
})

-- Buat tab HOME
local HomeTab = Window:CreateTab("🏠 HOME", "rbxassetid://107005941750079")
local HomeSection = HomeTab:CreateSection("Info")
HomeSection:AddButton("👋 Halo " .. P.Name, function() end)

-- Buat tab FARM
local FarmTab = Window:CreateTab("⚙️ FARM", "rbxassetid://70386228443175")
local FarmSection = FarmTab:CreateSection("Auto Farm Settings")

-- Toggle auto farm
FarmSection:AddToggle("🚀 Auto Farm", false, function(value)
    print("Auto Farm:", value)
end)

-- Toggle target
FarmSection:AddToggle("🎯 Target Celestial", true, function(value)
    print("Target:", value)
end)

-- Toggle speed
FarmSection:AddToggle("⚡ Speed Boost", false, function(value)
    print("Speed:", value)
end)

-- Toggle underground
FarmSection:AddToggle("🕳️ Underground Mode", false, function(value)
    print("Underground:", value)
end)

-- Button test
FarmSection:AddButton("🔄 Test Button", function()
    print("Button clicked")
    chloex("Button clicked!", 3, Color3.fromRGB(0,255,0), "Sukses", "Test")
end)

-- Buat tab ESP
local ESPTab = Window:CreateTab("👁️ ESP", "rbxassetid://14321059114")
local ESPSection = ESPTab:CreateSection("ESP Settings")
ESPSection:AddToggle("Enable ESP", false, function(v) print("ESP:", v) end)

-- Buat tab WALL
local WallTab = Window:CreateTab("🧱 WALLS", "rbxassetid://8601111810")
local WallSection = WallTab:CreateSection("Remove Obstacles")
WallSection:AddToggle("Remove Walls", false, function(v) print("Walls:", v) end)
WallSection:AddToggle("Remove VIP", false, function(v) print("VIP:", v) end)

-- Buat tab INFO
local InfoTab = Window:CreateTab("📊 INFO", "rbxassetid://17510196486")
local InfoSection = InfoTab:CreateSection("Game Info")
InfoSection:AddButton("Escape Tsunami For Brainrots", function() end)
InfoSection:AddButton("Game ID: 131623223084840", function() end)

-- Notifikasi awal
chloex("BRAINROT HUB Loaded!", 4, Color3.fromRGB(0,255,0), "Sukses", "by Xulur")

print("✅ BRAINROT HUB - CHLOE EDITION LOADED")
