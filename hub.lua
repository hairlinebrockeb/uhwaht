-- New example script written by wally
-- You can suggest changes with a pull request or something


--// Verification System


-- getgenv().Key = 'x7kerhw8Hjry32jnK'

local key = getgenv().Key 

local Keys = loadstring(game:HttpGet('https://pastebin.com/raw/3VVFTb8B'))()
local HasKey = false

for i,v in pairs(Keys) do if key == v then HasKey = true end end


-- if Keys[key] then HasKey = true end

wait()
if HasKey == false then return warn('Key Invalid') end



--// end

local plr = game.Players.LocalPlayer
local char = plr.Character
local root = char.HumanoidRootPart

spawn(function()
    while task.wait() do 
        plr = game.Players.LocalPlayer
        char = plr.Character or workspace:WaitForChild(plr.Name)
        root = char:WaitForChild('HumanoidRootPart')
    end
end)
getgenv().DistanceBlock = 7
local repo = 'https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    -- Set Center to true if you want the menu to appear in the center
    -- Set AutoShow to true if you want the menu to appear when it is created
    -- Position and Size are also valid options here
    -- but you do not need to define them unless you are changing them :)

    Title = 'AZFAKE UNIVERSAL',
    Center = true, 
    AutoShow = true,
})

-- You do not have to set your tabs & groups up this way, just a prefrence.
local Tabs = {
    -- Creates a new tab titled Main
    Main = Window:AddTab('Grind Tab'), 
    TPTab = Window:AddTab('TPS Tab'), 
    ['UI Settings'] = Window:AddTab('UI Settings'),
}

-- Groupbox and Tabbox inherit the same functions
-- except Tabboxes you have to call the functions on a tab (Tabbox:AddTab(name))
local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main Stuff')
local RightGroupbox = Tabs.Main:AddRightGroupbox('Most Buttons')
local TPAbles = Tabs.TPTab:AddLeftGroupbox('Trainers') -- could make it detect if the npc has the water thing to show that its water
local TPAbles2 = Tabs.TPTab:AddRightGroupbox('Trainers2')



-- Tabboxes are a tiny bit different, but here's a basic example:
--[[

local TabBox = Tabs.Main:AddLeftTabbox() -- Add Tabbox on left side

local Tab1 = TabBox:AddTab('Tab 1')
local Tab2 = TabBox:AddTab('Tab 2')

-- You can now call AddToggle, etc on the tabs you added to the Tabbox
]]

-- Groupbox:AddToggle
-- Arguments: Index, Options


local function parry()
    -- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.Block:FireServer()

wait()
-- Script generated by SimpleSpy - credits to exx#9394

game:GetService("ReplicatedStorage").Events.Block:FireServer()

end




