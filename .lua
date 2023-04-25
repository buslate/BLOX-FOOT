wait(1)
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
local Window = Library:CreateWindow({

    Title = 'BusLate X HUB',
    Center = true, 
    AutoShow = true,
})
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Main'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
   
}
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('AutoFarm⚔️')
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'AutoFarm Level',
    Default = true, -- Default value (true / false)
    Tooltip = 'FarmLevel', -- Information shown when you hover over the toggle
})

Weapon = {}
for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
    if v:IsA"Tool" then
        table.insert(Weapon,v.Name)
    end
    end

LeftGroupBox:AddDropdown('MyDropdown', {
    Values = Weapon,
    Default = 1, -- number index of the value / string
    Multi = false, -- true / false, allows multiple choices to be selected

    Text = 'Weapon',
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
})

Options.MyDropdown:OnChanged(function(w)
    _G.SelectWeapon = w
end)

Options.MyDropdown:SetValue('Weapon')

Toggles.MyToggle:OnChanged(function(a)
    _G.Auto_Farm = a -- true / false

function totarget(p)
    local Distance2 = (p.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local tween_s = game:service"TweenService"
    local info = TweenInfo.new(Distance2/350, Enum.EasingStyle.Linear)
    local tween = tween_s:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = p})
    tween:Play()
    if Distance2 <= 75 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
    end
end

