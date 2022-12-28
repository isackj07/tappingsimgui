getgenv().autoTap = true; --Global variable, getgenv() = get global environment
getgenv().autoRebirth = true; --getngenv() is safer than _G
getgenv().autoEgg = true; --getgenv() is hidden from the game
local remotePath = game:GetService("ReplicatedStorage").Events; --cleaner code

for i, v in pairs(_G) do -- for loop, loops the _G table
    print(i, v);
end

function doTap()
    spawn(function()
        while autoTap == true do
            local A_1 = 1
            local Event = remotePath.Tap
            Event:FireServer(A_1)
            wait()
        end
    end)
end

function autoRebirth(rebirthAmount)
    spawn(function()
        while autoRebirth == true do
            local A_1 = rebirthAmount
            local Event = remotePath.Rebirth
            Event:FireServer(A_1)
            wait()
        end
    end)
end


function autoEgg(eggType, eggLimit)
    spawn(function()
        local iteration = 0
        while autoEgg == true do
            local args = { [1] = {}, [2] = eggType, [3] = 1 } remotePath.HatchEgg:InvokeServer(unpack(args))
            wait()
        end
    end)
end

autoEgg("Wood", 20);
