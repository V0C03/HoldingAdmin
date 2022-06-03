print[[
 __ __   ___   _      ___    ____  ____    ____   ____  ___    ___ ___  ____  ____  
|  |  | /   \ | |    |   \  |    ||    \  /    | /    ||   \  |   |   ||    ||    \ 
|  |  ||     || |    |    \  |  | |  _  ||   __||  o  ||    \ | _   _ | |  | |  _  |
|  _  ||  O  || |___ |  D  | |  | |  |  ||  |  ||     ||  D  ||  \_/  | |  | |  |  |
|  |  ||     ||     ||     | |  | |  |  ||  |_ ||  _  ||     ||   |   | |  | |  |  |
|  |  ||     ||     ||     | |  | |  |  ||     ||  |  ||     ||   |   | |  | |  |  |
|__|__| \___/ |_____||_____||____||__|__||___,_||__|__||_____||___|___||____||__|__|
                                                                                    ]]
																					



















--lOCAL STUFF

local plr = game.Players.LocalPlayer
local Prefix = "!"
local TP = game:GetService [[TeleportService]]
local Service = game:GetService [[Players]]
local LP = game:GetService [[Players]].LocalPlayer
local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
local chr = game.Players.LocalPlayer.Character
local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
local Humanoid = plr.Character.Humanoid:Clone()

-- commands

--Admin
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[script]] then
            wait(1)
            local msg =
                game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(
                "HoldingAdmin Runs Dollhouse",
                "all"
            )
        end
    end
)
--Reset And Bring You Back Where You Died

plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[reset]] then
		            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Refreshing]],
                    Text = [[Slapped ur Character]]
                }
				wait()
            local CF = Service.LocalPlayer.Character.HumanoidRootPart.CFrame
            local chr = game.Players.LocalPlayer.Character
            for i, v in next, chr:GetDescendants() do
                if v:IsA [[Part]] and v.Name == [[HumanoidRootPart]] then
                end
            end
            chr.Parent = nil
            chr.Humanoid:Destroy()
            for i, v in pairs(LP.Character:GetChildren()) do
                if v:IsA [[MeshPart]] then
                    v.Anchored = true
                end
            end
            LP.CharacterAdded:wait()
            LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
            local FF = LP.Character:WaitForChild [[ForceField]]
            FF:Destroy()
            task.wait()
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Resetted]],
                    Text = [[Character is now good]]
                }
            )
        end
    end
)

-- BRING

plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "bring" then
            for i, v in pairs(Service:GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
                        local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
                        local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
                        plr.Character.Humanoid:Destroy()
                        Humanoid.Parent = plr.Character
                        task.wait(Service.RespawnTime - 0.3)
                        Tool.Parent = plr.Character
                        firetouchinterest(Tool.Handle, v.Character.HumanoidRootPart, 0)
                        LP.CharacterAdded:wait()
                        LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
                        local FF = LP.Character:WaitForChild [[ForceField]]
                        FF:Destroy()
                    end
                end
            end
        end
    end
)
--VOID
plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "Void" then
            for i, v in pairs(Service:GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
                        settings()["Physics"].AllowSleep = false
                        settings()["Physics"].PhysicsEnvironmentalThrottle =
                            Enum["EnviromentalPhysicsThrottle"].Disabled
                        setscriptable(v.Character, "SimulationRadius", true)
                        local Char = game.Players.LocalPlayer.Character
                        game.Players.LocalPlayer.Character = Clone
                        game.Players.LocalPlayer.Character = Char
                        wait(4.25)
                        game.Players.LocalPlayer.Character.Humanoid:SetStateEnabled(
                            Enum.HumanoidStateType.Seated,
                            false
                        )
                        game.Players.LocalPlayer.Character.Humanoid.Sit = true
                        local function delete()
                            game.Players.LocalPlayer.Character.LeftFoot:WaitForChild "OriginalSize":Destroy()
                            game.Players.LocalPlayer.Character.LeftLowerLeg:WaitForChild "OriginalSize":Destroy()
                            game.Players.LocalPlayer.Character.LeftUpperLeg:WaitForChild "OriginalSize":Destroy()
                        end
                        game.Players.LocalPlayer.Character.LeftLowerLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
                        game.Players.LocalPlayer.Character.LeftUpperLeg.LeftKneeRigAttachment.OriginalPosition:Destroy()
                        game.Players.LocalPlayer.Character.LeftLowerLeg:WaitForChild "LeftKneeRigAttachment":Destroy()
                        game.Players.LocalPlayer.Character.LeftUpperLeg:WaitForChild "LeftKneeRigAttachment":Destroy()
                        for i, v in next, game.Players.LocalPlayer.Character.Humanoid:GetChildren() do
                            if v:IsA "NumberValue" then
                                delete()
                                v:Destroy()
                            end
                        end
                        local saveCF = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                        local LocalPlayer = game.Players.LocalPlayer
                        local newHum = LocalPlayer.Character.Humanoid:Clone()
                        newHum.Parent = LocalPlayer.Character
                        LocalPlayer.Character.Humanoid:Destroy()
                        for i, v in next, LocalPlayer.Backpack:GetChildren() do
                            if v:IsA "Tool" then
                                v.Parent = LocalPlayer.Character
                            end
                        end
                        local tool = LocalPlayer.Character:FindFirstChildOfClass "Tool"
                        target.SimulationRadius = 0
                        firetouchinterest(Tool.Handle, v.Character.Head, 0)
                        local start
                        local connection =
                            v.Character.Humanoid.Died:Connect(
                            function()
                                start = tick()
                                warn("Void successful! Took: " .. tick() - start)
                            end
                        )
                        local save = {}
                        for i, v in next, workspace:GetChildren() do
                            if v:IsA "Model" then
                                if not game.Players:GetPlayerFromCharacter(v) then
                                    save[#save + 1] = v
                                end
                            else
                                if v.ClassName == "Part" then
                                    save[#save + 1] = v
                                end
                            end
                        end
                        for i, v in next, save do
                            v.Parent = game.Lighting
                        end
                        local BP = Instance.new("BodyPosition", game.Players.LocalPlayer.Character.HumanoidRootPart)
                        BP.Position = Vector3.new(0, -4500, 0)
                        BP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
                        BP.P = 6000
                        game.Players.LocalPlayer.CharacterAdded:Wait()
                        game.Players.LocalPlayer.Character:WaitForChild "ForceField":Destroy()
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = saveCF
                        connection:Disconnect()
                        for i, v in next, save do
                            v.Parent = workspace
                        end
                    end
                end
            end
        end
    end
)

-------------------------------------------------------------------------------------------------------------------------
--ToolKill
plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "tkill" then
            for i, v in pairs(Service:GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
local Player = game.Players.LocalPlayer
                        local LP = game:GetService [[Players]].LocalPlayer
                        local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
                        local Character = Player.Character
                        local Tool = Player.Backpack:FindFirstChildOfClass("Tool")
                        local ClonedHum = Character.Humanoid:Clone()
                        workspace["FallenPartsDestroyHeight"] = 0 / 0
                        ClonedHum.Parent = Character
                        Character.Humanoid:Destroy()
                        ClonedHum:EquipTool(Tool)
                        firetouchinterest(Tool.Handle, v.Character.HumanoidRootPart, 0)
                        ClonedHum:ChangeState(15)
                        LP.CharacterAdded:wait()
                        LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
                        local FF = LP.Character:WaitForChild [[ForceField]]
                        FF:Destroy()
						v.CharacterAdded:task.wait()
						game:service [[StarterGui]]:SetCore(
                            [[SendNotification]],
                            {
                                Title = [[ToolKill]],
                                Text = [[Slapped Bro HumanoidRootPart]]
                            }
                        )
                    end
                end
            end
        end
    end
)
-------------------------------------------------------------------------------------------------------------------------
--rj
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[rejoin]] then
            TP:TeleportToPlaceInstance(game.PlaceId, game.JobId, Service.LocalPlayer)
        end
    end
)
--ServerHop
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[Shop]] then
            local x = {}
            for _, v in ipairs(
                game:GetService("HttpService"):JSONDecode(
                    game:HttpGetAsync(
                        "https://games.roblox.com/v1/games/" ..
                            game.PlaceId .. "/servers/Public?sortOrder=Asc&limit=100"
                    )
                ).data
            ) do
                if type(v) == "table" and v.maxPlayers > v.playing and v.id ~= game.JobId then
                    x[#x + 1] = v.id
                end
            end
            if #x > 0 then
                game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, x[math.random(1, #x)])
            else
                return
            end
        end
    end
)
-------------------------------------------------------------------------------------------------------------------------