function checklevel()
    local lv = game:GetService("Players").LocalPlayer.Data.Level.Value
    if lv == 1 or lv <= 9 then
        Mon = "Bandit [Lv. 5]"
        Title = "Bandit"
        QuestName = "BanditQuest1"
        QuestNumber = 1
        CFrameQuest = CFrame.new(1061.15271, 16.7367725, 1548.93018, -0.836085379, -3.89774577e-08, 0.548599303, -1.17575967e-08, 1, 5.31300408e-08, -0.548599303, 3.79710414e-08, -0.836085379)
        CFrameMon = CFrame.new(1151.11829, 16.7761021, 1599.73499, -0.999999762, 0, -0.000701809535, 0, 1, 0, 0.000701809535, 0, -0.999999762)
        CFramePuk = CFrame.new(1101.75903, 67.6758957, 1617.50391, -0.399259984, -5.24373327e-08, -0.916837752, -1.74068084e-08, 1, -4.96134582e-08, 0.916837752, -3.84945009e-09, -0.399259984)
    elseif lv == 10 or lv <= 14 then
        Mon = "Monkey [Lv. 14]"
        Title = "Monkey"
        QuestName = "JungleQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-1599.23096, 37.8653831, 153.335953, -0.0493941903, 1.29583286e-08, 0.998779356, 3.21716165e-08, 1, -1.13831318e-08, -0.998779356, 3.15700852e-08, -0.0493941903)
        CFrameMon = CFrame.new(-1479.76099, 23.195364, 106.327942, 0.96289885, 5.22265786e-10, -0.269862473, 6.59528099e-10, 1, 4.28857172e-09, 0.269862473, -4.30744285e-09, 0.96289885)
        CFramePuk = CFrame.new(-1776.32959, 61.1782455, 66.8902054, -0.912609756, -2.38546143e-08, 0.408831745, -2.14773621e-08, 1, 1.04056577e-08, -0.408831745, 7.15677129e-10, -0.912609756)
        elseif lv == 15 or lv <= 29 then
        Mon = "Gorilla [Lv. 20]"
        Title = "Gorilla"
        QuestName = "JungleQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-1599.23096, 37.8653831, 153.335953, -0.0493941903, 1.29583286e-08, 0.998779356, 3.21716165e-08, 1, -1.13831318e-08, -0.998779356, 3.15700852e-08, -0.0493941903)
        CFrameMon = CFrame.new(-1242.46655, 6.62262297, -523.166382, -0.974416733, 9.23166681e-08, -0.224748924, 9.58993027e-08, 1, -5.02435071e-09, 0.224748924, -2.64490758e-08, -0.974416733)
        CFramePuk = CFrame.new(-1133.4574, 40.8067436, -526.086792, 0.647179008, -2.76535794e-10, 0.762338042, 3.26674865e-08, 1, -2.73699801e-08, -0.762338042, 4.26169464e-08, 0.647179008)
    elseif lv == 30 or lv <= 39 then
        Mon = "Pirate [Lv. 35]"
        Title = "Pirate"
        QuestName = "BuggyQuest1"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-1141.3114013671875, 5.1520514488220215, 3830.2998046875)
        CFrameMon = CFrame.new(-1128.2716064453125, 4.752050399780273, 3942.415771484375)
        CFramePuk = CFrame.new(-1195.7286376953125, 44.75202941894531, 3842.22021484375)
        elseif lv == 40 or lv <= 59 then
        Mon = "Brute [Lv. 45]"
        Title = "Brute"
        QuestName = "BuggyQuest1"
        QuestNumber = 2
        CFrameQuest = CFrame.new(-1141.3114013671875, 5.1520514488220215, 3830.2998046875)
        CFrameMon = CFrame.new(-1135.80712890625, 14.809873580932617, 4294.162109375)
        CFramePuk = CFrame.new(-1185.4002685546875, 10.241965293884277, 4479.19873046875)
    elseif lv == 60 or lv <= 74 then
        Mon = "Desert Bandit [Lv. 60]"
        Title = "Desert Bandit"
        QuestName = "DesertQuest"
        QuestNumber = 1
        CFrameQuest = CFrame.new(895.8423461914062, 6.438462734222412, 4391.177734375)
        CFrameMon = CFrame.new(932.6149291992188, 6.450390338897705, 4483.6650390625)
        CFramePuk = CFrame.new(831.3095092773438, 21.566604614257812, 4496.11474609375)
        elseif lv == 75 or lv <= 119 then
        Mon = "Desert Officer [Lv. 70]"
        Title = "Desert Officer"
        QuestName = "DesertQuest"
        QuestNumber = 2
        CFrameQuest = CFrame.new(895.8423461914062, 6.438462734222412, 4391.177734375)
        CFrameMon = CFrame.new(1609.805419921875, 1.6109551191329956, 4375.03125)
        CFramePuk = CFrame.new(1656.8251953125, 9.899896621704102, 4453.896484375)
    elseif lv == 120 or lv <= 149 then
        Mon = "Chief Petty Officer [Lv. 120]"
        Title = "Chief Petty Officer"
        QuestName = "MarineQuest2"
        QuestNumber = 1
        CFrameQuest = CFrame.new(-5038.0634765625, 28.65203285217285, 4324.37255859375)
        CFrameMon = CFrame.new(-4737.5537109375, 20.65203285217285, 4533.75244140625)
        CFramePuk = CFrame.new(-4779.74853515625, 74.91291046142578, 4481.4365234375)
    end
end

spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.Auto_Farm then
            checklevel()
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
totarget(CFrameQuest)
wait(.3)
local args = {
    [1] = "StartQuest",
    [2] = QuestName,
    [3] = QuestNumber
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        for i,v2 in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Mon and v2.Name == Mon then
            totarget(v.HumanoidRootPart.CFrame * CFrame.new(0,0,15))
            v.HumanoidRootPart.Size = Vector3.new(60,2.5,60)
            v.HumanoidRootPart.CFrame = CFrameMon
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
            v2.HumanoidRootPart.CanCollide = false
            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
        end
        end
    end
                end
            end
        end)
    end
end)

spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.Auto_Farm then
            checklevel()
    if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, Title) then
local args = {
    [1] = "AbandonQuest"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
            end
        end)
    end
end)

spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.Auto_Farm then
            checklevel()
            if not game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                totarget(CFramePuk)
            end
            end
        end)
    end
end)

