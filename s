-- USH Universal - Universal shakars hub 
-- Credits to Karvine for helping

-- Library & Window

local ArrayField = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/ArrayField/main/Source.lua'))()
local Window = ArrayField:CreateWindow({
    Name = "USH - Universal Shakars Hub",
    LoadingTitle = "USH",
    LoadingSubtitle = "by shakar60 and karvine for developing",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "USH"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Get USH Key",
       Subtitle = "Key System",
       Note = "Get The Key",
       FileName = "Key", -- It is recommended to use something unique as other scripts using ArrayField may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like ArrayField to get the key from
       Actions = {
             [1] = {
                 Text = 'Click here to get the key <--',
                 OnPress = function()
                    https://rekonise.com/get-key-b7oww
                     print('Pressed')
                 end,
                 }
             },
       Key = {"4Tv95jhwn82"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 

Window:Prompt({
    Title = 'USH HUB',
    SubTitle = 'Warning',
    Content = 'We are not responsible if you get banned. Click Accept to move on.',
    Actions = {
        Accept = {
            Name = 'Accept',
            Callback = function()
                print('Pressed')
            end,
        }
    }
})

-- Tabs 
local 1Tab = Window:CreateTab("🏡 Home", nil) -- Title, Image
local 2Tab = Window:CreateTab("📜 Scripts", nil) -- Title, Image
local 3Tab = Window:CreateTab("📜 Mini Executors", nil) -- Title, Image
local 4Tab = Window:CreateTab("📜 AimLock & Aimbot", nil) -- Title, Image
local 5Tab = Window:CreateTab("📜 Admin Commands", nil) -- Title, Image
local 6Tab = Window:CreateTab("📜 Hubs And Guis", nil) -- Title, Image
local 7Tab = Window:CreateTab("📜 More FE", nil) -- Title, Image
local 8Tab = Window:CreateTab("📜 Credits", nil) -- Title, Image

-- Scripts

local Paragraph = 1Tab:CreateParagraph({Title = "Welcome to USH Home Page!", Content = "We will update this page every week!"})

local Slider = 2Tab:CreateSlider({
    Name = "Walkspeed Slider",
    Range = {0, 700},
    Increment = 1,
    Suffix = "WS",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end,
 })

 local Input = 2Tab:CreateInput({
    Name = "Walkspeed Input",
    PlaceholderText = "Your input...",
    NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
    CharacterLimit = false, --max character limit. Remove or set to false
    OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
    RemoveTextAfterFocusLost = false, -- Speaks for itself.
    Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end,
 })

 local Slider = 2Tab:CreateSlider({
    Name = "FOV",
    Range = {0, 120},
    Increment = 1,
    Suffix = "WS",
    CurrentValue = 90,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        workspace.CurrentCamera.FieldOfView = s
    end,
 })

 local Input = 2Tab:CreateInput({
    Name = "FOV",
    PlaceholderText = "Your input...",
    NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
    CharacterLimit = false, --max character limit. Remove or set to false
    OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
    RemoveTextAfterFocusLost = false, -- Speaks for itself.
    Callback = function(Text)
        workspace.CurrentCamera.FieldOfView = s
    end,
 })

local Slider = 2Tab:CreateSlider({
    Name = "Jump Power Slider",
    Range = {0, 700},
    Increment = 1,
    Suffix = "JP",
    CurrentValue = 16,
    Flag = "Slider1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end,
 })

 local Input = 2Tab:CreateInput({
    Name = "Jump Power",
    PlaceholderText = "Your input...",
    NumbersOnly = true, -- If the user can only type numbers. Remove or set to false if none.
    CharacterLimit = false, --max character limit. Remove or set to false
    OnEnter = true, -- Will callback only if the user pressed ENTER while being focused on the the box.
    RemoveTextAfterFocusLost = false, -- Speaks for itself.
    Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end,
 })

