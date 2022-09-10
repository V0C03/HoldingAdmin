repeat task.wait() until game:IsLoaded()
local Admin = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoldingRecord/AdminModule/main/module"))()
local Admin2 = Admin.load(getgenv().themes.dark, "Hold Personal Admin", true)
local vis = loadstring(game:HttpGet("https://raw.githubusercontent.com/HoldingRecord/Scripts/main/autoload.lua"))()






























Admin2.addCommand({name = "dmap",desc = "hi!",callback = function(v)
-- Name
local Part = "Model"
local Part = "Part"

-- Script
local femboy = game:GetDescendants()
for i = 1, #femboy do local v = femboy[i]
if v.Name == Part then
v:Destroy()
end
end
end})

















Admin2.addCommand({name = "antitool",desc = "hi!",callback = function(bool)
    local AcceptedTools = {}
    local player = game.Players.LocalPlayer
    
    for i,v in pairs(player.Backpack:GetChildren()) do
    table.insert(AcceptedTools,v)
    end
    
    player.Backpack.ChildAdded:Connect(function(t)
    table.insert(AcceptedTools, t)
    end)
    
    player.Character.ChildAdded:Connect(function(t)
    if t:IsA("Tool") then
    local accepted = false
    for i,v in pairs(AcceptedTools) do
    if t == v then
    accepted = true
    end
    end
    if not accepted then
    t:Destroy()
    end
    end
    end)
end})
























Admin2.addCommand({name = "sit",desc = "hi",callback = function(c)
    game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, true)
    game.Players.LocalPlayer.Character.Humanoid.Sit = true
end})
Admin2.addCommand({name = "chat",desc = "hi",callback = function(c)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(c,"All")

end})



Admin2.addCommand({name = "walkspeed",desc = "hi",callback = function(c)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = c

end})

Admin2.addCommand({name = "bodyvelocity",desc = "hi",callback = function(c)
    Instance.new("BodyVelocity",game.Players.LocalPlayer.Character.HumanoidRootPart)local a=game:GetService("UserInputService")local b=false a.InputBegan:Connect(function(a)if(a.KeyCode==Enum.KeyCode.W)then b=true while b do local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(123123,123123,123123)a.Velocity=Vector3.new(0,0,0)+game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*50 wait(0.2)end end end)a.InputEnded:Connect(function(a)if(a.KeyCode==Enum.KeyCode.W)then b=false local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(0,0,0)a.Velocity=Vector3.new(0,0,0)end end)local b=false a.InputBegan:Connect(function(a)if(a.KeyCode==Enum.KeyCode.Space)then b=true while b do local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(123123,123123,123123)a.Velocity=Vector3.new(0,25,0)wait(0.2)end end end)a.InputEnded:Connect(function(a)if(a.KeyCode==Enum.KeyCode.Space)then b=false local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(0,0,0)a.Velocity=Vector3.new(0,0,0)end end)local b=false a.InputBegan:Connect(function(a)if(a.KeyCode==Enum.KeyCode.S)then b=true while b do local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(123123,123123,123123)a.Velocity=Vector3.new(0,0,0)-game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame.LookVector*50 wait(0.2)end end end)a.InputEnded:Connect(function(a)if(a.KeyCode==Enum.KeyCode.W)then b=false local a=game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChildOfClass("BodyVelocity")a.MaxForce=Vector3.new(math.huge,math.huge,math.huge)a.Velocity=Vector3.new(0,0,0)end end)

end})




Admin2.addCommand({name = "closeroblox",desc = "hi",callback = function(c)
    game:Shutdown() 
end})