spawn(function()
    while task.wait(.1) do
        pcall(function()
            if _G.Auto_Farm then
            checklevel()
            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
        if v.Name == Mon then
            if v.Humanoid.Health == 0 then
            v:Destroy()
            end
            end
            end
            end
        end)
    end
end)
end)
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'FastAttack',
    Default = false, -- Default value (true / false)
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the toggle
})
Toggles.MyToggle:OnChanged(function(f)
for i=1,2 do
print("รอบที่ "..i)
_G.FastAttack = f
_G.FastAttackType = "Safety"

local ExamList = {}

for i = 1, 20 do
    table.insert(ExamList, "Option "..i)
end
local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigController = require(game:GetService("Players")["LocalPlayer"].PlayerScripts.CombatFramework.RigController)
local RigControllerR = getupvalues(RigController)[2]
local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()

function CurrentWeapon()
	local ac = CombatFrameworkR.activeController
	local ret = ac.blades[1]
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	pcall(function()
		while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
	end)
	if not ret then return game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name end
	return ret
end

function getAllBladeHitsPlayers(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i=1,#Characters do local v = Characters[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function getAllBladeHits(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i=1,#Enemies do local v = Enemies[i]
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end

function AttackFunction()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		for indexincrement = 1, 1 do
			local bladehit = getAllBladeHits(50)
			if #bladehit > 0 then
				local AcAttack8 = debug.getupvalue(ac.attack, 5)
				local AcAttack9 = debug.getupvalue(ac.attack, 6)
				local AcAttack7 = debug.getupvalue(ac.attack, 4)
				local AcAttack10 = debug.getupvalue(ac.attack, 7)
				local NumberAc12 = (AcAttack8 * 798405 + AcAttack7 * 727595) % AcAttack9
				local NumberAc13 = AcAttack7 * 798405
				(function()
					NumberAc12 = (NumberAc12 * AcAttack9 + NumberAc13) % 1099511627776
					AcAttack8 = math.floor(NumberAc12 / AcAttack9)
					AcAttack7 = NumberAc12 - AcAttack8 * AcAttack9
				end)()
				AcAttack10 = AcAttack10 + 1
				debug.setupvalue(ac.attack, 5, AcAttack8)
				debug.setupvalue(ac.attack, 6, AcAttack9)
				debug.setupvalue(ac.attack, 4, AcAttack7)
				debug.setupvalue(ac.attack, 7, AcAttack10)
				for k, v in pairs(ac.animator.anims.basic) do
					v:Play(0.1,0.5,0.2,0.8)
				end                 
				if game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") and ac.blades and ac.blades[1] then 
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(CurrentWeapon()))
					game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(NumberAc12 / 1099511627776 * 16777215), AcAttack10)
					game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, 2, "") 
				end
			end
		end
	end
end

coroutine.wrap(function()
   while task.wait(.1) do
       local ac = CombatFrameworkR.activeController
         if ac and ac.equipped then
            if _G.FastAttack then
                AttackFunction()
                if _G.FastAttackType == "Fast" then
                    if tick() - cooldownfastattack < task.wait() then task.wait() cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Normal" then
                    if tick() - cooldownfastattack > 1.5 then wait(1) cooldownfastattack = tick() end
                elseif _G.FastAttackType == "Safety" then
                    if tick() - cooldownfastattack > .3 then wait(.5) cooldownfastattack = tick() end
                end
            elseif _G.FastAttack == false then
              else
                 CombatFrameworkR.activeController:Destroy()
                  if ac.hitboxMagnitude ~= 60 then
                     ac.hitboxMagnitude = 60
                  end
                 ac:attack()
             end
         end
     end
end)()
end
end)


LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Open Buso Haki',
    Default = false, -- Default value (true / false)
    Tooltip = 'This is a tooltip', -- Information shown when you hover over the toggle
})

