
local Night = getgenv().Night
local Tabs = Night.Tabs.Tabs
local Dashboard = Night.Assets.Dashboard

local usage = Tabs.Movement
usage = Dashboard.NewTab({
    Name = "Hello", 
    Icon = "rbxassetid://", -- can also be getcustomasset 
    TabInfo = "Tab desc",
    Dashboard = Night.Dashboard 
})


local Module = usage.Functions.NewModule({
    Name = "Module",
    Description = "Module Description",
    Icon = "rbxassetid://", -- can also be getcustomasset
    Flag = "moduleflag",
    Callback = function(self, enabled)
        print(self, enabled)
    end
})

Module.Functions.Settings.TextBox({
    Name = "TextBox Test",
    PlaceHolderText = "Place Holder Text",
    Flag = "textboxflag",
    Callback = function(self, text)
        print(text)
    end
})

Module.Functions.Settings.MiniToggle({
    Name = "Mini Toggle Test",
    Default = false,
    Flag = "minitoggleflag",
    Callback = function(self, enabled)
        print("Self:",self,"Enabled:",enabled)
    end
})

Module.Functions.Settings.Slider({
    Name = "Slider Test",
    Min = 0,
    Max = 100.5,
    Default = 50,
    Decimals = 1,
    Flag = "sliderflag",
    Callback = function(self, value)
        print("Self:",self,"Value:",value)
    end
})

Module.Functions.Settings.ToggleList({
    Name = "Normal Toggle List",
    Default = "Option 1",
    Options = {"Option 1", "Option 2", "Option 3"},
    SelectLimit = 1,
    Divider = "Normal Toggle List",
    Flag = "NormalToggleList",
    Tab = false,
    Callback = function(self, value)
        print("Self:",self,"Value:",value)
    end
})

Module.Functions.Settings.ToggleList({
    Name = "2 Select Toggle List",
    Default = "Option 1",
    Options = {"Option 1", "Option 2", "Option 3"},
    SelectLimit = 2,
    Divider = "2 Select Toggle List",
    Flag = "2SelectToggleList",
    Tab = false,
    Callback = function(self, value)
        print("Self:",self,"Value:",value)
    end
})

Module.Functions.Settings.ToggleList({
    Name = "Tab Toggle List",
    Default = "Option 1",
    Options = {"Option 1", "Option 2", "Option 3"},
    SelectLimit = 1,
    Divider = "Tab Toggle List",
    Flag = "TabToggleList",
    Tab = true,
    Callback = function(self, value)
        print("Self:",self,"Value:",value)
    end
})

Night.Assets.Notifications.Send({
    Description = "Loaded!",
    Duration = 3, -- secs
    Flag = "loadecustom" -- not needed but if u want to use the notification later on(if it still exists)
})