local defspeed = 25
local override = false
local customspeed = 25
local autoparrying = true
local godmode = false
local toxicmode = false
local addplatform = false
local toxiccd = false
local anchor = false
local anchorPos = nil
local respawntoPosition = false
LeftGroupBox:AddToggle('Speed', {
    Text = 'Hacker Speed? (sus) ',
    Default = false, -- Default value (true / false)
    Tooltip = '50 Speed..', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('OverrideSpeed', {
    Text = 'Custom Speed? needs speed enabled tho... ',
    Default = false, -- Default value (true / false)
    Tooltip = 'Any Speed..', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('AutoParry', {
    Text = 'AutoParry ',
    Default = true, -- Default value (true / false)
    Tooltip = 'auto parries..', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('GodMode', {
    Text = 'GodMode ',
    Default = false, -- Default value (true / false)
    Tooltip = 'Cant be Killed..', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('AddPlatform', {
    Text = 'GoAddPlatformdMode ',
    Default = false, -- Default value (true / false)
    Tooltip = '..', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('Toxic', {
    Text = 'Toxic ',
    Default = false, -- Default value (true / false)
    Tooltip = 'says u only kill freshie killers', -- Information shown when you hover over the toggle
})
LeftGroupBox:AddToggle('NoStun', {
    Text = 'NoStun ',
    Default = false, -- Default value (true / false)
    Tooltip = 'really just nostun', -- Information shown when you hover over the toggle
})
RightGroupbox:AddToggle('Anchor', {
    Text = 'Anchor ',
    Default = false, -- Default value (true / false)
    Tooltip = 'really just Anchor', -- Information shown when you hover over the toggle
})
RightGroupbox:AddToggle('RespawnPosition', {
    Text = 'Respawn to Position ',
    Default = false, -- Default value (true / false)
    Tooltip = 'really just RespawnPosition', -- Information shown when you hover over the toggle
})
-- i revenge freshies
-- Fetching a toggle object for later use:
-- Toggles.MyToggle.Value

-- Toggles is a table added to getgenv() by the library
-- You index Toggles with the specified index, in this case it is 'MyToggle'
-- To get the state of the toggle you do toggle.Value

-- Calls the passed function when the toggle is updated



Toggles.Speed:OnChanged(function()
    
    if Toggles.Speed.Value == false then 
        defspeed = 25
    else
        defspeed = 50
    end 
end)

Toggles.OverrideSpeed:OnChanged(function()
    
    if Toggles.OverrideSpeed.Value == false then 
        override = false
    else
        override = true
    end 
end)
Toggles.AutoParry:OnChanged(function()
    
    if Toggles.AutoParry.Value == false then 
        autoparrying = false
    else
        autoparrying = true
    end 
end)
Toggles.GodMode:OnChanged(function()
    
    if Toggles.GodMode.Value == false then 
        godmode = false
    else
        godmode = true
    end 
end)
Toggles.AddPlatform:OnChanged(function()
    
    if Toggles.AddPlatform.Value == false then 
        addplatform = false
    else
        addplatform = true
    end 
end)
Toggles.Toxic:OnChanged(function()
    
    if Toggles.Toxic.Value == false then 
        toxicmode = false
    else
        toxicmode = true
    end 
end)
Toggles.NoStun:OnChanged(function()
    
    if Toggles.NoStun.Value == false then 
        nostun = false
    else
        nostun = true
    end 
end)
Toggles.Anchor:OnChanged(function()
    
    if Toggles.Anchor.Value == false then 
        anchor = false
    else
        anchor = true
    end 
end)
Toggles.RespawnPosition:OnChanged(function()
    
    if Toggles.RespawnPosition.Value == false then 
        respawntoPosition = false
    else
        respawntoPosition = true
    end 
end)
-- This should print to the console: "My toggle state changed! New value: false"


-- Toggles.Speed:SetValue(false)

-- Groupbox:AddButton
-- Arguments: Text, Callback


local farming_crystals = false
local MyButton = LeftGroupBox:AddButton('Crystal Farm', function()
    farming_crystals = true
end)

-- Button:AddButton
-- Arguments: Text, Callback
-- Adds a sub button to the side of the main button

local MyButton2 = MyButton:AddButton('Stop Crystal Farm', function()
    farming_crystals = false
end)

local MyButton3 = RightGroupbox:AddButton('rejoin', function()
    -- rejoin
    local valid = isfile("placem1xlog.txt")
    if  valid then   
        appendfile("placem1xlog.txt", game.PlaceId..' joined/rejoin '..game.JobId)
    else
        writefile("placem1xlog.txt", game.PlaceId..' joined/rejoin '..game.JobId)
    end
    game:GetService('TeleportService'):teleport(game.PlaceId)

end)
local MyButton4 = RightGroupbox:AddButton('sell crystals', function()
    root.CFrame = workspace.NPC.Kai.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
    wait(.5)
fireclickdetector(workspace.NPC.Kai.Click.ClickDetector)

end)

local ResetCharacter = RightGroupbox:AddButton('Refresh Character', function()

    -- Script generated by SimpleSpy - credits to exx#9394
    local pos = root.CFrame
    local args = {
        [1] = "LoadedNotTrue"
    }

    game:GetService("ReplicatedStorage").Events.Load:FireServer(unpack(args))
    plr.Character:WaitForChild('HumanoidRootPart')
    if respawntoPosition == true then 

        wait(.5)
    local tick = tick()
    repeat 
        wait()
        root.CFrame = pos
    until tick() - tick > 1
root.CFrame = pos
-- local time = 0 
-- repeat 
--     wait(.5) 
--     time += 0.5;
--     root.CFrame = pos
--     print('set pos')
-- until time == 3


end
    

end)
RightGroupbox:AddLabel('Turn off GodMode then run\n this reset button')
local setAnchorPos = RightGroupbox:AddButton('Set Anchor Point', function()

    -- Script generated by SimpleSpy - credits to exx#9394
    local pos = root.CFrame

    anchorPos = pos


    

end)



-- Button:AddTooltip
-- Arguments: ToolTip

MyButton:AddTooltip('Farms crystals')
MyButton2:AddTooltip('Stops farming crystals')
MyButton3:AddTooltip('This is a rejoin button')
-- NOTE: You can chain the button methods!
--[[
    EXAMPLE: 

    LeftGroupBox:AddButton('Kill all', Functions.KillAll):AddTooltip('This will kill everyone in the game!')
        :AddButton('Kick all', Functions.KickAll):AddTooltip('This will kick everyone in the game!')
]]

-- Groupbox:AddLabel
-- Arguments: Text, DoesWrap
LeftGroupBox:AddLabel('Made by azfake...')
LeftGroupBox:AddLabel('Below is the wait time for teleport\n', true)

-- Groupbox:AddDivider
-- Arguments: None
LeftGroupBox:AddDivider()

-- Groupbox:AddSlider
-- Arguments: Idx, Options
LeftGroupBox:AddSlider('WaitSlider', {
    Text = 'Time to wait for crystal to swap',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 0,
    Min = 0,
    Max = 3,
    Rounding = 1,

    Compact = false, -- If set to true, then it will hide the label
})
LeftGroupBox:AddLabel('^^( safe 0.4 - max ) ^^\n')
LeftGroupBox:AddSlider('CustomSlider', {
    Text = 'Speed Settings!',

    -- Text, Default, Min, Max, Rounding must be specified.
    -- Rounding is the number of decimal places for precision.

    -- Example:
    -- Rounding 0 - 5
    -- Rounding 1 - 5.1
    -- Rounding 2 - 5.15
    -- Rounding 3 - 5.155

    Default = 0,
    Min = 25,
    Max = 50,
    Rounding = 0,

    Compact = false, -- If set to true, then it will hide the label
})
-- Options is a table added to getgenv() by the library
-- You index Options with the specified index, in this case it is 'MySlider'
-- To get the value of the slider you do slider.Value

local Number = Options.WaitSlider.Value

local waittime = 1

Options.WaitSlider:OnChanged(function()
    waittime = Options.WaitSlider.Value
end)
Options.CustomSlider:OnChanged(function()
    customspeed = Options.CustomSlider.Value
end)
-- This should print to the console: "MySlider was changed! New value: 3"
Options.WaitSlider:SetValue(1)
Options.CustomSlider:SetValue(25)
-- Groupbox:AddInput
-- Arguments: Idx, Info
-- LeftGroupBox:AddInput('Speak', {
--     Default = 'My textbox!',
--     Numeric = false, -- true / false, only allows numbers
--     Finished = false, -- true / false, only calls callback when you press enter

--     Text = 'This is a textbox',
--     Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox

--     Placeholder = 'Placeholder text', -- placeholder text when the box is empty
--     -- MaxLength is also an option which is the max length of the text
-- })

-- Options.Speak:OnChanged(function()
--     local args = {
--         [1] = Options.Speak.Value,
--         [2] = "All"
--     }

--     game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))

-- end)

local function Checkparry()
    pcall(function()
    for i,v in pairs(game.Players:GetPlayers()) do 
        local charactermodel = v.Character 
        if v == nil then return end
        if not game.Workspace:FindFirstChild(v.Name) then return end
        local vroot = game.Workspace:FindFirstChild(v.Name):FindFirstChild('HumanoidRootPart')
        if not vroot then return end
        if not root then return end
        if charactermodel.Parent == workspace.KnockedPlayers then return end
        if (vroot.Position-root.Position).Magnitude <= getgenv().DistanceBlock and v ~= plr then 
            if charactermodel.HandlingValues.MoveInUse.Value == true then
                parry() 
            end
        end
    end
    end)

end

local function createPlatform()
    local part = Instance.new('Part'); part.Size = Vector3.new(5,1,5);part.Transparency = 0.5
    part.Parent = workspace; part.Name = 'myplatform';part.Anchored = true
end
createPlatform()

local function setPlatform(cfr)
    if workspace:FindFirstChild('myplatform') then 
workspace:FindFirstChild('myplatform').CFrame = cfr.CFrame * CFrame.new(0,-4,0)
else
    createPlatform()
    end
end

local function checkKnocked()
    pcall(function( ... )
            local obj=  nil
    for i,v in pairs(game.Players:GetPlayers()) do 
        local vch = v.Character 
        if not vch then return end
        if not vch:FindFirstChild('HumanoidRootPart') then return end
        if (vch.HumanoidRootPart.Position - root.Position).Magnitude <= 15 and v~=plr  then 
            if vch.Parent == workspace.KnockedPlayers then 
                obj = vch
            end
        end
    end
    return obj
    end)

end




spawn(function()
    while wait() do 
        pcall(function( )
            if Toggles.Speed.Value == true and Toggles.OverrideSpeed.Value == false then 
                char.HandlingValues.Speed.Value = defspeed
            elseif Toggles.OverrideSpeed.Value == true and Toggles.Speed.Value == true then 
                char.HandlingValues.Speed.Value = customspeed
            end
            if farming_crystals == true then 
                for i,v in pairs(workspace.Map:GetChildren()) do 
                    if farming_crystals ~= true then break end
                    if v.Name == 'Crystal' and v:FindFirstChild('ClickDetector') then 
                        wait(Options.WaitSlider.Value)
                        root.CFrame = v.CFrame * CFrame.new(0,0,0.5)
                        wait()
                         wait(0.25)-- could use it for the delay to wait for the script to click or the wait for the script to end
                        fireclickdetector(v.ClickDetector)

                    end 
                end 
            end
            if autoparrying == true then
                Checkparry()
            end 
            if godmode == true then 
                if char.HandlingValues:FindFirstChild('RagDolled') then 
                    char.HandlingValues:FindFirstChild('RagDolled'):Destroy()
                end
                if char.HandlingValues:FindFirstChild('Knocked') then 
                    char.HandlingValues:FindFirstChild('Knocked'):Destroy()
                end 
            end 
            if addplatform == true then 
                if char.Humanoid.FloorMaterial == Enum.Material.Air then 
                    setPlatform(root)
                end
            end
            if checkKnocked() ~= nil and toxiccd == false and toxicmode == true then 
                local args = {
                    [1] = 'I avenge freshies, '..checkKnocked().Name,
                    [2] = "All"
                }

                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
                toxiccd = true
            end
            if toxiccd == true then 
                spawn(function ( )
                    wait(4)
                    toxiccd = false
                end)
            end
            if nostun == true then 
                char.HandlingValues.InCombat.Value = false
                if char:FindFirstChild('Hit') then char:FindFirstChild('Hit'):Destroy() end
            end
            if anchor == true and anchorPos ~= nil then 
                
                --root.Anchored = true
                if root.Anchored == false then root.CFrame = anchorPos end
                spawn(function()
                    while task.wait() do 
                        if anchor == false then root.Anchored = false break end -- // return
                        wait(2)
                        local cf = math.random(1,2)
                        if cf == 1 then 
                            root.CFrame = anchorPos
                        end
                    end
                end)
            end
        end) 
    end 
end)
Library:SetWatermarkVisibility(false)

-- Sets the watermark text
Library:SetWatermark('AZFAKE')

Library.KeybindFrame.Visible = false; -- todo: add a function for this

Library:OnUnload(function()
    print('Unloaded!')
    Library.Unloaded = true
end)

-- UI Settings
local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

-- I set NoUI so it does not show up in the keybinds menu
MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' }) 

Library.ToggleKeybind = Options.MenuKeybind -- Allows you to have a custom keybind for the menu

-- Addons:
-- SaveManager (Allows you to have a configuration system)
-- ThemeManager (Allows you to have a menu theme system)

-- Hand the library over to our managers
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

local times = {}
local donetmes = 0
for i,v in pairs(workspace.NPC:GetChildren()) do
    donetmes +=1

    if not v:FindFirstChild('HumanoidRootPart') then return end 

    if donetmes <= 19 then 
        local MyButton = TPAbles:AddButton(v.Name, function() -- local v.Name
            root.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2)
        end)
    else
        local MyButton = TPAbles2:AddButton(v.Name, function() -- local v.Name
            root.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,-2)
        end)
    end
end 

-- Groupbox:AddDropdown
-- Arguments: Idx, Info

-- LeftGroupBox:AddDropdown('MyDropdown', {
--     Values = { 'This', 'is', 'a', 'dropdown' },
--     Default = 1, -- number index of the value / string
--     Multi = false, -- true / false, allows multiple choices to be selected

--     Text = 'A dropdown',
--     Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
-- })

-- Options.MyDropdown:OnChanged(function()
--     print('Dropdown got changed. New value:', Options.MyDropdown.Value)
-- end)

-- Options.MyDropdown:SetValue('This')

-- -- Multi dropdowns
-- LeftGroupBox:AddDropdown('MyMultiDropdown', {
--     -- Default is the numeric index (e.g. "This" would be 1 since it if first in the values list)
--     -- Default also accepts a string as well

--     -- Currently you can not set multiple values with a dropdown

--     Values = { 'This', 'is', 'a', 'dropdown' },
--     Default = 1, 
--     Multi = true, -- true / false, allows multiple choices to be selected

--     Text = 'A dropdown',
--     Tooltip = 'This is a tooltip', -- Information shown when you hover over the textbox
-- })

-- Options.MyMultiDropdown:OnChanged(function()
--     -- print('Dropdown got changed. New value:', )
--     print('Multi dropdown got changed:')
--     for key, value in next, Options.MyMultiDropdown.Value do
--         print(key, value) -- should print something like This, true
--     end
-- end)

-- Options.MyMultiDropdown:SetValue({
--     This = true,
--     is = true,
-- })

-- -- Label:AddColorPicker
-- -- Arguments: Idx, Info

-- -- You can also ColorPicker & KeyPicker to a Toggle as well

-- LeftGroupBox:AddLabel('Color'):AddColorPicker('ColorPicker', {
--     Default = Color3.new(0, 1, 0), -- Bright green
--     Title = 'Some color', -- Optional. Allows you to have a custom color picker title (when you open it)
-- })

-- Options.ColorPicker:OnChanged(function()
--     print('Color changed!', Options.ColorPicker.Value)
-- end)

-- Options.ColorPicker:SetValueRGB(Color3.fromRGB(0, 255, 140))

-- LeftGroupBox:AddLabel('Keybind'):AddKeyPicker('KeyPicker', {
--     -- SyncToggleState only works with toggles. 
--     -- It allows you to make a keybind which has its state synced with its parent toggle

--     -- Example: Keybind which you use to toggle flyhack, etc.
--     -- Changing the toggle disables the keybind state and toggling the keybind switches the toggle state

--     Default = 'MB2', -- String as the name of the keybind (MB1, MB2 for mouse buttons)  
--     SyncToggleState = false, 


--     -- You can define custom Modes but I have never had a use for it.
--     Mode = 'Toggle', -- Modes: Always, Toggle, Hold

--     Text = 'Auto lockpick safes', -- Text to display in the keybind menu
--     NoUI = false, -- Set to true if you want to hide from the Keybind menu,
-- })

-- -- OnClick is only fired when you press the keybind and the mode is Toggle
-- -- Otherwise, you will have to use Keybind:GetState()
-- Options.KeyPicker:OnClick(function()
--     print('Keybind clicked!', Options.KeyPicker.Value)
-- end)

-- task.spawn(function()
--     while true do
--         wait(1)

--         -- example for checking if a keybind is being pressed
--         local state = Options.KeyPicker:GetState()
--         if state then
--             print('KeyPicker is being held down')
--         end

--         if Library.Unloaded then break end
--     end
-- end)

-- Options.KeyPicker:SetValue({ 'MB2', 'Toggle' }) -- Sets keybind to MB2, mode to Hold

-- Library functions
-- Sets the watermark visibility


-- You can use the SaveManager:LoadAutoloadConfig() to load a config 
-- which has been marked to be one that auto loads!
