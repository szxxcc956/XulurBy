--[[ BRAINROT HUB by Xulur - CHLOE X ULTRA COMPRESSED ]]
local H=game:GetService("HttpService")local U=game:GetService("UserInputService")local T=game:GetService("TweenService")local P=game.Players.LocalPlayer local C=game:GetService("CoreGui")local V=workspace.CurrentCamera.ViewportSize
local function M(t,o)local d,D,s,S;local function u(i)local D=i.Position-s;local p=UDim2.new(S.X.Scale,S.X.Offset+D.X,S.Y.Scale,S.Y.Offset+D.Y)T:Create(o,TweenInfo.new(0.2),{Position=p}):Play()end
t.InputBegan:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseButton1 or i.UserInputType==Enum.UserInputType.Touch then d=true s=i.Position S=o.Position i.Changed:Connect(function()if i.UserInputState==Enum.UserInputState.End then d=false end)end)end end)
t.InputChanged:Connect(function(i)if i.UserInputType==Enum.UserInputType.MouseMovement or i.UserInputType==Enum.UserInputType.Touch then D=i end end)
U.InputChanged:Connect(function(i)if i==D and d then u(i)end end)end
local X={}function X:Notify(N)N=N or{}N.Title=N.Title or"Chloe X"N.Description=N.Description or"Notification"N.Color=N.Color or Color3.fromRGB(255,0,255)N.Delay=N.Delay or 5
spawn(function()if not C:FindFirstChild("NotifyGui")then local g=Instance.new("ScreenGui")g.ZIndexBehavior=Enum.ZIndexBehavior.Sibling g.Name="NotifyGui"g.Parent=C end
if not C.NotifyGui:FindFirstChild("NotifyLayout")then local l=Instance.new("Frame")l.AnchorPoint=Vector2.new(1,1)l.BackgroundTransparency=1 l.Position=UDim2.new(1,-30,1,-30)l.Size=UDim2.new(0,320,1,0)l.Name="NotifyLayout"l.Parent=C.NotifyGui end
local h=0 for _,v in C.NotifyGui.NotifyLayout:GetChildren()do h=-(v.Position.Y.Offset)+v.Size.Y.Offset+12 end
local f=Instance.new("Frame")local r=Instance.new("Frame")local c=Instance.new("UICorner")f.Size=UDim2.new(1,0,0,150)f.Name="NotifyFrame"f.BackgroundTransparency=1 f.Parent=C.NotifyGui.NotifyLayout f.AnchorPoint=Vector2.new(0,1)f.Position=UDim2.new(0,0,1,-h)
r.BackgroundColor3=Color3.new(0,0,0)r.BorderSizePixel=0 r.Position=UDim2.new(0,400,0,0)r.Size=UDim2.new(1,0,1,0)r.Name="NotifyFrameReal"r.Parent=f
c.CornerRadius=UDim.new(0,8)c.Parent=r
local t=Instance.new("Frame")t.BackgroundColor3=N.Color t.Size=UDim2.new(1,0,0,30)t.Parent=r
local l=Instance.new("TextLabel",t)l.Size=UDim2.new(1,-50,1,0)l.Position=UDim2.new(0,10,0,0)l.BackgroundTransparency=1 l.Text=N.Title l.TextColor3=Color3.new(1,1,1)l.Font=Enum.Font.GothamBold l.TextSize=16 l.TextXAlignment=Enum.TextXAlignment.Left
local d=Instance.new("TextLabel",r)d.Size=UDim2.new(1,-60,1,-50)d.Position=UDim2.new(0,50,0,40)d.BackgroundTransparency=1 d.Text=N.Description d.TextColor3=Color3.new(1,1,1)d.Font=Enum.Font.Gotham d.TextSize=14 d.TextWrapped=true d.TextXAlignment=Enum.TextXAlignment.Left
local x=Instance.new("TextButton",t)x.Size=UDim2.new(0,30,1,0)x.Position=UDim2.new(1,-30,0,0)x.BackgroundTransparency=1 x.Text="X"x.TextColor3=Color3.new(1,1,1)x.TextSize=20
x.MouseButton1Click:Connect(function()r:TweenPosition(UDim2.new(0,400,0,0),"Out","Quad",0.2,true)wait(0.2)f:Destroy()end)
spawn(function()wait(N.Delay)if r and r.Parent then r:TweenPosition(UDim2.new(0,400,0,0),"Out","Quad",0.2,true)wait(0.2)f:Destroy()end end)
r:TweenPosition(UDim2.new(0,0,0,0),"Out","Quad",0.5,true)end)end
function X:Window(W)W=W or{}W.Title=W.Title or"Chloe X"W.Subtitle=W.Subtitle or"by Chloex"W.Size=W.Size or UDim2.new(0,600,0,400)W.Position=W.Position or UDim2.new(0.5,-300,0.5,-200)W.Color=W.Color or Color3.fromRGB(255,0,255)
local G=Instance.new("ScreenGui")G.Name="ChloeX_"..W.Title:gsub("%s+","_")G.Parent=C G.ZIndexBehavior=Enum.ZIndexBehavior.Sibling G.DisplayOrder=100
local M=Instance.new("Frame")M.Size=W.Size M.Position=W.Position M.BackgroundColor3=Color3.fromRGB(15,15,20)M.BorderSizePixel=0 M.ClipsDescendants=true M.Parent=G
local R=Instance.new("UICorner")R.CornerRadius=UDim.new(0,8)R.Parent=M
local B=Instance.new("Frame")B.Size=UDim2.new(1,0,0,40)B.BackgroundColor3=W.Color B.BorderSizePixel=0 B.Parent=M
local Cnr=Instance.new("UICorner")Cnr.CornerRadius=UDim.new(0,8)Cnr.Parent=B
local L=Instance.new("TextLabel",B)L.Size=UDim2.new(1,-100,1,0)L.Position=UDim2.new(0,15,0,0)L.BackgroundTransparency=1 L.Text=W.Title L.TextColor3=Color3.new(1,1,1)L.Font=Enum.Font.GothamBold L.TextSize=18 L.TextXAlignment=Enum.TextXAlignment.Left
local S=Instance.new("TextLabel",B)S.Size=UDim2.new(1,-100,0,15)S.Position=UDim2.new(0,15,0,22)S.BackgroundTransparency=1 S.Text=W.Subtitle S.TextColor3=Color3.fromRGB(200,200,255)S.Font=Enum.Font.Gotham S.TextSize=11 S.TextXAlignment=Enum.TextXAlignment.Left
local Xb=Instance.new("TextButton",B)Xb.Size=UDim2.new(0,30,0,30)Xb.Position=UDim2.new(1,-35,0,5)Xb.BackgroundColor3=Color3.fromRGB(255,80,80)Xb.BorderSizePixel=0 Xb.Text="✕"Xb.TextColor3=Color3.new(1,1,1)Xb.TextScaled=true Xb.Font=Enum.Font.GothamBold
Xb.MouseButton1Click:Connect(function()G:Destroy()end)
local Tc=Instance.new("Frame")Tc.Size=UDim2.new(0,150,1,-40)Tc.Position=UDim2.new(0,0,0,40)Tc.BackgroundColor3=Color3.fromRGB(20,20,25)Tc.BorderSizePixel=0 Tc.Parent=M
local Tcc=Instance.new("UICorner")Tcc.CornerRadius=UDim.new(0,8)Tcc.Parent=Tc
local Cc=Instance.new("Frame")Cc.Size=UDim2.new(1,-150,1,-40)Cc.Position=UDim2.new(0,150,0,40)Cc.BackgroundColor3=Color3.fromRGB(18,18,23)Cc.BorderSizePixel=0 Cc.Parent=M
local Ccc=Instance.new("UICorner")Ccc.CornerRadius=UDim.new(0,8)Ccc.Parent=Cc
M(B,M)local Tabs={}local Current local function Switch(n)for _,t in ipairs(Tabs)do t.Container.Visible=(t.Name==n)if t.Name==n then Current=t end end end
local Wobj={}function Wobj:Tab(Tc)Tc=Tc or{}Tc.Name=Tc.Name or"Tab"Tc.Icon=Tc.Icon or"rbxassetid://107005941750079"
local Btn=Instance.new("TextButton")Btn.Size=UDim2.new(1,-10,0,40)Btn.Position=UDim2.new(0,5,0,5+(#Tabs*45))Btn.BackgroundColor3=Color3.fromRGB(30,30,35)Btn.BorderSizePixel=0 Btn.Text=""Btn.Parent=Tc
local Btnc=Instance.new("UICorner")Btnc.CornerRadius=UDim.new(0,6)Btnc.Parent=Btn
local Icn=Instance.new("ImageLabel")Icn.Size=UDim2.new(0,25,0,25)Icn.Position=UDim2.new(0,8,0.5,-12.5)Icn.BackgroundTransparency=1 Icn.Image=Tc.Icon Icn.ImageColor3=Color3.fromRGB(200,200,200)Icn.Parent=Btn
local Lbl=Instance.new("TextLabel")Lbl.Size=UDim2.new(1,-40,1,0)Lbl.Position=UDim2.new(0,35,0,0)Lbl.BackgroundTransparency=1 Lbl.Text=Tc.Name Lbl.TextColor3=Color3.fromRGB(200,200,200)Lbl.Font=Enum.Font.Gotham Lbl.TextSize=14 Lbl.TextXAlignment=Enum.TextXAlignment.Left Lbl.Parent=Btn
local Cont=Instance.new("ScrollingFrame")Cont.Size=UDim2.new(1,-20,1,-20)Cont.Position=UDim2.new(0,10,0,10)Cont.BackgroundTransparency=1 Cont.BorderSizePixel=0 Cont.ScrollBarThickness=4 Cont.ScrollBarImageColor3=W.Color Cont.CanvasSize=UDim2.new(0,0,0,0)Cont.Visible=false Cont.Parent=Cc
local Tob={Name=Tc.Name,Button=Btn,Container=Cont,Sections={}}
function Tob:Section(N)local y=0 for _,v in ipairs(Cont:GetChildren())do if v:IsA("Frame")then y=y+v.Size.Y.Offset+10 end end
local S=Instance.new("Frame")S.Size=UDim2.new(1,0,0,30)S.Position=UDim2.new(0,0,0,y)S.BackgroundColor3=Color3.fromRGB(25,25,30)S.BorderSizePixel=0 S.Parent=Cont
local Sc=Instance.new("UICorner")Sc.CornerRadius=UDim.new(0,6)Sc.Parent=S
local St=Instance.new("TextLabel")St.Size=UDim2.new(1,-15,1,0)St.Position=UDim2.new(0,10,0,0)St.BackgroundTransparency=1 St.Text=N St.TextColor3=W.Color St.Font=Enum.Font.GothamBold St.TextSize=14 St.TextXAlignment=Enum.TextXAlignment.Left St.Parent=S
local So={Frame=S,El={}}
function So:Toggle(Tg)Tg=Tg or{}Tg.Text=Tg.Text or"Toggle"Tg.Default=Tg.Default or false Tg.Callback=Tg.Callback or function()end
local y=0 for _,v in ipairs(S:GetChildren())do if v:IsA("Frame")and v~=St then y=y+v.Size.Y.Offset+5 end end
local F=Instance.new("Frame")F.Size=UDim2.new(1,-20,0,35)F.Position=UDim2.new(0,10,0,35+y)F.BackgroundColor3=Color3.fromRGB(30,30,35)F.BorderSizePixel=0 F.Parent=S
local Fc=Instance.new("UICorner")Fc.CornerRadius=UDim.new(0,6)Fc.Parent=F
local L=Instance.new("TextLabel")L.Size=UDim2.new(1,-60,1,0)L.Position=UDim2.new(0,10,0,0)L.BackgroundTransparency=1 L.Text=Tg.Text L.TextColor3=Color3.new(1,1,1)L.Font=Enum.Font.Gotham L.TextSize=14 L.TextXAlignment=Enum.TextXAlignment.Left L.Parent=F
local B=Instance.new("TextButton")B.Size=UDim2.new(0,50,0,25)B.Position=UDim2.new(1,-60,0.5,-12.5)B.BackgroundColor3=Tg.Default and Color3.fromRGB(0,200,100)or Color3.fromRGB(80,80,90)B.BorderSizePixel=0 B.Text=Tg.Default and"ON"or"OFF"B.TextColor3=Color3.new(1,1,1)B.Font=Enum.Font.GothamBold B.TextSize=12 B.Parent=F
local S=Tg.Default
B.MouseButton1Click:Connect(function()S=not S B.BackgroundColor3=S and Color3.fromRGB(0,200,100)or Color3.fromRGB(80,80,90)B.Text=S and"ON"or"OFF"Tg.Callback(S)end)
S.Size=UDim2.new(1,0,0,35+y+40)Cont.CanvasSize=UDim2.new(0,0,0,Cont.CanvasSize.Y.Offset+40)end
function So:Button(Bt)Bt=Bt or{}Bt.Text=Bt.Text or"Button"Bt.Callback=Bt.Callback or function()end
local y=0 for _,v in ipairs(S:GetChildren())do if v:IsA("Frame")and v~=St then y=y+v.Size.Y.Offset+5 end end
local B=Instance.new("TextButton")B.Size=UDim2.new(1,-20,0,35)B.Position=UDim2.new(0,10,0,35+y)B.BackgroundColor3=W.Color B.BorderSizePixel=0 B.Text=Bt.Text B.TextColor3=Color3.new(1,1,1)B.Font=Enum.Font.GothamBold B.TextSize=14 B.Parent=S
local Bc=Instance.new("UICorner")Bc.CornerRadius=UDim.new(0,6)Bc.Parent=B
B.MouseButton1Click:Connect(function()Bt.Callback()end)
S.Size=UDim2.new(1,0,0,35+y+40)Cont.CanvasSize=UDim2.new(0,0,0,Cont.CanvasSize.Y.Offset+40)end
function So:Label(T)local y=0 for _,v in ipairs(S:GetChildren())do if v:IsA("Frame")and v~=St then y=y+v.Size.Y.Offset+5 end end
local L=Instance.new("TextLabel")L.Size=UDim2.new(1,-20,0,20)L.Position=UDim2.new(0,10,0,35+y)L.BackgroundTransparency=1 L.Text=T L.TextColor3=Color3.fromRGB(200,200,200)L.Font=Enum.Font.Gotham L.TextSize=13 L.TextXAlignment=Enum.TextXAlignment.Left L.Parent=S
S.Size=UDim2.new(1,0,0,35+y+25)Cont.CanvasSize=UDim2.new(0,0,0,Cont.CanvasSize.Y.Offset+25)end
table.insert(Tob.Sections,So)Cont.CanvasSize=UDim2.new(0,0,0,Cont.CanvasSize.Y.Offset+35)return So end
Btn.MouseButton1Click:Connect(function()Switch(Tc.Name)end)table.insert(Tabs,Tob)if #Tabs==1 then Switch(Tc.Name)end return Tob end return Wobj end return X

-- Script utama
local W=X:Window({Title="🧠 BRAINROT HUB",Subtitle="by Xulur",Color=Color3.fromRGB(255,0,255)})
local H=W:Tab({Name="🏠 HOME",Icon="rbxassetid://107005941750079"})
local HS=H:Section("Info")
HS:Label("👋 Halo "..P.Name)
HS:Button({Text="📱 DISCORD",Callback=function()setclipboard("discord.gg/brainrothub")X:Notify({Title="Sukses!",Description="Link Discord dicopy",Color=Color3.fromRGB(0,255,0)})end})

local F=W:Tab({Name="⚙️ FARM",Icon="rbxassetid://70386228443175"})
local FS=F:Section("Settings")
local cfg={farm=false,target="Celestial",spd=30,dep=0}
FS:Toggle({Text="🚀 Auto Farm",Default=false,Callback=function(v)cfg.farm=v end})
FS:Toggle({Text="🎯 Target",Default=false,Callback=function(v)end})
FS:Toggle({Text="⚡ Speed",Default=30,Callback=function(v)cfg.spd=v end})
FS:Toggle({Text="📏 Depth",Default=0,Callback=function(v)cfg.dep=v end})

local E=W:Tab({Name="👁️ ESP",Icon="rbxassetid://14321059114"})
local ES=E:Section("ESP")
ES:Toggle({Text="Enable ESP",Default=false,Callback=function(v)end})

local Wt=W:Tab({Name="🧱 WALLS",Icon="rbxassetid://8601111810"})
local WS=Wt:Section("Remove")
local wcfg={walls=false,vip=false}
WS:Toggle({Text="Remove Walls",Default=false,Callback=function(v)wcfg.walls=v end})
WS:Toggle({Text="Remove VIP",Default=false,Callback=function(v)wcfg.vip=v end})

print("✅ LOADED")
