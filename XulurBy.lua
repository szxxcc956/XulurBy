--[[ BRAINROT HUB by Xulur - MAIN SCRIPT ]]

-- Load library Chloe X (file Xulur)
loadstring(game:HttpGet("https://raw.githubusercontent.com/szxxcc956/XulurBy/main/Xulur"))()
wait(1)

-- Create window
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
HomeSection:AddButton("👋 Halo " .. game.Players.LocalPlayer.Name, function() end)

-- FARM TAB
local FarmTab = Window:CreateTab("⚙️ FARM", "rbxassetid://70386228443175")
local FarmSection = FarmTab:CreateSection("Auto Farm")
FarmSection:AddToggle("🚀 Auto Farm", false, function(v) print("Farm:", v) end)

-- ESP TAB
local ESPTab = Window:CreateTab("👁️ ESP", "rbxassetid://14321059114")
local ESPSection = ESPTab:CreateSection("ESP")
ESPSection:AddToggle("Enable ESP", false, function(v) print("ESP:", v) end)

-- WALL TAB
local WallTab = Window:CreateTab("🧱 WALLS", "rbxassetid://8601111810")
local WallSection = WallTab:CreateSection("Remove")
WallSection:AddToggle("Remove Walls", false, function(v) print("Walls:", v) end)
WallSection:AddToggle("Remove VIP", false, function(v) print("VIP:", v) end)

-- Notifikasi
chloex("BRAINROT HUB Loaded!", 4, Color3.fromRGB(0,255,0), "Sukses", "by Xulur")

print("✅ MAIN SCRIPT LOADED")
