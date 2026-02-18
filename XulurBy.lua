--[[ BRAINROT HUB by Xulur - SCRIPT UTAMA ]]

-- Panggil library Chloe X
loadstring(game:HttpGet("https://raw.githubusercontent.com/szxxcc956/XulurBy/main/Xulur.lua"))()

-- Tunggu library selesai load
wait(1)

-- Setup variable
local P = game.Players.LocalPlayer

-- Create window pake Chloe X
local Window = Chloex:Window({
    Title = "🧠 BRAINROT HUB",
    Footer = "by Xulur",
    Color = Color3.fromRGB(255, 0, 255),
    ["Tab Width"] = 120,
    Version = 1
})

-- HOME TAB
local HomeTab = Window:CreateTab("🏠 HOME", "rbxassetid://107005941750079")
local HomeSection = HomeTab:CreateSection("Info")
HomeSection:AddButton("👋 Halo " .. P.Name, function() end)

-- FARM TAB
local FarmTab = Window:CreateTab("⚙️ FARM", "rbxassetid://70386228443175")
local FarmSection = FarmTab:CreateSection("Auto Farm")
FarmSection:AddToggle("🚀 Auto Farm", false, function(v) print("Farm:", v) end)
FarmSection:AddToggle("🎯 Target Celestial", true, function(v) print("Target:", v) end)
FarmSection:AddToggle("⚡ Speed", false, function(v) print("Speed:", v) end)
FarmSection:AddToggle("🕳️ Underground", false, function(v) print("Under:", v) end)
FarmSection:AddButton("🔄 Test", function() print("Test") end)

-- ESP TAB
local ESPTab = Window:CreateTab("👁️ ESP", "rbxassetid://14321059114")
local ESPSection = ESPTab:CreateSection("ESP")
ESPSection:AddToggle("Enable ESP", false, function(v) print("ESP:", v) end)

-- WALL TAB
local WallTab = Window:CreateTab("🧱 WALLS", "rbxassetid://8601111810")
local WallSection = WallTab:CreateSection("Remove")
WallSection:AddToggle("Remove Walls", false, function(v) print("Walls:", v) end)
WallSection:AddToggle("Remove VIP", false, function(v) print("VIP:", v) end)

-- INFO TAB
local InfoTab = Window:CreateTab("📊 INFO", "rbxassetid://17510196486")
local InfoSection = InfoTab:CreateSection("Game")
InfoSection:AddButton("Escape Tsunami", function() end)
InfoSection:AddButton("Game ID: 131623223084840", function() end)

-- Notifikasi
chloex("BRAINROT HUB Loaded!", 4, Color3.fromRGB(0,255,0), "Sukses", "by Xulur")

print("✅ SCRIPT UTAMA JALAN")
