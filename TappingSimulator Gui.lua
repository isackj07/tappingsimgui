getgenv().autoTap = true;
getgenv().autoRebirth = true;
getgenv().autoStarterEgg = true;
local remotePath = game:GetService("ReplicatedStorage").Events;

for i, v in pairs(_G) do
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