Admin2.addCommand({name = "long",desc = "hi",callback = function(c)
    local LocalPlayer = game:GetService("Players").LocalPlayer
    local Character = LocalPlayer.Character
    local Humanoid = Character:FindFirstChildOfClass("Humanoid")
    
    local function rm()
       for i,v in pairs(Character:GetDescendants()) do
           if v:IsA("BasePart") then
               if v.Name ~= "Head" then
                   for i,cav in pairs(v:GetDescendants()) do
                       if cav:IsA("Attachment") then
                           if cav:FindFirstChild("OriginalPosition") then
                               cav.OriginalPosition:Destroy()
                           end
                       end
                   end
                   v:FindFirstChild("OriginalSize"):Destroy()
                   if v:FindFirstChild("AvatarPartScaleType") then
                       v:FindFirstChild("AvatarPartScaleType"):Destroy()
                   end
               end
           end
       end
    end
    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyTypeScale"):Destroy()
    wait(1)
    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyWidthScale"):Destroy()
    wait(1)
    rm()
    wait(0.5)
    Humanoid:FindFirstChild("BodyDepthScale"):Destroy()
    wait(1)
    rm()
    wait()
    wait(0.5)
    Humanoid:FindFirstChild("HeadScale"):Destroy()
    wait(1)


end})









Admin2.addCommand({name = "Reset",desc = "Refresh",callback = function(c)
    local LP = game:GetService('Players').LocalPlayer

    local ogChar = LP.Character
    LP.Character = Clone
    LP.Character = ogChar
    wait(4.9)
    local pos = LP.Character.HumanoidRootPart.CFrame
    LP.Character:Destroy()
    LP.CharacterAdded:wait();
    repeat
        wait()
    until LP.Character
    wait(.2)
    LP.Character.HumanoidRootPart.CFrame = pos + Vector3.new(0,1,0)
end})


Admin2.addCommand({name = "script",desc = "hi",callback = function(b)
    game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer("Hold Personal Admin (v2) HoldingRecord 1571","All")

end})



Admin2.addCommand({name = "r2",desc = "hi",callback = function(b)
    local LP = game:GetService('Players').LocalPlayer
    local cf = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    local player = game.Players.LocalPlayer
    if player.Character then
    if player.Character:FindFirstChild("Humanoid") then
    player.Character.Humanoid.Name = "1"
    end
    local l = player.Character["1"]:Clone()
    l.Parent = player.Character
    l.Name = "Humanoid"; wait(0.1)
    player.Character["1"]:Destroy()
    workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
    player.Character.Animate.Disabled = true; wait(0.1)
    player.Character.Animate.Disabled = false
    game.Players.LocalPlayer.CharacterAdded:Wait()
    game.Players.LocalPlayer.Character:WaitForChild "ForceField":Destroy()
    LP.Character.HumanoidRootPart.CFrame = pos + Vector3.new(0,1,0)
    end
end})


Admin2.addCommand({name = "re3",desc = "hi",callback = function(b)

end})


Admin2.addCommand({name = "coins",desc = "hi",callback = function(b)
    for i = 1, 1000 do
        for i = 1, 100 do
            for i = 1, 10 do
                game.ReplicatedStorage.ClaimReward:FireServer()
            end
        end
     end
end})


Admin2.addCommand({name = "antiafk",desc = "hi",callback = function(b)
    for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.Idled)) do
        v:Disable()
        end
end})


Admin2.addCommand({name = "dhrp",desc = "hi",callback = function(b)
    local c = game.Players.LocalPlayer.Character
    c.Parent = nil
    c.HumanoidRootPart:Destroy()
    c.Parent = game.workspace
end})


Admin2.addCommand({name = "rejoin",desc = "Rejoin Same Server",callback = function(e)
    game:GetService'TeleportService':TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService'Players'.LocalPlayer)

end})


Admin2.addCommand({name = "rejoin",desc = "Rejoin Same Server",callback = function(e)

end})


