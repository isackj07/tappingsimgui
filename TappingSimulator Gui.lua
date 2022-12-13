_G.autoTap = true;
_G.autoRebirth = true;
_G.autoStarterEgg = true;
local remotePath = game:GetService("ReplicatedStorage").Events;

for i, v in pairs(_G) do
    print(i, v);
end


spawn(function()
    while _G.autoTap == true do
        local A_1 = 1
        local Event = remotePath.Tap
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while _G.autoRebirth == true do
        local A_1 = 1
        local Event = remotePath.Rebirth
        Event:FireServer(A_1)
        wait()
    end
end)

spawn(function()
    while _G.autoStarterEgg == true do
        local args = { [1] = {}, [2] = "Starter", [3] = 1 } remotePath.HatchEgg:InvokeServer(unpack(args))
        wait()
    end
end)
