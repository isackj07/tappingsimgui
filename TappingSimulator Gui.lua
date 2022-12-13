_G.autoTap = true;
_G.autoRebirth = true;
_G.autoStarterEgg = true;


spawn(function()
    while _G.autoTap == true do
        local A_1 = 1
        local Event = game:GetService("ReplicatedStorage").Events.Tap
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while _G.autoRebirth == true do
        local A_1 = 1
        local Event = game:GetService("ReplicatedStorage").Events.Rebirth
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while _G.autoStarterEgg == true do
        local args = { [1] = {}, [2] = "Starter", [3] = 1 } game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer(unpack(args))
        wait()
    end
end)