Admin2.addCommand({name = "shop",desc = "hi",callback = function(e)
    local PlaceID = game.PlaceId
    local AllIDs = {}
    local foundAnything = ""
    local actualHour = os.date("!*t").hour
    local Deleted = false
    local File = pcall(function()
        AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
    end)
    if not File then
        table.insert(AllIDs, actualHour)
        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
    end
    function TPReturner()
        local Site;
        if foundAnything == "" then
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
        else
            Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
        end
        local ID = ""
        if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
            foundAnything = Site.nextPageCursor
        end
        local num = 0;
        for i,v in pairs(Site.data) do
            local Possible = true
            ID = tostring(v.id)
            if tonumber(v.maxPlayers) > tonumber(v.playing) then
                for _,Existing in pairs(AllIDs) do
                    if num ~= 0 then
                        if ID == tostring(Existing) then
                            Possible = false
                        end
                    else
                        if tonumber(actualHour) ~= tonumber(Existing) then
                            local delFile = pcall(function()
                                delfile("NotSameServers.json")
                                AllIDs = {}
                                table.insert(AllIDs, actualHour)
                            end)
                        end
                    end
                    num = num + 1
                end
                if Possible == true then
                    table.insert(AllIDs, ID)
                    wait()
                    pcall(function()
                        writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                        wait()
                        game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                    end)
                    wait(4)
                end
            end
        end
    end
    
    function Teleport()
        while wait() do
            pcall(function()
                TPReturner()
                if foundAnything ~= "" then
                    TPReturner()
                end
            end)
        end
    end
    Teleport()

end})


Admin2.addCommand({name = "rescale",desc = "hi",callback = function(z)
    local character = game:GetService("Players").LocalPlayer.Character
            local humanoid = character:FindFirstChildOfClass("Humanoid")
            local function wipe_parts()
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") and part.Name ~= "Head" then
                        for _, attachment in pairs(part:GetDescendants()) do
                            if attachment:IsA("Attachment") and attachment:FindFirstChild("OriginalPosition") then
                                attachment.OriginalPosition:Destroy()
                            end
                        end
                        part:WaitForChild("OriginalSize"):Destroy()
                    end
                end
            end
            wipe_parts()
            humanoid:WaitForChild("BodyTypeScale"):Destroy()
            wipe_parts()
            humanoid:WaitForChild("BodyWidthScale"):Destroy()
            wipe_parts()
            humanoid:WaitForChild("BodyDepthScale"):Destroy()
            wipe_parts()
            humanoid:WaitForChild("HeadScale"):Destroy()
            Game:GetService("Players").LocalPlayer.Character.RightFoot.OriginalSize:Destroy()
            Game:GetService("Players").LocalPlayer.Character.RightLowerLeg.OriginalSize:Destroy()
            Game:GetService("Players").LocalPlayer.Character.RightUpperLeg.OriginalSize:Destroy()

end})
































Admin2.addCommand({name = "void",desc = "hi!",callback = function(v,b)
    local t = Admin2.getplayers(v)
    for i,v2 in pairs(t) do
        pcall(function()
            game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated, false)
            game.Players.LocalPlayer.Character.Humanoid.Sit = true
            
            newHum.Parent = LocalPlayer.Character
            LocalPlayer.Character.Humanoid:Destroy()


            for i,v in next, LocalPlayer.Backpack:GetChildren() do
                if v:IsA'Tool' then
                    v.Parent = LocalPlayer.Character
                end
            end
            local tool = LocalPlayer.Character:FindFirstChildOfClass'Tool'
            firetouchinterest(tool.Handle, v2.Character.Head, 0)
            local BP = Instance.new("BodyPosition", game.Players.LocalPlayer.Character.HumanoidRootPart)
            BP.Position = Vector3.new(0, -4500, 0)
            BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            BP.P = 6000
            
            game.Players.LocalPlayer.CharacterAdded:Wait()
            game.Players.LocalPlayer.Character:WaitForChild'ForceField':Destroy()
            game.Players.LocalPlayer.Character:WaitForChild('HumanoidRootPart').CFrame = saveCF

        end)
    end

























    if b then
        local m = Instance.new("Message",workspace)
        m.Text = "Cheese!"
        wait(1)
        m:Destroy()
    end
end})










