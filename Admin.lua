--[ Notification System ]
function notification(x, y, time)
    game.StarterGui:SetCore(
        "SendNotification",
        {
            Title = x,
            Text = y,
            Duration = time
        }
    )
end

game:service [[StarterGui]]:SetCore(
    [[SendNotification]],
    {
        Title = [[HoldingAdmin has loaded:]],
        Text = [[HoldingRecord#0431]]
    }
)
task.wait(3)
notification("For Commands, Press F9", "Kekware v1.02 (>cmds)", 2)

--[  Functions  ]

local function delete()
    game.Players.LocalPlayer.Character.LeftFoot:WaitForChild "OriginalSize":Destroy()
    game.Players.LocalPlayer.Character.LeftLowerLeg:WaitForChild "OriginalSize":Destroy()
    game.Players.LocalPlayer.Character.LeftUpperLeg:WaitForChild "OriginalSize":Destroy()
end

local function cmds()
    print [[                                 ░░▓▓▓▓████▓▓▒▒░░░░
        1337                     ▒▒██████▓▓██████▒▒░░░░▒▒▒▒▒▒
                              ░░██████████▓▓████▒▒        ░░░░
                          ░░██████▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓▓          ░░
                        ▓▓████████▓▓▓▓▓▓▓▓████████░░      ░░░░
                      ██████▓▓▓▓▓▓▓▓▓▓████▒▒      ░░░░░░░░░░
                  ▒▒████████▓▓████▓▓
            ▒▒██████████████▓▓  ░░                    1337
            ░░▓▓▓▓████████▓▓
          ░░░░██▓▓▓▓▓▓████▒▒
        ░░░░░░██▓▓▒▒▓▓▓▓▓▓▓▓   1337
        ░░░░░░░░▒▒▒▒▒▒▓▓████
      ░░░░░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒
      ░░░░░░▒▒▒▒▓▓▒▒░░
    ░░░░▒▒▒▒▒▒▒▒▒▒
    ░░░░▒▒▒▒▒▒▒▒
    ░░▒▒▒▒▒▒▒▒
  ░░░░▒▒▒▒▒▒
  ░░▒▒▒▒▒▒░░          1337         >>> | HoldingAdmin | <<<
  ░░▒▒▒▒▒▒                          ^^^^^^^^^^^^^^^^^^^^^^^^
    ▒▒▒▒░░                         >>> |   Commands:   | <<<  
    ░░▒▒                            
xD  ▒▒▒▒                            . adv (advertises Kekware v1.02)
    ░░░░                            . rj (rejoins game)    
    ▒▒░░							                          . kill (kills player)
    ▒▒                              . bring (brings player to you)
    ▒▒                              . legrescale (increases the size of your leg)
    ▒▒         1337                 . re (refreshes your character)
    ░░                              . ping (outputs your latency in ms)
                                    . antifling (break velocity)
                                    . antikill (del Tool)
                                    . ToolFling (Say Tfling ;D)
    ░░  HoldingRecord#0431]]
end

--[ Local Variables ]
local plr = game.Players.LocalPlayer
local Prefix = "!"
local TP = game:GetService [[TeleportService]]
local Service = game:GetService [[Players]]
local LP = game:GetService [[Players]].LocalPlayer
local CF = game:GetService [[Players]].LocalPlayer.Character.HumanoidRootPart.CFrame
local chr = game.Players.LocalPlayer.Character
local Tool = plr.Backpack:FindFirstChildOfClass("Tool")
local Humanoid = plr.Character.Humanoid:Clone()

--[ Commands ]
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")

        if args[1] == Prefix .. [[adv]] then
            task.wait(0.5)
            local x = [[HoldingAdmin v1]]
            local y = [[all]]
            local msg = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(x, y)
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[HoldingAdmin v1]],
                    Text = [[HoldingAdmin]]
                }
            )
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[rj]] then
            TP:TeleportToPlaceInstance(game.PlaceId, game.JobId, Service.LocalPlayer)
            game:service [[StarterGui]]:SetCore(
                [[SendNotification]],
                {
                    Title = [[Rejoining...]],
                    Text = [[HoldingAdmin]]
                }
            )
        end
    end
)

plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[re]] then
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
                    Title = [[Refreshed Character]],
                    Text = [[HoldingAdmin]]
                }
            )
        end
    end
)

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
                        local Humanoid = plr.Character.Humanoid:Clone()
                        plr.Character.Humanoid:UnequipTools()
                        plr.Character.Animate.Disabled = true
                        plr.Character.Humanoid:Destroy()
                        Humanoid.Parent = plr.Character
                        task.wait(Service.RespawnTime - 0.3)
                        Tool.Parent = plr.Character
                        firetouchinterest(Tool.Handle, v.Character.HumanoidRootPart, 0)
                        LP.CharacterAdded:wait()
                        LP.Character:WaitForChild [[HumanoidRootPart]].CFrame = CF
                        local FF = LP.Character:WaitForChild [[ForceField]]
                        FF:Destroy()
                        game:service [[StarterGui]]:SetCore(
                            [[SendNotification]],
                            {
                                Title = [[Target Brought]],
                                Text = [[Kekware v1.02]]
                            }
                        )
                    end
                end
            end
        end
    end
)

plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "kill" then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
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
                        game:service [[StarterGui]]:SetCore(
                            [[SendNotification]],
                            {
                                Title = [[Target Killed]],
                                Text = [[Kekware v1.02]]
                            }
                        )
                    end
                end
            end
        end

        plr.Chatted:Connect(
            function(message)
                local loweredString = string.lower(message)
                local args = string.split(loweredString, " ")
                if args[1] == Prefix .. [[ping]] then
                    local ping =
                        ("Pong! " .. ("%.f"):format(game:GetService("Stats").PerformanceStats.Ping:GetValue()) .. "ms") -- credit to whoever this belongs to

                    notification("" .. ping, "Kekware v1.02", 2)
                end
            end
        )

        plr.Chatted:Connect(
            function(message)
                local loweredString = string.lower(message)
                local args = string.split(loweredString, " ")
                if args[1] == Prefix .. [[leg]] then
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
                end
            end
        )

        plr.Chatted:Connect(
            function(message)
                local loweredString = string.lower(message)
                local args = string.split(loweredString, " ")

                if args[1] == Prefix .. [[cmds]] then
                    cmds()
                end
            end
        )

        while task.wait(7) do
            print [[Kekware on top]]
        end
    end
)

plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[antifling]] then
            -- // Constants \\ --
            -- [ Services ] --
            local Services =
                setmetatable(
                {},
                {
                    __index = function(Self, Index)
                        local NewService = game.GetService(game, Index)
                        if NewService then
                            Self[Index] = NewService
                        end
                        return NewService
                    end
                }
            )

            -- [ LocalPlayer ] --
            local LocalPlayer = Services.Players.LocalPlayer

            -- // Functions \\ --
            local function PlayerAdded(Player)
                local Detected = false
                local Character
                local PrimaryPart

                local function CharacterAdded(NewCharacter)
                    Character = NewCharacter
                    repeat
                        wait()
                        PrimaryPart = NewCharacter:FindFirstChild("HumanoidRootPart")
                    until PrimaryPart
                    Detected = false
                end

                CharacterAdded(Player.Character or Player.CharacterAdded:Wait())
                Player.CharacterAdded:Connect(CharacterAdded)
                Services.RunService.Heartbeat:Connect(
                    function()
                        if
                            (Character and Character:IsDescendantOf(workspace)) and
                                (PrimaryPart and PrimaryPart:IsDescendantOf(Character))
                         then
                            if
                                PrimaryPart.AssemblyAngularVelocity.Magnitude > 50 or
                                    PrimaryPart.AssemblyLinearVelocity.Magnitude > 100
                             then
                                if Detected == false then
                                    game.StarterGui:SetCore(
                                        "ChatMakeSystemMessage",
                                        {
                                            Text = "Fling Exploit detected, Player: " .. tostring(Player),
                                            Color = Color3.fromRGB(255, 200, 0)
                                        }
                                    )
                                end
                                Detected = true
                                for i, v in ipairs(Character:GetDescendants()) do
                                    if v:IsA("BasePart") then
                                        v.CanCollide = false
                                        v.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                                        v.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                        v.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                                    end
                                end
                                PrimaryPart.CanCollide = false
                                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                PrimaryPart.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0)
                            end
                        end
                    end
                )
            end

            -- // Event Listeners \\ --
            for i, v in ipairs(Services.Players:GetPlayers()) do
                if v ~= LocalPlayer then
                    PlayerAdded(v)
                end
            end
            Services.Players.PlayerAdded:Connect(PlayerAdded)

            local LastPosition = nil
            Services.RunService.Heartbeat:Connect(
                function()
                    pcall(
                        function()
                            local PrimaryPart = LocalPlayer.Character.PrimaryPart
                            if
                                PrimaryPart.AssemblyLinearVelocity.Magnitude > 250 or
                                    PrimaryPart.AssemblyAngularVelocity.Magnitude > 250
                             then
                                PrimaryPart.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                                PrimaryPart.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                                PrimaryPart.CFrame = LastPosition

                                game.StarterGui:SetCore(
                                    "ChatMakeSystemMessage",
                                    {
                                        Text = "You were flung. Neutralizing velocity.",
                                        Color = Color3.fromRGB(255, 0, 0)
                                    }
                                )
                            elseif
                                PrimaryPart.AssemblyLinearVelocity.Magnitude < 50 or
                                    PrimaryPart.AssemblyAngularVelocity.Magnitude > 50
                             then
                                LastPosition = PrimaryPart.CFrame
                            end
                        end
                    )
                end
            )
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[shop]] then
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
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[antikill]] then
            game.Players.LocalPlayer.Character["BoomBox"].Name = "🤓"
            task.wait()
            game:GetService "RunService".RenderStepped:Connect(
                function()
                    game.Players.LocalPlayer.Character.BoomBox:Destroy()
                end
            )
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[Tfling]] then
            local Players = game:GetService("Players")
            local Player = Players.LocalPlayer
            local Character = Player.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")
            local RootPart = Humanoid.RootPart
            local Handle = Character["BoomBox"].Handle

            for i, v in next, Character["BoomBox"]:GetDescendants() do
                if v:IsA("Part") then
                    game:GetService("RunService").Heartbeat:connect(
                        function()
                            v.Velocity = Vector3.new(50, 50, 50)
                        end
                    )
                end
            end

            game:GetService("RunService").Heartbeat:connect(
                function()
                    game.Players.LocalPlayer.ReplicationFocus = workspace
                    settings().Physics.ThrottleAdjustTime = 0
                    settings().Physics.AllowSleep = false
                    sethiddenproperty(game.Players.LocalPlayer, "MaximumSimulationRadius", math.huge)
                    sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                end
            )

            function Move(p)
                BP = Instance.new("BodyPosition", p)
                BP.Name = "BP"
                BP.P = 9e12
                BP.D = 0
                BP.MaxForce = Vector3.new(1 / 0, 1 / 0, 1 / 0)

                BAV = Instance.new("BodyAngularVelocity", p)
                BAV.AngularVelocity = Vector3.new(math.huge / 9e110, math.huge / 9e110, math.huge / 9e110)
                BAV.MaxTorque = Vector3.new(9e9, 9e9, 9e9)

                BT = Instance.new("BodyThrust", p)
                BT.Location = Vector3.new(5, 0, 0)
                BT.Force = Vector3.new(10000, 10000, 10000)
            end

            wait(0.50)
            if Humanoid.RigType == Enum.HumanoidRigType.R15 then
                Character["RightHand"]:Destroy()
            else
                Character["Right Arm"]:Destroy()
            end

            wait()
            for _, v in next, Player.Backpack:GetDescendants() do
                if v:IsA("Tool") then
                    v.Parent = Player.Character
                end
            end

            Move(Handle)
            wait(2)

            for i, v in next, game.Players.LocalPlayer.Character:GetDescendants() do
                if v:IsA("RemoteEvent") then
                    v:FireServer(
                        "PlaySong",
                        ("                                      0                                      "):rep(2000) ..
                            8709638893,
                        1,
                        1,
                        1,
                        ("                                      1                                      "):rep(2000)
                    )
                end
            end

            repeat
                game:GetService("RunService").Heartbeat:wait()
                Handle.CanCollide = false
                Handle.Massless = true

                pcall(
                    function()
                        for _, v in pairs(game.Players:GetChildren()) do
                            if
                                v ~= Player and v.Character:FindFirstChildOfClass("Humanoid").Sit == false and
                                    v.Character and
                                    v.Character:FindFirstChildOfClass("Humanoid").FloorMaterial ~= Enum.Material.Air
                             then
                                spawn(
                                    function()
                                        pcall(
                                            function()
                                                Handle.BP.Position =
                                                    (v.Character["HumanoidRootPart"].Position + Vector3.new(0, -1.30, 0))
                                                Handle.Position =
                                                    (v.Character["HumanoidRootPart"].Position + Vector3.new(0, -1.30, 0))
                                            end
                                        )
                                    end
                                )
                                game:GetService("RunService").Heartbeat:wait()
                                wait(0.07)
                            end
                        end
                    end
                )
            until Character.Humanoid.Health == 0
        end
    end
)
for i, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
    v:Stop()
