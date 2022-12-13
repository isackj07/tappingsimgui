getgenv().autoTap = true; --Global variable, getgenv() = get global environment
getgenv().autoRebirth = true; --getngenv() is safer than _G
getgenv().autoStarterEgg = true; --getgenv() is hidden from the game
local remotePath = game:GetService("ReplicatedStorage").Events;

for i, v in pairs(_G) do -- for loop, loops the _G table
    print(i, v);
end


spawn(function()
    while autoTap == true do
        local A_1 = 1
        local Event = remotePath.Tap
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while autoRebirth == true do
        local A_1 = 1
        local Event = remotePath.Rebirth
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while autoStarterEgg == true do
        local args = { [1] = {}, [2] = "Starter", [3] = 1 } remotePath.HatchEgg:InvokeServer(unpack(args))
        wait()
    end
end)