Toggles.MyToggle:OnChanged(function(h)
_G.args = h

_G.args = {
    [1] = "Buso"
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(_G.args))

end)
LeftGroupBox:AddDivider()
Toggles.MyToggle:SetValue(false)
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Buy Haki')
local MyButton = LeftGroupBox:AddButton('Buy Geppo(10000)', function()
local args = {
    [1] = "BuyHaki",
    [2] = "Geppo"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local MyButton = LeftGroupBox:AddButton('Buy Buso(25000)', function()
local args = {
    [1] = "BuyHaki",
    [2] = "Buso"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)
local MyButton = LeftGroupBox:AddButton('Buy Soru(100000)', function()
local args = {
    [1] = "BuyHaki",
    [2] = "Soru"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end)

local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Stats')
LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Melle',
    Default = false, -- Default value (true / false)
    Tooltip = 'Melee', -- Information shown when you hover over the toggle
})


Toggles.MyToggle:OnChanged(function(stats)
    _G.args = stats
   while _G.args do 
       wait(0)
    _G.args = {
    [1] = "AddPoint",
    [2] = "Melee",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(_G.args)) 
end
end)
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Defense',
    Default = false, -- Default value (true / false)
    Tooltip = 'Defense', -- Information shown when you hover over the toggle
})


Toggles.MyToggle:OnChanged(function(stats)
_G.args = stats
    while _G.args do
        wait(0)
_G.args = {
    [1] = "AddPoint",
    [2] = "Defense",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(_G.args))
end
end)
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Sword',
    Default = false, -- Default value (true / false)
    Tooltip = 'Sword', -- Information shown when you hover over the toggle
})

Toggles.MyToggle:OnChanged(function(stats)
        _G.args = stats
   while _G.args do
       wait(0)
   _G.args = {
    [1] = "AddPoint",
    [2] = "Sword",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(_G.args))
end
end)
Toggles.MyToggle:SetValue(false)

LeftGroupBox:AddToggle('MyToggle', {
    Text = 'Fruit',
    Default = false, -- Default value (true / false)
    Tooltip = 'Fruit', -- Information shown when you hover over the toggle
})

Toggles.MyToggle:OnChanged(function(stats)
    _G.args = stats
    while _G.args do 
        wait(0)
    _G.args = {
    [1] = "AddPoint",
    [2] = "DemonFruit",
    [3] = 1
}
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(_G.args))
end
end)

Toggles.MyToggle:SetValue(false)

local MyButton = LeftGroupBox:AddButton('Redeem All EXP Code', function()
local args = {
    [1] = "15B_BESTBROTHERS"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Sub2CaptainMaui"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "DEVSCOOKING"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "kittgaming"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Sub2Fer999"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Enyu_is_Pro"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Magicbus"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "JCWK"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Starcodeheo"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Bluxxy"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "SUB2GAMERROBOT_EXP1"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Sub2NoobMaster123 "
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Sub2Daigrock"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Axiore"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "TantaiGaming"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "StrawHatMaine"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "Sub2OfficialNoobie"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))

local args = {
    [1] = "TheGreatAce"
}

game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'RightControl', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Ignore keys that are used by ThemeManager. 
-- (we dont want configs to save themes, do we?)
SaveManager:IgnoreThemeSettings() 

-- Adds our MenuKeybind to the ignore list 
-- (do you want each config to have a different menu key? probably not.)
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' }) 

-- use case for doing it this way: 
-- a script hub could have themes in a global folder
-- and game configs in a separate folder per game
ThemeManager:SetFolder('MyScriptHub')
SaveManager:SetFolder('MyScriptHub/specific-game')

-- Builds our config menu on the right side of our tab
SaveManager:BuildConfigSection(Tabs['UI Settings']) 

-- Builds our theme menu (with plenty of built in themes) on the left side
-- NOTE: you can also call ThemeManager:ApplyToGroupbox to add it to a specific groupbox
ThemeManager:ApplyToTab(Tabs['UI Settings'])
LeftGroupBox:AddDivider()
Options.MyDropdown:SetValue('This')