end
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[lowhold]] then
            for _, z in next, game:GetService("Players").LocalPlayer.Character:GetDescendants() do
                if z.Name == "ToolNoneAnim" and z:IsA "Animation" then
                    z.AnimationId = 1
                end
            end
            local GF, GP, GR, GU =
                Vector3.new(0, -1, 0),
                Vector3.new(0, 0.7, 0),
                Vector3.new(0, 0, -1),
                Vector3.new(-1, 0, 0)
            local Tool =
                game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Tool") or
                game:GetService("Players").LocalPlayer.Backpack:FindFirstChildOfClass("Tool")
            Tool.GripForward = GF
            Tool.GripPos = GP
            Tool.GripRight = GR
            Tool.GripUp = GU
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[headless]] then
            local lp = game:GetService "Players".LocalPlayer
            if lp.Character:FindFirstChild "Head" then
                local char = lp.Character
                char.Archivable = true
                local new = char:Clone()
                new.Parent = workspace
                lp.Character = new
                wait(2)
                local oldhum = char:FindFirstChildWhichIsA "Humanoid"
                local newhum = oldhum:Clone()
                newhum.Parent = char
                newhum.RequiresNeck = false
                oldhum.Parent = nil
                wait(2)
                lp.Character = char
                new:Destroy()
                wait(1)
                newhum:GetPropertyChangedSignal("Health"):Connect(
                    function()
                        if newhum.Health <= 0 then
                            oldhum.Parent = lp.Character
                            wait(1)
                            oldhum:Destroy()
                        end
                    end
                )
                workspace.CurrentCamera.CameraSubject = char
                if char:FindFirstChild "Animate" then
                    char.Animate.Disabled = true
                    wait(.1)
                    char.Animate.Disabled = false
                end
                lp.Character:FindFirstChild "Head":Destroy()
            end
            if simulationradius then
                game:GetService("RunService").Heartbeat:Connect(
                    function()
                        setsimulationradius(1 / 0, 1 / 0)
                    end
                )
            end
        end
    end
)
plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "to" then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
                    end
                end
            end
        end
    end
)
plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "void" then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
                        local LocalPlayer = game.Players.LocalPlayer
                        local Character = LocalPlayer.Character
                        local ClonedPlayer = Character.Humanoid:Clone()
                        wait()
                        v.Character.Humanoid:SetStateEnabled("Seated", true)
                        v.Character.Humanoid.Sit = false
                        prev = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
                        ClonedPlayer.Parent = Character
                        Character.Humanoid:Destroy()

                        for i, v in next, LocalPlayer.Backpack:GetChildren() do
                            if v:IsA("Tool") then
                                v.Parent = Character
                            end
                        end

                        local Tool = Character:FindFirstChildOfClass("Tool")

                        firetouchinterest(Tool.Handle, v.Character["Head"], 0)

                        game:GetService("RunService").Heartbeat:wait()

                        game.Workspace["FallenPartsDestroyHeight"] = 0 / 0
                        game.Workspace["Gravity"] = 1e5
                        Character["HumanoidRootPart"].CFrame =
                            Character["HumanoidRootPart"].CFrame - Vector3.new(0, 1e5, 0)
                        Character.HumanoidRootPart.Velocity = Vector3.new(0, -9e9, 0)

                        wait(0.20)
                        Character:Destroy()
                        game.Players.LocalPlayer.CharacterAdded:Wait()

                        game.Players.LocalPlayer.Character:WaitForChild("Humanoid")
                        game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = prev
                    end
                end
            end
        end
    end
)
plr.Chatted:Connect(
    function(msg)
        local args = msg:lower():split(" ")
        print(args[1], args[2])
        if args[1] == Prefix .. "void2" then
            for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                if v.Character then
                    if
                        v.Name:lower():sub(1, #args[2]) == args[2]:lower() or
                            v.DisplayName:lower():sub(1, #args[2]) == args[2]:lower()
                     then
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
                        local pos = LocalPlayer.Character.HumanoidRootPart.CFrame
                        firetouchinterest(tool.Handle, v.Character.Head, 0)
                        task.wait()
                        game.Workspace.Gravity = 5000000000000000000
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame - Vector3.new(0, 400, 0)
                        task.wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.Velocity = Vector3.new(0, -1000, 0)
                        game.Players.LocalPlayer.CharacterAdded:Wait()
                        repeat
                            task.wait()
                        until LocalPlayer.Character
                        game.Workspace.Gravity = 200
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
                    end
                end
            end
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[skinny]] then
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")

            function rm()
                for i, v in pairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if v.Name == "Handle" or v.Name == "Head" then
                            if Character.Head:FindFirstChild("OriginalSize") then
                                Character.Head.OriginalSize:Destroy()
                            end
                        else
                            for i, cav in pairs(v:GetDescendants()) do
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
            Humanoid:FindFirstChild("BodyProportionScale"):Destroy()
            wait(1)

            rm()
            wait(0.5)
            Humanoid:FindFirstChild("BodyHeightScale"):Destroy()
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
            wait(0.5)
            Humanoid:FindFirstChild("HeadScale"):Destroy()
            wait(1)
        end
    end
)
plr.Chatted:Connect(
    function(message)
        local loweredString = string.lower(message)
        local args = string.split(loweredString, " ")
        if args[1] == Prefix .. [[tiny]] then
            local LocalPlayer = game:GetService("Players").LocalPlayer
            local Character = LocalPlayer.Character
            local Humanoid = Character:FindFirstChildOfClass("Humanoid")

            local function rm()
                for i, v in pairs(Character:GetDescendants()) do
                    if v:IsA("BasePart") then
                        if v.Name ~= "Head" then
                            for i, cav in pairs(v:GetDescendants()) do
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
        end
    end
)
