if not game:IsLoaded() then
    game.Loaded:Wait()
end

print("[DEBUG]: Requisitando ou carregando - if game.CreatorId ~= 17219742 or game.PlaceId == 16146832113 or not getgenv or not getgenv or not getupvalues or not require or not assert or not setmetatable or not loadstring or not isfile or not readfile or not delfile or not writefile or not isfolder or not delfolder or not listfiles or not makefolder or not firesignal or (getgenv and (getgenv().LoadedFluentCrazyDay or getgenv().LoadingAnimeVanguards)) or (identifyexecutor and identifyexecutor():find("Fluxus")) then")
if game.CreatorId ~= 17219742 or game.PlaceId == 16146832113 or not getgenv or not getgenv or not getupvalues or not require or not assert or not setmetatable or not loadstring or not isfile or not readfile or not delfile or not writefile or not isfolder or not delfolder or not listfiles or not makefolder or not firesignal or (getgenv and (getgenv().LoadedFluentCrazyDay or getgenv().LoadingAnimeVanguards)) or (identifyexecutor and identifyexecutor():find("Fluxus")) then
    return
else
    getgenv().LoadingAnimeVanguards = "2.4"
end

if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyLoadingScreen") or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") then
    repeat
        task.wait()
    until game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LobbyLoadingScreen") == nil and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("LoadingScreen") == nil
end

if game:GetService("StarterPlayer"):WaitForChild("Modules"):FindFirstChild("Visuals") and game:GetService("StarterPlayer").Modules.Visuals:FindFirstChild("Cutscenes") then
    repeat
        task.wait()
print("[DEBUG]: Requisitando ou carregando - until not require(game:GetService("StarterPlayer").Modules.Visuals.Cutscenes.CutsceneHandler).IsPlayingCutscene")
    until not require(game:GetService("StarterPlayer").Modules.Visuals.Cutscenes.CutsceneHandler).IsPlayingCutscene
end

print("[DEBUG]: Requisitando ou carregando - local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/main.lua"))()")
local Fluent = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/main.lua"))()
print("[DEBUG]: Requisitando ou carregando - local SaveSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/save.lua"))()")
local SaveSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/save.lua"))()
print("[DEBUG]: Requisitando ou carregando - local InterfaceSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/interfaces.lua"))()")
local InterfaceSettings = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Gui/interfaces.lua"))()
print("[DEBUG]: Requisitando ou carregando - local Filesfunction = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Function/filemisc.lua"))()")
local Filesfunction = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Function/filemisc.lua"))()
print("[DEBUG]: Requisitando ou carregando - local Otherfunction = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Function/othermisc.lua"))()")
local Otherfunction = loadstring(game:HttpGet("https://raw.githubusercontent.com/MoQiSz/Code/refs/heads/main/Function/othermisc.lua"))()
local Configs = Fluent.Options
local Windows = Fluent:CreateWindow(
    {
        Name = game:GetService("MarketplaceService"):GetProductInfo(16146832113).Name,
        Title = "OMG Hub | Anime Vanguards",
        SubTitle = "By Omg",
        TabWidth = 130,
        Theme = "Darker",
        Acrylic = true,
        UpdateDate = "14/11/2024 - 2.4",
        UpdateLog = "● Released Script"..Filesfunction:Space().."\n",
        IconVisual = nil,
        DisableEnabled = true,
        BlackScreen = false,
        MinimizeKey = Enum.KeyCode.LeftAlt
    }
)

local Tabs_Main =
{
    [1] = Windows:AddTab({Title = "Join", Name = nil, Icon = "angle-double-small-up"}),
    [2] = Windows:AddTab({Title = "Game", Name = nil, Icon = "layers"}),
    [3] = Windows:AddTab({Title = "Lobby", Name = nil, Icon = "globe"}),
    [4] = Windows:AddTab({Title = "Macro", Name = nil, Icon = "folder"}),
    [5] = Windows:AddTab({Title = "Settings", Name = nil, Icon = "settings"})
}

local Tabs_Misc =
{
    [1] =
    {
        Tabs_Main[1]:AddSection("Main"),
        Tabs_Main[1]:AddSection("Raid"),
        Tabs_Main[1]:AddSection("Story"),
        Tabs_Main[1]:AddSection("Challenge"),
        Tabs_Main[1]:AddSection("Legend Stage")
    },
    [2] =
    {
        Tabs_Main[2]:AddSection("Main"),
        Tabs_Main[2]:AddSection("Misc"),
        Tabs_Main[2]:AddSection("Team"),
        Tabs_Main[2]:AddSection("Modifier"),
        Tabs_Main[2]:AddSection("Webhook")
    },
    [3] =
    {
        Tabs_Main[3]:AddSection("Crafter")
    },
    [4] =
    {
        Tabs_Main[4]:AddSection("Main"),
        Tabs_Main[4]:AddSection("Macro"),
        Tabs_Main[4]:AddSection("Select Macro")
    }
}

Fluent.Loaded = 0
Fluent.Script = {
print("[DEBUG]: Executando - Fluent.Script = {")
    _len = function(i)
        return
        {
            __len = function(t)
                local c = 0
                for n, r in next, t do
                    if not table.find(i or {}, n) then
                        c += 1
                    end
                end
                return c
            end
        }
    end,

    Game =
    {
        Lobby = {},
        Units = {},
        Sells = {},
        Reset = false,
        Click = function()
            local Virtual = game:GetService("VirtualInputManager")
            do
                Virtual:SendMouseButtonEvent(1,0,0,true,game,1)
                task.wait(0.125)
                Virtual:SendMouseButtonEvent(1065,0,0,true,game,1)
                task.wait(0.125)
                Virtual:SendMouseButtonEvent(532.5,0,0,true,game,1)
                task.wait(0.125)
                Virtual:SendMouseButtonEvent(1,599.25,0,true,game,1)
                task.wait(0.125)
                Virtual:SendMouseButtonEvent(1065,599.25,0,true,game,1)
                task.wait(0.125)
                Virtual:SendMouseButtonEvent(532.5,599.25,0,true,game,1)
                task.wait(0.125)
            end
        end
    },

    Macro =
    {
        Index = 0,
        Value = {
            Database =
            {
                World = "",
                Units = {}
            }
        },
        Files = function()
            return Filesfunction:ListFile("CrazyDay/Anime Vanguards/Macro","json")
        end,
        Status = "Status : None (0/0)",
        Action = {
            Action = {},

            Delete = function()
                for r, v in next, Fluent.Script.Macro.Action.Action do
                    v:Destroy()
                end
            end,
            Create = function(n, r, v)
                local c, o, x =
                Fluent.Script.Instances,
print("[DEBUG]: Executando - Fluent.Script.Instances,")
                (
                    n["Type"] == "SellUnit" and n["Time"]
                )
                or
                (
                    n["Type"] == "AutoAbility" and n["Time"]
                )
                or
                (
                    n["Type"] == "BoogieMove" and (v and n["Unit"] or n["Selected"]["Unit"])
                )
                or
                (
                    (n["Type"] == "ChangePriority" or n["Type"] == "UseAbility") and n["Value"]
                ),
                (
                    n["Type"] == "SellUnit" and Color3.fromRGB(255, 0, 0)
                )
                or
                (
                    n["Type"] == "SpawnUnit" and Color3.fromRGB(0, 255, 0)
                )
                or
                (
                    n["Type"] == "UpgradeUnit" and Color3.fromRGB(255, 255, 0)
                )
                or
                (
                    n["Type"] == "ChangePriority" and Color3.fromRGB(100, 255, 255)
                )
                or
                (
                    (n["Type"] == "UseAbility" or n["Type"] == "AutoAbility" or n["Type"] == "BoogieMove")  and Color3.fromRGB(255, 255, 255)
                )

                do
                    r = Fluent.Script.ToVectors(r)
                end

                table.insert(
                    Fluent.Script.Macro.Action.Action,
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Action,")
                    c(
                        "Part",
                        {
                            Position = r,
                            Material = "Glass",
                            CanCollide = false,
                            Parent = game:GetService("Players").LocalPlayer.Character,
                            Transparency = 0.975,
                            Size = Vector3.new(1.5, 1.5, 1.5),
                            CanTouch = false,
                            Anchored = true,
                        },
                        {
                            c(
                                "BillboardGui",
                                {
                                    AlwaysOnTop = true,
                                    Size = UDim2.new(1,200,1,30),
                                    ExtentsOffset = Vector3.new(0, 1, 0)
                                },
                                {
                                    c(
                                        "TextLabel",
                                        {
                                            Font = "GothamBold",
                                            FontSize = "Size14",
                                            TextWrapped = true,
                                            Size = UDim2.new(1, 0, 1, 0),
                                            TextYAlignment = "Top",
                                            BackgroundTransparency = 1,
                                            TextStrokeTransparency = 0.5,
                                            TextColor3 = x,
                                            Text = n["Type"]..": "..(v and v or n["Unit"]).." ("..tostring(o and o or n["Money"])..")"
                                        }
                                    )
                                }
                            ),
                            c(
                                "Highlight",
                                {
                                    FillColor = x,
                                    DepthMode = "AlwaysOnTop",
                                    OutlineColor = x,
                                    FillTransparency = 0.675,
                                    OutlineTransparency = 0
                                }
                            )
                        }
                    )
                )
            end
        },
        Create = function()
            local n = Configs["File Name"].Value
            local s, e = pcall(
                function()
print("[DEBUG]: Executando - function()")
                    assert(isfile, "The executor doesn't support isfile")
                    assert(writefile, "The executor doesn't support writefile")
                    assert(not isfile(Otherfunction:FormatLocation(n)), "This file already create")
                    Filesfunction:CheckFile(Otherfunction:FormatLocation(n), {Database = {World = "", Units = {}}})
                    Fluent.Script.Macro.Refresh()
print("[DEBUG]: Executando - Fluent.Script.Macro.Refresh()")
                    Configs["Macro File"]:SetValue(n)
                    Configs["File Name"]:SetValue("")
                end
            )
            if s then
                Fluent:Notify(
                    {
                        Title = "Successful Create",
                        SubContent = n..".json",
                        Disable = true,
                        Duration = 5
                    }
                )
            else
                e = tostring(e)
                if e:find(": ") then
                    e = e:split(": ")[2]
                end
                Fluent:Notify(
                    {
                        Title = "Unsuccessful Create",
                        SubContent = e,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end,
        Delete = function()
            local n, b = Configs["Macro File"].Value, Fluent.Script.Macro
            local s, e = pcall(
                function()
print("[DEBUG]: Executando - function()")
                    assert(n, "Select macro file first")
                    assert(isfile, "The executor doesn't support isfile")
                    assert(delfile, "The executor doesn't support delfile")
                    assert(isfile(Otherfunction:FormatLocation(n)), "Can't find selected file")
                    Filesfunction:DeleteFile(Otherfunction:FormatLocation(n))
                    b.Refresh()
                    Configs["Macro File"]:SetValue(#b.Files() > 0 and b.Files()[#b.Files()] or nil)
                end
            )
            if s then
                Fluent:Notify(
                    {
                        Title = "Successful Delete",
                        SubContent = n..".json",
                        Disable = true,
                        Duration = 5
                    }
                )
            else
                e = tostring(e)
                if e:find(": ") then
                    e = e:split(": ")[2]
                end
                Fluent:Notify(
                    {
                        Title = "Unsuccessful Delete",
                        SubContent = e,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end,
        Export = function()
            local n = Configs["Macro File"].Value
            local s, e = pcall(
                function()
print("[DEBUG]: Executando - function()")
                    assert(n, "Select macro file first")
                    assert(isfile, "The executor doesn't support isfile")
                    assert(readfile, "The executor doesn't support readfile")
                    assert(isfile(Otherfunction:FormatLocation(n)), "Can't find selected file")
                    setclipboard(tostring(readfile(Otherfunction:FormatLocation(n))))
                end
            )
            if s then
                Fluent:Notify(
                    {
                        Title = "Successful Export",
                        SubContent = n..".json",
                        Disable = true,
                        Duration = 5
                    }
                )
            else
                e = tostring(e)
                if e:find(": ") then
                    e = e:split(": ")[2]
                end
                Fluent:Notify(
                    {
                        Title = "Unsuccessful Export",
                        SubContent = e,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end,
        Import = function()
            local j = {
                Link = Configs["Import Link"].Value,
                Name = Configs["Import Name"].Value
            }
            local s, e = pcall(
                function()
print("[DEBUG]: Executando - function()")
                    assert(isfile, "The executor doesn't support isfile")
                    assert(writefile, "The executor doesn't support writefile")
                    assert(not isfile(Otherfunction:FormatLocation(j.Name)), "This file already create")
                    if not j.Link:find("https://raw.githubusercontent.com/") and j.Link:find("https://github.com/") then
                        j.Link = j.Link:gsub("https://github.com", "https://raw.githubusercontent.com"):gsub("/blob", "")
print("[DEBUG]: Requisitando ou carregando - j.Link = game:HttpGet(j.Link)")
                        j.Link = game:HttpGet(j.Link)
                    elseif j.Link:find("https://raw.githubusercontent.com/") or j.Link:find("https://cdn.discordapp.com/attachments/") then
print("[DEBUG]: Requisitando ou carregando - j.Link = game:HttpGet(j.Link)")
                        j.Link = game:HttpGet(j.Link)
                    elseif not j.Link:find("https://raw.githubusercontent.com/") and not j.Link:find("https://cdn.discordapp.com/attachments/") then
                        error("Mayk sure your link is correct", 9)
                    else
                        error("Can't to access the link", 9)
                    end
                    assert(j.Link:find([["Database":{]]), "Database doesn't match")
                    Filesfunction:CheckFile(Otherfunction:FormatLocation(j.Name), j.Link)
                    Fluent.Script.Macro.Refresh()
print("[DEBUG]: Executando - Fluent.Script.Macro.Refresh()")
                    Configs["Import Link"]:SetValue("")
                    Configs["Import Name"]:SetValue("")
                end
            )
            if s then
                Fluent:Notify(
                    {
                        Title = "Successful Import",
                        SubContent = j.Name..".json",
                        Disable = true,
                        Duration = 5
                    }
                )
            else
                e = tostring(e)
                if e:find(": ") then
                    e = e:split(": ")[2]
                end
                Fluent:Notify(
                    {
                        Title = "Unsuccessful Import",
                        SubContent = e,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end,
        Refresh = function()
            local h, y, j =
                Otherfunction,
                Fluent.Script.Macro.Files,
print("[DEBUG]: Executando - Fluent.Script.Macro.Files,")
                Fluent.Script.Vanguards._StagesData
print("[DEBUG]: Executando - Fluent.Script.Vanguards._StagesData")

            Configs["Macro File"]:SetValues(y())
            if Configs["Macro File"].Value and not isfile(h:FormatLocation(Configs["Macro File"].Value)) then
                Configs["Macro File"]:SetValue(nil)
            end

            for e = 1, #j("Story").Stage do
                local z = {
                    Raid = j("Raid").Stage[e] or "",
                    Story = j("Story").Stage[e] or "",
                    LegendStage = j("LegendStage").Stage[e] or ""
                }

                for u, l in next,
                {
                    Raid = z.Raid,
                    Story = z.Story,
                    Paragon = z.Story,
                    Infinite = z.Story,
                    Challenge = z.Story,
                    LegendStage = z.LegendStage
                }
                do
                    if Configs[tostring(u)..l] then
                        Configs[tostring(u)..l]:SetValues(y())
                        if Configs[tostring(u)..l].Value and not isfile(h:FormatLocation(Configs[tostring(u)..l].Value)) then
                            Configs[tostring(u)..l]:SetValue(nil)
                        end
                    end
                end
                task.wait()
            end
        end
    },

    Frames =
    {
        {}
    },

    Mohato =
    {
        Action = {
            Action = {},

            Delete = function()
                for n, v in next, Fluent.Script.Mohato.Action.Action do
                    v:Destroy()
                end
            end,
            Create = function(n, v)
                local i, e =
                Fluent.Script.Instances,
print("[DEBUG]: Executando - Fluent.Script.Instances,")
                (
                    n["Type"] == "SellUnit (Mohato)" and Color3.fromRGB(255, 0, 0)
                )
                or
                (
                    n["Type"] == "SpawnUnit (Mohato)" and Color3.fromRGB(0, 255, 0)
                )
                or
                (
                    n["Type"] == "UpgradeUnit (Mohato)" and Color3.fromRGB(255, 255, 0)
                )

                do
                    v = Fluent.Script.ToVectors(v)
                end

                table.insert(
                    Fluent.Script.Mohato.Action.Action,
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Action,")
                    i(
                        "Part",
                        {
                            Position = v,
                            Material = "Glass",
                            CanCollide = false,
                            Parent = game:GetService("Players").LocalPlayer.Character,
                            Transparency = 0.975,
                            Size = Vector3.new(1.5, 1.5, 1.5),
                            CanTouch = false,
                            Anchored = true,
                        },
                        {
                            i(
                                "BillboardGui",
                                {
                                    AlwaysOnTop = true,
                                    Size = UDim2.new(1,200,1,30),
                                    ExtentsOffset = Vector3.new(0, 1, 0)
                                },
                                {
                                    i(
                                        "TextLabel",
                                        {
                                            Font = "GothamBold",
                                            FontSize = "Size14",
                                            TextWrapped = true,
                                            Size = UDim2.new(1, 0, 1, 0),
                                            TextYAlignment = "Top",
                                            BackgroundTransparency = 1,
                                            TextStrokeTransparency = 0.5,
                                            TextColor3 = e,
                                            Text = n["Type"]..": "..tostring(n["Unit"]).." ("..tostring(n["Money"])..")"
                                        }
                                    )
                                }
                            ),
                            i(
                                "Highlight",
                                {
                                    FillColor = e,
                                    DepthMode = "AlwaysOnTop",
                                    OutlineColor = e,
                                    FillTransparency = 0.675,
                                    OutlineTransparency = 0
                                }
                            )
                        }
                    )
                )
            end
        },
        SellUnit = false,
        Position = false,
        BossSpawn = false,
        LastPosition = false
    },

    Rewards =
    {
        {},
        {}
    },
    Buttons = {},
    Notifys = {},
    Signals = {},

    Boogies =
    {
        Main = nil,
        Misc = nil
    },

    Challenge = "",

    ToCFrames = function(n)
        return CFrame.new(table.unpack(tostring(n):gsub(" ", ""):split(",")))
    end,
    ToVectors = function(n)
        return Vector3.new(table.unpack(tostring(n):gsub(" ", ""):split(",")))
    end,

    AddSignal = function(n, v, m)
        if n then
            Fluent.Script.Signals[n] = v:Connect(m)
print("[DEBUG]: Executando - Fluent.Script.Signals[n] = v:Connect(m)")
        else
            table.insert(Fluent.Script.Signals, v:Connect(m))
        end
    end,
    Instances = function(n, v, m)
        local e = Instance.new(n)
        for u, r in next, v or {} do
            e[u] = r
        end
        for o, s in next, m or {} do
            s.Parent = e
        end
        return e
    end,

    Vanguards = {
        _Yen = function()
print("[DEBUG]: Requisitando ou carregando - return getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.PlayerYenHandler).GetYen)[1]")
            return getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.PlayerYenHandler).GetYen)[1]
        end,
        _Slot = function()
            local e =
            {
                Data = {},
                Unit = {}
            }
            local c, r = game:GetService("Players").LocalPlayer.PlayerGui[game.PlaceId == 16146832113 and "HUD" or "Hotbar"]

            for h = 1, 6 do
                if c.Main.Units[tostring(h)]:FindFirstChild("Locked") or c.Main.Units[tostring(h)]:FindFirstChild("UnitTemplate") == nil then
                    continue
                end
                r = c.Main.Units[tostring(h)].UnitTemplate.Holder.Main.UnitName.Text

                table.insert(
                    e.Unit,
                    r
                )
print("[DEBUG]: Requisitando ou carregando - local k = game.PlaceId == 16146832113 and require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Units).EquippedUnits")
                local k = game.PlaceId == 16146832113 and require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Units).EquippedUnits
print("[DEBUG]: Requisitando ou carregando - or require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Units)._Cache[h]")
                          or require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Units)._Cache[h]

                    e.Data[tostring(h)] = game.PlaceId == 16146832113 and {}
                    or
                    {
                        Name = r,
                        Level = k.Level,
                        Trait = k.Trait,
                        SubTrait = k.SubTrait,
                        Takedowns = k.Takedowns,
                        Worthiness = k.Worthiness,
                        Ascensions = k.Ascensions,
                        Experience = k.Experience,
                        MaxExperience = k.MaxExperience
                    }
            end
            return e
        end,
        _MainLobby = function()
            for h, y in next, game:GetService("Workspace").MainLobby:GetChildren() do
                if y:IsA("Folder") and y.Name == "Lobby" then
                    return y
                end
            end
        end,
        _Modifiers = function()
            return {"Champions", "Dodge", "Drowsy", "Exploding", "Fast", "Immunity", "Quake", "Regen", "Revitalize", "Shielded", "Strong", "Thrice"}
        end,
        _ItemsData = function()
            local h =
            {
                "TraitRerolls"
            }
print("[DEBUG]: Requisitando ou carregando - for y, u in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.MiscItems) do")
            for y, u in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.MiscItems) do
                table.insert(h, y)
            end
print("[DEBUG]: Requisitando ou carregando - for s, t in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do")
            for s, t in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do
                table.insert(h, s)
            end
            return h
        end,
        _StagesData = function(h)
            local e =
            {
                Acts = {},
                Stage = {}
            }
            for j, t in next, game:GetService("ReplicatedStorage").Modules.Data.StagesData[h]:GetChildren() do
print("[DEBUG]: Requisitando ou carregando - local z = require(t[t.Name])")
                local z = require(t[t.Name])
                table.insert(e.Stage, z.Name)

                if #e.Acts == 0 then
                    for g = 1, #t.Acts:GetChildren() do
                        table.insert(e.Acts, t.Acts:GetChildren()[g].Name)
                    end
                end
            end
            return e
        end,
        _StagesName = function(t, i)
            for j, c in next, game:GetService("ReplicatedStorage").Modules.Data.StagesData[t]:GetChildren() do
print("[DEBUG]: Requisitando ou carregando - local h = require(c[c.Name])")
                local h = require(c[c.Name])
                if h.Name == i then
                    return c.Name
                end
            end
        end,
        _ActiveUnits = function()
print("[DEBUG]: Requisitando ou carregando - for y, h in next, getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.UnitManager.UnitManagerHandler).ShowUnitManager) do")
            for y, h in next, getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.UnitManager.UnitManagerHandler).ShowUnitManager) do
                if typeof(h) == "table" and h.GetAllPlacedUnits then
                    for t, r in next, getupvalues(h.GetAllPlacedUnits) do
                        if typeof(r) == "table" and r._ActiveUnits then
                            return r._ActiveUnits
                        end
                    end
                end
            end
            return {}
        end,
        _LobbyHandler = function()
print("[DEBUG]: Requisitando ou carregando - return require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.Lobby.LobbyHandler)")
            return require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.Lobby.LobbyHandler)
        end,
        _EssenceStones = function(y)
            local t = {}
print("[DEBUG]: Requisitando ou carregando - for h, u in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do")
            for h, u in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do
                if not table.find(y or {}, h) then
                    table.insert(t, h)
                end
            end
            return t
        end,
        _CurrencyHandler = function()
print("[DEBUG]: Requisitando ou carregando - return game.PlaceId == 16146832113 and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.CurrencyHandler).GetCurrencies)[1]")
            return game.PlaceId == 16146832113 and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.CurrencyHandler).GetCurrencies)[1]
print("[DEBUG]: Requisitando ou carregando - or getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.Player.CurrencyHandler).GetCurrencies)[1]")
                   or getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.Player.CurrencyHandler).GetCurrencies)[1]
        end,
        _InventoryHandler = function(m)
print("[DEBUG]: Requisitando ou carregando - local y = game.PlaceId == 16146832113 and require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.InventoryHandler).Cache")
            local y = game.PlaceId == 16146832113 and require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.InventoryHandler).Cache
print("[DEBUG]: Requisitando ou carregando - or getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.Player.InventoryHandler).GetItemFromInventoryByName)[1]")
                   or getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.Player.InventoryHandler).GetItemFromInventoryByName)[1]

            for h, z in next, y do
                if (game.PlaceId == 16146832113 and z.Data.Name == m) or z.Name == m then
                    return tonumber(z.Amount)
                end
            end
            return 0
        end,
        _CurrentPlaceUnit = function(k)
            local g = {
                Placed = {},
                MaxPlace = 1
            }
            for z, y in next, Fluent.Script.Vanguards._ActiveUnits() do
                if y.Player and y.Player == game:GetService("Players").LocalPlayer and y.Data.Name == k then
                    table.insert(g.Placed, z)
                    if y.Trait and typeof(y.Trait) == "table" then
                        for f, x in next, y.Trait do
                            if x == "Monarch" then
                                g.MaxPlace = 1
                            else
                                g.MaxPlace = y.Data.MaxPlacements
                            end
                        end
                    else
                        g.MaxPlace = y.Data.MaxPlacements
                    end
                end
            end
            return g
        end
    }
}


do
    Fluent:DestroyCallback(
        function()
print("[DEBUG]: Executando - function()")
            warn("[Unloaded] —— ".. Fluent.Name)
            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
            for s, i in next, Fluent.Script.Signals do
                if typeof(i) == "table" then
                    for u, c in next, i do
                        if typeof(i) == "Instance" then
                            repeat
                                Fluent.Script.Signals[s][u]:Destroy()
print("[DEBUG]: Executando - Fluent.Script.Signals[s][u]:Destroy()")
                                task.wait()
                            until not Fluent.Script.Signals[s][u].Parent
                        elseif typeof(c) == "RBXScriptConnection" then
                            repeat
                                Fluent.Script.Signals[s][u]:Disconnect()
print("[DEBUG]: Executando - Fluent.Script.Signals[s][u]:Disconnect()")
                                task.wait()
                            until not Fluent.Script.Signals[s][u].Connected
                        end
                    end
                elseif typeof(i) == "Instance" then
                    repeat
                        Fluent.Script.Signals[s]:Destroy()
print("[DEBUG]: Executando - Fluent.Script.Signals[s]:Destroy()")
                        task.wait()
                    until not Fluent.Script.Signals[s].Parent
                elseif typeof(i) == "RBXScriptConnection" then
                    repeat
                        Fluent.Script.Signals[s]:Disconnect()
print("[DEBUG]: Executando - Fluent.Script.Signals[s]:Disconnect()")
                        task.wait()
                    until not Fluent.Script.Signals[s].Connected
                end
            end
        end
    )

    InterfaceSettings:SetLibrary(Fluent)
    InterfaceSettings:SetFolder("CrazyDay/Anime Vanguards/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
    InterfaceSettings:BuildInterfaceSection(Tabs_Main[#Tabs_Main])

    Filesfunction:CheckFolder("CrazyDay/Anime Vanguards/Macro")
    Filesfunction:CheckFile("CrazyDay/Anime Vanguards/Macro/Starter.json", {Database = {World = "",Units = {}}})

    setmetatable(Fluent.Options, Fluent.Script._len())
    setmetatable(Fluent.Script.Macro.Value, Fluent.Script._len({"Database"}))
    if not getgenv().StartTime then
           getgenv().StartTime = tick()
    end
    if not getgenv().SlowLoad or (getgenv().SlowLoad and typeof(getgenv().SlowLoad) ~= "number") then
           getgenv().SlowLoad = 0
    end

    if getgenv().SlowLoad ~= 0 then
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            Windows.Root.DescendantAdded,
            function(Child)
print("[DEBUG]: Executando - function(Child)")
                if Child:IsA("TextButton") and Fluent.Loaded < 100 then
                    Fluent.Loaded += Fluent.Loaded < 55 and #Fluent.Options / #Fluent.Options or 0.175
                end
            end
        )

        local Loading
        local NotifyHolder = Fluent.Script.Instances(
            "ScreenGui", {Parent = game:GetService("CoreGui")}
        )

        Loading = Fluent:Notify(
            {
                Title = "[Loading] —— "..Fluent.Name,
                SubContent = "0% / 100%",
                Disable = true,
                Duration = function()
                    repeat
                        Fluent.NotifyHolder.Parent = NotifyHolder

                        if Fluent.GUI and Fluent.GUI.Enabled then
                            Fluent.GUI.Enabled = false
                        end

                        if not getgenv().LoadingAnimeVanguards and Fluent.GUI.Parent then
                            Loading.SubContentLabel.Text = tostring(Fluent.Loaded >= 100 and "100" or Fluent.Loaded).."% / 100%"

                            if Fluent.Loaded >= 100 then
                                task.wait(0.55)
                                break
                            end
                               Fluent.Loaded += 1
                        end

                        pcall(
                            function()
print("[DEBUG]: Executando - function()")
                                Loading.SubContentLabel.Text = tostring(Fluent.Loaded).."% / 100%"
                            end
                        )

                        task.wait()
                    until not Fluent.GUI.Parent
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            Fluent.GUI.Enabled = true
                            Fluent.NotifyHolder.Parent = Fluent.GUI
                            NotifyHolder:Destroy()
                        end
                    )
                end
            }
        )
    end

    Tabs_Misc[4][3].Container.Parent.Visible = false

    local function _Creating_Stage_Dropdown(z, y, h)
        for i = 1, #Fluent.Script.Vanguards._StagesData(z).Stage do
            local j = Fluent.Script.Vanguards._StagesData(z).Stage[i]
            if not Fluent.Script.Frames[y] then
                   Fluent.Script.Frames[y] = Tabs_Misc[4][3]:AddMiniParagraph(
print("[DEBUG]: Executando - Fluent.Script.Frames[y] = Tabs_Misc[4][3]:AddMiniParagraph(")
                    {
                        Title = h
                    }
                )
            end
            Tabs_Misc[4][3]:AddDropdown(y..j,
                {
                    Title = j,
                    Values = Fluent.Script.Macro.Files(),
                    AllowNull = true,
                    Wait = getgenv().SlowLoad >= 1 and table.find({1, 15, 20}, i)
                }
            )
        end
    end

    _Creating_Stage_Dropdown("Raid", "Raid", "Raid")
    _Creating_Stage_Dropdown("Story", "Story", "Story")
    _Creating_Stage_Dropdown("Story", "Infinite", "Infinite")
    _Creating_Stage_Dropdown("Story", "Paragon", "Paragon")
    _Creating_Stage_Dropdown("Story", "Challenge", "Challenge")
    _Creating_Stage_Dropdown("LegendStage", "LegendStage", "Legend Stage")

    Tabs_Misc[4][3]:AddMiniParagraph(
        {
            Title = "Select Macro (Disable)"
        }
    )

    for i = 1, #Fluent.Script.Vanguards._Modifiers() do
        table.insert(Fluent.Script.Frames[1],
            Tabs_Misc[2][4]:AddMiniParagraph(
                {
                    Title = "Priority "..tostring(i)
                }
            )
        )
        table.insert(Fluent.Script.Frames[1],
            Tabs_Misc[2][4]:AddDropdown("Modifier"..tostring(i),
                {
                    Title = "Select",
                    Values = Fluent.Script.Vanguards._Modifiers(),
                    Default = i,
                    Wait = getgenv().SlowLoad >= 1 and table.find({1, 15, 20}, i)
                }
            )
        )
    end

    for h, y in next, Fluent.Script.Frames[1] do
        y.Frame.Visible = false
    end
end


Tabs_Misc[1][1]:AddToggle("Auto Start",
    {
        Title = "Auto Start",
        Description = "Start the game after creating the room",
        Default = true,
        Wait = getgenv().SlowLoad >= 1
    }
)

Tabs_Misc[1][1]:AddToggle("Friends Only",
    {
        Title = "Friends Only",
        Description = "Use a friend only when creating a room",
        Default = true
    }
)
Tabs_Misc[1][1]:AddSlider("Join Delay",
    {
        Title = "Join In 1 Second",
        Default = 1,
        Min = 0,
        Max = 30,
        Rounding = 0,
        Callback = function(n)
            task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                function()
print("[DEBUG]: Executando - function()")
                    repeat
                        task.wait()
                    until Configs["Join Delay"]
                          Configs["Join Delay"]:SetTitle("Join In "..tostring(n).." Second")
                end
            )
        end
    }
)
Fluent.Script.Buttons["Return Lobby"] = Tabs_Misc[1][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Return Lobby"] = Tabs_Misc[1][1]:AddButton(")
    {
        Title = "Return to Lobby",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Lobby",
                    Content = "Do you want to teleport to the lobby?",
                    Buttons = {
                        {Title = "Yes", Callback = function()
                            game:GetService("ReplicatedStorage").Networking.TeleportEvent:FireServer("Lobby")
                        end},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Tabs_Misc[1][2]:AddDropdown("Raids Act",
    {
        Title = "Selecte Act",
        Values = Fluent.Script.Vanguards._StagesData("Raid").Acts,
        Multi = false,
        Default = 1
    }
)
Tabs_Misc[1][2]:AddDropdown("Raids Stage",
    {
        Title = "Selecte Stage",
        Values = Fluent.Script.Vanguards._StagesData("Raid").Stage,
        Multi = false,
        Default = 1,
        Wait = getgenv().SlowLoad >= 3
    }
)
Tabs_Misc[1][2]:AddToggle(
    "Auto Join Hights (Raids)",
    {
        Title = "Auto Join Raids (Hights)",
        Default = false,
        Callback = function(v)
            if v then
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Join Normal (Raids)"]
                              Configs["Auto Join Normal (Raids)"]:Lock()
                    end
                )
            else
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Join Normal (Raids)"]
                              Configs["Auto Join Normal (Raids)"]:UnLock()
                    end
                )
            end
        end
    }
)
Tabs_Misc[1][2]:AddToggle(
    "Auto Join Normal (Raids)",
    {
        Title = "Auto Join Raids (Normal)",
        Default = false,
        Callback = function(n)
            if n then
                Configs["Auto Join Hights (Raids)"]:Lock()
            else
                Configs["Auto Join Hights (Raids)"]:UnLock()
            end
        end
    }
)
Tabs_Misc[1][3]:AddDropdown("Story Difficulty",
    {
        Title = "Difficulty",
        Values = {"Normal", "Nightmare"},
        Multi = false,
        Default = 1
    }
)
Tabs_Misc[1][3]:AddDropdown("Story Act",
    {
        Title = "Selecte Act",
        Values = Fluent.Script.Vanguards._StagesData("Story").Acts,
        Multi = false,
        Default = 1
    }
)
Tabs_Misc[1][3]:AddDropdown("Story Stage",
    {
        Title = "Selecte Stage",
        Values = Fluent.Script.Vanguards._StagesData("Story").Stage,
        Multi = false,
        Default = 1,
        Wait = getgenv().SlowLoad >= 2
    }
)
Tabs_Misc[1][3]:AddToggle(
    "Auto Join Hights (Story)",
    {
        Title = "Auto Join Story (Hights)",
        Default = false,
        Callback = function(v)
            if v then
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Join Normal (Story)"]
                              Configs["Auto Join Normal (Story)"]:Lock()
                    end
                )
            else
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Join Normal (Story)"]
                              Configs["Auto Join Normal (Story)"]:UnLock()
                    end
                )
            end
        end
    }
)
Tabs_Misc[1][3]:AddToggle("Auto Join Normal (Story)",
    {
        Title = "Auto Join Story (Normal)",
        Description = "If you select (Paragon Mode), It will select the highest level",
        Default = false,
        Callback = function(v)
            if v then
                Configs["Auto Join Hights (Story)"]:Lock()
            else
                Configs["Auto Join Hights (Story)"]:UnLock()
            end
        end
    }
)
Tabs_Misc[1][4]:AddDropdown("Select Challenge Type",
    {
        Title = "Select Challenge Type",
        Values = {"Daily Challenge", "Half Hourly Challenge"},
        Multi = true,
        Default = {"Half Hourly Challenge"},
        Callback = function()
            task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                function()
print("[DEBUG]: Executando - function()")
                    repeat
                        task.wait()
                    until Configs["Auto Lobby Challenge"]
                          Configs["Auto Lobby Challenge"]:SetDesc("Automatically teleport to lobby when ("..table.concat(Configs["Select Challenge Type"].Tables, ", ")..") is change")
                end
            )
        end
    }
)
Tabs_Misc[1][4]:AddDropdown("Ignore Challenge World",
    {
        Title = "Ignore Challenge World",
        Values = Fluent.Script.Vanguards._StagesData("Story").Stage,
        Multi = true,
        Default = {}
    }
)
Tabs_Misc[1][4]:AddDropdown("Ignore Challenge Modifier",
    {
        Title = "Ignore Challenge Modifier",
        Values = Fluent.Script.Vanguards._Modifiers(),
        Multi = true,
        Default = {},
        Wait = getgenv().SlowLoad >= 3
    }
)
Tabs_Misc[1][4]:AddDropdown("Select Challenge Rewards",
    {
        Title = "Select Challenge Rewards",
        Values = Fluent.Script.Vanguards._ItemsData(),
        Multi = true,
        Default = {}
    }
)
Tabs_Misc[1][4]:AddToggle("Auto Join Challenge",
    {
        Title = "Auto Join Challenge",
        Default = false,
        Callback = function(i)
            Fluent.Script.Challenge = not i and "" or Fluent.Script.Challenge
print("[DEBUG]: Executando - Fluent.Script.Challenge = not i and "" or Fluent.Script.Challenge")
        end
    }
)
Tabs_Misc[1][4]:AddToggle("Auto Lobby Challenge",
    {
        Title = "Auto Lobby Challenge",
        Description = "Automatically teleport to lobby when ("..table.concat(Configs["Select Challenge Type"].Tables, ", ")..") is change",
        Default = false
    }
)
Tabs_Misc[1][5]:AddDropdown("Legend Stage Act",
    {
        Title = "Selecte Act",
        Values = Fluent.Script.Vanguards._StagesData("LegendStage").Acts,
        Multi = false,
        Default = 1
    }
)
Tabs_Misc[1][5]:AddDropdown("Legend Stage Stage",
    {
        Title = "Selecte Stage",
        Values = Fluent.Script.Vanguards._StagesData("LegendStage").Stage,
        Multi = false,
        Default = 1,
        Wait = getgenv().SlowLoad >= 1
    }
)
Tabs_Misc[1][5]:AddToggle("Auto Join Legend Stage",
    {
        Title = "Auto Join Legend Stage",
        Default = false
    }
)
Tabs_Misc[2][1]:AddToggle("Auto Skip",
    {
        Title = "Auto Skip",
        Description = "Automatically skip/start game When the wave skip, show",
        Default = false
    }
)
Tabs_Misc[2][1]:AddToggle("Auto Next",
    {
        Title = "Auto Next",
        Description = "Automatically play the next act after the game finish",
        Default = false
    }
)
Tabs_Misc[2][1]:AddToggle("Auto Retry",
    {
        Title = "Auto Retry",
        Description = "Automatically retry act after the game finish",
        Default = false
    }
)
Tabs_Misc[2][1]:AddToggle("Auto Leave",
    {
        Title = "Auto Leave",
        Default = false,
        Wait = getgenv().SlowLoad >= 2
    }
)
Tabs_Misc[2][2]:AddDropdown("Select Unit (Sell)",
    {
        Title = "Select Unit",
        Values = Fluent.Script.Vanguards._Slot().Unit,
        Multi = true,
        Default = {}
    }
)
Tabs_Misc[2][2]:AddSlider("Select Wave (Sell / Leave)",
    {
        Title = "Select Wave",
        Default = 1,
        Min = 1,
        Max = 1000,
        Rounding = 0
    }
)
Tabs_Misc[2][2]:AddToggle("Auto Sell (Select Unit)",
    {
        Title = "Auto Sell",
        Description = "Automatically sell all selected units on the selected wave,\nIf you enabled auto sell with macro record the macro will not record select units",
        Default = false,
        Callback = function(v)
            if v then
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Leave Select Wave"]
                              Configs["Auto Leave Select Wave"]:Lock()
                    end
                )
            else
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Leave Select Wave"]
                              Configs["Auto Leave Select Wave"]:UnLock()
                    end
                )
            end
        end
    }
)
Tabs_Misc[2][2]:AddToggle("Auto Leave Select Wave",
    {
        Title = "Auto Leave",
        Description = "Automatically teleport to lobby on the selected wave",
        Default = false,
        Callback = function(v)
            if v then
                Configs["Auto Sell (Select Unit)"]:Lock()
            else
                Configs["Auto Sell (Select Unit)"]:UnLock()
            end
        end
    }
)
Tabs_Misc[2][2]:AddToggle("Auto Sell Farm Last Wave",
    {
        Title = "Auto Sell Farm Last Wave",
        Description = "Automatically sell all farm units in the last wave",
        Default = false,
        Wait = getgenv().SlowLoad >= 3
    }
)
Tabs_Misc[2][2]:AddMiniParagraph(
    {
        Title = "Mohato"
    }
)
Tabs_Misc[2][2]:AddDropdown("Select Unit (Mohato)",
    {
        Title = "Select Unit",
        Values = Fluent.Script.Vanguards._Slot().Unit,
        Multi = false,
        Default = 1
    }
)
Tabs_Misc[2][2]:AddToggle("Auto Mohato",
    {
        Title = "Auto Mohato",
        Description = "When Mohato spawns, will wait until he is attackable and place the selected unit near him",
        Default = false,
        Callback = function(v)
            if v then
                Configs["Select Unit (Mohato)"]:Lock()
            else
                Configs["Select Unit (Mohato)"]:UnLock()
            end
        end
    }
)
Tabs_Misc[2][2]:AddSlider("Unit Max Upgrade",
    {
        Title = "Unit Max Upgrade",
        Default = 1,
        Min = 0,
        Max = 15,
        Rounding = 0
    }
)
Tabs_Misc[2][2]:AddMiniParagraph(
    {
        Title = "Boss Event - Sukuna",
        Wait = getgenv().SlowLoad >= 1
    }
)
Tabs_Misc[2][2]:AddDropdown("Select Attack Sukuna",
    {
        Title = "Select Attack",
        Values = {"Cleave", "Dismantle Slam", "Cleaving Dash", "Flame Release"},
        Description = "Select an attack to disable",
        Multi = false,
        Default = 3
    }
)
Tabs_Misc[2][2]:AddToggle("Auto Select Attack",
    {
        Title = "Auto Select Attack",
        Default = false
    }
)
Tabs_Misc[2][3]:AddDropdown("Raid Team",
    {
        Title = "Raid",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true
    }
)
Tabs_Misc[2][3]:AddDropdown("Story Team",
    {
        Title = "Story",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true
    }
)
Tabs_Misc[2][3]:AddDropdown("Infinite Team",
    {
        Title = "Infinite",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true,
        Wait = getgenv().SlowLoad >= 2
    }
)
Tabs_Misc[2][3]:AddDropdown("Paragon Team",
    {
        Title = "Paragon",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true
    }
)
Tabs_Misc[2][3]:AddDropdown("Challenge Team",
    {
        Title = "Challenge",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true
    }
)
Tabs_Misc[2][3]:AddDropdown("Legend Stage Team",
    {
        Title = "Legend Stage",
        Values = {"Team1", "Team2", "Team3", "Team4", "Team5"},
        Multi = false,
        AllowNull = true
    }
)
Tabs_Misc[2][3]:AddToggle("Auto Change Team",
    {
        Title = "Auto Change Team",
        Description = "Automatically change your team before joining a room",
        Default = false
    }
)
Tabs_Misc[2][4]:AddButton(
    {
        Title = "Select Modifier",
        Description = "Click to Enable/Disable (Select Modifier)",
        Wait = getgenv().SlowLoad >= 3,
        Callback = function()
            local e = false
            for y, h in next, Fluent.Script.Frames[1] do
                e = h.Frame.Visible
                h.Frame.Visible = not h.Frame.Visible
            end
            task.delay(0.055, function()
                if e then
                    local t = Tabs_Misc[2][4].Container.Parent.Parent
                    t.CanvasPosition = Vector2.new(0, t.CanvasPosition.Y - Tabs_Misc[2][4].Container.Parent.Size.Y.Offset)
                end
            end)
        end
    }
)
Tabs_Misc[2][4]:AddToggle("Auto Choose Modifier",
    {
        Title = "Auto Choose Modifier",
        Description = "Automatically select modifiers by priority",
        Default = false
    }
)
Tabs_Misc[2][5]:AddInput("Webhook Id",
    {
        Title = "Webhook Id",
        Placeholder = "Id.",
        Numeric = true,
        Finished = false
    }
)
Tabs_Misc[2][5]:AddInput("Webhook Url",
    {
        Title = "Webhook Url",
        Placeholder = "Url.",
        Numeric = false,
        Finished = false
    }
)
Tabs_Misc[2][5]:AddToggle("Ping Webhook",
    {
        Title = "Ping Webhook",
        Description = "@Your Discord Id, If the rewards have an (Exclusive or Sercret)",
        Default = false
    }
)
Tabs_Misc[2][5]:AddToggle("Send Webhook",
    {
        Title = "Send Webhook",
        Description = "Send a notifaction to your Discord when the game ends, displaying information about the match and what rewards you've received",
        Default = false,
        Wait = getgenv().SlowLoad >= 1
    }
)
Tabs_Misc[3][1]:AddDropdown("Select Essence Stone",
    {
        Title = "Select Essence Stone",
        Values = Fluent.Script.Vanguards._EssenceStones({"Green Essence Stone", "Rainbow Essence Stone"}),
        Multi = true,
        Default = {}
    }
)
Tabs_Misc[3][1]:AddToggle("Auto Craft Essence Stone",
    {
        Title = "Auto Craft Essence Stone",
        Default = false,
        Callback = function(v)
            if v then
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Lobby Green Essence Stone"]
                              Configs["Auto Lobby Green Essence Stone"]:UnLock()
                    end
                )
            else
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        repeat
                            task.wait()
                        until Configs["Auto Lobby Green Essence Stone"]
                              Configs["Auto Lobby Green Essence Stone"]:SetValue(false)
                              Configs["Auto Lobby Green Essence Stone"]:Lock()
                    end
                )
            end
        end
    }
)
Tabs_Misc[3][1]:AddToggle("Auto Lobby Green Essence Stone",
    {
        Title = "Auto Lobby Green Essence Stone",
        Default = false,
        Description = "Automatically teleport to lobby when you reached maximum amout of Green Essence Stone ("..tostring(Fluent.Script.Vanguards._InventoryHandler("Green Essence Stone")).."/100)"
    }
)
Tabs_Misc[4][1]:AddMiniParagraph(
    {
        Title = "Status"
    }
)
Fluent.Script.Buttons["Macro Status"] = Tabs_Misc[4][1]:AddParagraph(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Macro Status"] = Tabs_Misc[4][1]:AddParagraph(")
    {
        Title = Fluent.Script.Macro.Status,
        Content = "\nGame Time : 0.00",
        Wait = getgenv().SlowLoad >= 2
    }
)
Tabs_Misc[4][1]:AddToggle("Macro Status",
    {
        Title = "Macro Status",
        Description = "Toggle to show (Macro Status)",
        Default = true,
        Callback = function(v)
            Fluent.Script.Buttons["Macro Status"].Frame.Visible = v
print("[DEBUG]: Executando - Fluent.Script.Buttons["Macro Status"].Frame.Visible = v")
        end
    }
)
Tabs_Misc[4][1]:AddMiniParagraph(
    {
        Title = "Manage"
    }
)
Tabs_Misc[4][1]:AddDropdown("Macro File",
    {
        Title = "Select File",
        Values = Fluent.Script.Macro.Files(),
        Default = "Starter",
        Callback = function()
            table.clear(Fluent.Script.Macro.Value)
                        Fluent.Script.Macro.Value.Database = {World = "",Units = {}}
print("[DEBUG]: Executando - Fluent.Script.Macro.Value.Database = {World = "",Units = {}}")
        end
    }
)
Tabs_Misc[4][1]:AddInput("File Name",
    {
        Title = "Create Name",
        Placeholder = "File name here...",
        Default = ""
    }
)
Tabs_Misc[4][1]:AddMiniParagraph(
    {
        Title = "Button",
        Wait = getgenv().SlowLoad >= 3
    }
)
Fluent.Script.Buttons["Equip Units"] = Tabs_Misc[4][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Equip Units"] = Tabs_Misc[4][1]:AddButton(")
    {
        Title = "Equip Units",
        Description = "Equip all units in the selected macro",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Equip",
                    Content = "Are you sure to equip all units in the selected macro?",
                    Buttons = {
                        {Title = "Yes", Callback = EquipUnits},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Fluent.Script.Buttons["Craete Macro"] = Tabs_Misc[4][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Craete Macro"] = Tabs_Misc[4][1]:AddButton(")
    {
        Title = "Create Macro File",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Create",
                    Content = string.format("Are you sure to create the ".."%s.json", Configs["File Name"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Fluent.Script.Macro.Create},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Fluent.Script.Buttons["Delete Macro"] = Tabs_Misc[4][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Delete Macro"] = Tabs_Misc[4][1]:AddButton(")
    {
        Title = "Delete Select Macro",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Delete",
                    Content = string.format("Are you sure to delete the ".."%s.json", Configs["Macro File"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Fluent.Script.Macro.Delete},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Fluent.Script.Buttons["Export Macro"] = Tabs_Misc[4][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Export Macro"] = Tabs_Misc[4][1]:AddButton(")
    {
        Title = "Export Select Macro",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Export",
                    Content = string.format("Are you sure to export the ".."%s.json", Configs["Macro File"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Fluent.Script.Macro.Export},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Tabs_Misc[4][1]:AddMiniParagraph(
    {
        Title = "Import",
        Wait = getgenv().SlowLoad >= 1
    }
)
Tabs_Misc[4][1]:AddInput("Import Link",
    {
        Title = "Import Link",
        Placeholder = "Github or Discord Link...",
        Default = ""
    }
)
Tabs_Misc[4][1]:AddInput("Import Name",
    {
        Title = "Import Name",
        Placeholder = "Import name here...",
        Default = ""
    }
)
Fluent.Script.Buttons["Import Macro"] = Tabs_Misc[4][1]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Import Macro"] = Tabs_Misc[4][1]:AddButton(")
    {
        Title = "Import Macro",
        Callback = function()
            Windows:Dialog(
                {
                    Title = "Import",
                    Content = string.format("Are you sure to import the ".."%s.json", Configs["Import Name"].Value),
                    Buttons = {
                        {Title = "Yes", Callback = Fluent.Script.Macro.Import},
                        {Title = "No"}
                    }
                }
            )
        end
    }
)
Tabs_Misc[4][2]:AddDropdown("Record Type",
    {
        Title = "Record Type",
        Values = {"Time", "Money", "Hybrid"},
        Default = "Hybrid"
    }
)
Tabs_Misc[4][2]:AddToggle(
    "Macro Record",
    {
        Title = "Record Macro",
        Description =  "Experiencing issues with the recorded macro? Try not to press upgrade to early, place units to close to each other",
        Default = false,
        Wait = getgenv().SlowLoad >= 2,
        Callback = function(v)
            if not v then
                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
            elseif v and #Fluent.Script.Macro.Value > 0 then
                local t = Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                if t["Type"] == "BoogieMove" then
                    Fluent.Script.Macro.Action.Create(t, t["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(t, t["CFrame"])")
                    Fluent.Script.Macro.Action.Create(t, t["Selected"]["CFrame"], t["Selected"]["Unit"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(t, t["Selected"]["CFrame"], t["Selected"]["Unit"])")
                else
                    Fluent.Script.Macro.Action.Create(t, t["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(t, t["CFrame"])")
                end
            end
        end
    }
)
Tabs_Misc[4][2]:AddSlider("Macro Delay",
    {
        Title = "Play Back Delay",
        Default = 0.075,
        Min = 0,
        Max = 10,
        Rounding = 3
    }
)
Tabs_Misc[4][2]:AddToggle("Macro Play",
    {
        Title = "Play Back Macro",
        Default = false
    }
)
Fluent.Script.Buttons["Select Macro"] = Tabs_Misc[4][2]:AddButton(
print("[DEBUG]: Executando - Fluent.Script.Buttons["Select Macro"] = Tabs_Misc[4][2]:AddButton(")
    {
        Title = "Select Macro",
        Description = "Click to Enable/Disable (Select Macro)",
        Callback = function()
            Tabs_Misc[4][3].Container.Parent.Visible = not Tabs_Misc[4][3].Container.Parent.Visible

            Fluent.Script.Buttons["Select Macro"].Frame.Parent = not Tabs_Misc[4][3].Container.Parent.Visible and Tabs_Misc[4][2].Container or Tabs_Misc[4][3].Container
print("[DEBUG]: Executando - Fluent.Script.Buttons["Select Macro"].Frame.Parent = not Tabs_Misc[4][3].Container.Parent.Visible and Tabs_Misc[4][2].Container or Tabs_Misc[4][3].Container")

            task.delay(0.055, function()
                local t = Tabs_Misc[4][3].Container.Parent.Parent
                t.CanvasPosition = Vector2.new(0, t.AbsoluteCanvasSize.Y - t.AbsoluteWindowSize.Y)
            end)
        end
    }
)

if Fluent.Unloaded or not Fluent.GUI.Parent then
    return
else
    do
        Fluent.Loaded = 95
        Windows:SelectTab(1)
        Windows:Minimize("Loaded")
        getgenv().LoadingAnimeVanguards = false
        warn("[Loaded] —— " .. Fluent.Name)
        Fluent.GUI.Enabled = true

        SaveSettings:SetLibrary(Fluent)
        SaveSettings:SetFolder("CrazyDay/Anime Vanguards/"..game:GetService("Players"):GetUserIdFromNameAsync(game:GetService("Players").LocalPlayer.Name))
        SaveSettings:SetIgnoreIndexes({"File Name","Macro Record","Import Name","Import Link"})
        SaveSettings:IgnoreThemeSettings()
        SaveSettings:BuildConfigSection(Tabs_Main[#Tabs_Main])

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.Idled,
            function()
print("[DEBUG]: Executando - function()")
                game:GetService("VirtualUser"):CaptureController()
                game:GetService("VirtualUser"):ClickButton2(Vector2.new())
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.InventoryEvent.OnClientEvent,
            function()
print("[DEBUG]: Executando - function()")
                Configs["Auto Lobby Green Essence Stone"]:SetDesc("Automatically teleport to lobby when you reached maximum amout of Green Essence Stone ("..tostring(Fluent.Script.Vanguards._InventoryHandler("Green Essence Stone")).."/100)")
            end
        )
    end

    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
        function()
print("[DEBUG]: Executando - function()")
            while true and task.wait() do
                if Fluent.Unloaded then
                    break
                else
                    local c, b = Configs, Fluent.Script.Buttons
    
                    --# Export
                    if c["Macro File"].Value and b["Export Macro"].IsLocked then
                        b["Export Macro"]:UnLock()
                    elseif not c["Macro File"].Value and not b["Export Macro"].IsLocked then
                        b["Export Macro"]:Lock()
                    end
    
                    --# Import
                    if #c["Import Link"].Value >= 1 and #c["Import Name"].Value >= 1 and b["Import Macro"].IsLocked then
                        b["Import Macro"]:UnLock()
                    elseif (c["Import Link"].Value == 0 or #c["Import Name"].Value == 0) and not b["Import Macro"].IsLocked then
                        b["Import Macro"]:Lock()
                    end
    
                    --# Webhook
                    if #c["Webhook Url"].Value >= 1 and c["Send Webhook"].IsLocked then
                        c["Send Webhook"]:UnLock()
                    elseif #c["Webhook Id"].Value >= 1 and c["Ping Webhook"].IsLocked then
                        c["Ping Webhook"]:UnLock()
                    elseif #c["Webhook Url"].Value == 0 and not c["Send Webhook"].IsLocked then
                        c["Send Webhook"]:SetValue(false)
                        c["Send Webhook"]:Lock()
                    elseif #c["Webhook Id"].Value == 0 and not c["Ping Webhook"].IsLocked then
                        c["Ping Webhook"]:SetValue(false)
                        c["Ping Webhook"]:Lock()
                    end
    
                    if c["Macro Record"].Value or c["Macro Play"].Value then
    
                        --# Manage
                        for r, v in next, {"File Name", "Macro File"} do
                            if not c[v].IsLocked then
                                c[v]:Lock()
                            end
                        end
    
                        --# Button
                        for r, v in next, {"Delete Macro", "Craete Macro"} do
                            if not b[v].IsLocked then
                                b[v]:Lock()
                            end
                        end
    
                        --# Macros
                        if c["Macro Play"].Value and not c["Macro Record"].IsLocked then
                            c["Macro Record"]:Lock()
                        end
                        if c["Macro Record"].Value and not c["Macro Play"].IsLocked then
                            c["Macro Play"]:Lock()
                        end
                    else
                        --# Button
                        if #c["File Name"].Value >= 1 and b["Craete Macro"].IsLocked then
                            b["Craete Macro"]:UnLock()
                        elseif #c["File Name"].Value == 0 and not b["Craete Macro"].IsLocked then
                            b["Craete Macro"]:Lock()
                        end
                        if c["Macro File"].Value and b["Delete Macro"].IsLocked then
                            b["Delete Macro"]:UnLock()
                        elseif not c["Macro File"].Value and not b["Delete Macro"].IsLocked then
                            b["Delete Macro"]:Lock()
                        end
    
                        --# Manage / Macro
                        for r, v in next, {"File Name", "Macro File", "Macro Play", "Macro Record"} do
                            if c[v].IsLocked then
                                c[v]:UnLock()
                            end
                        end
                    end
                end
            end
        end
    )

    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
        Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
        game:GetService("ReplicatedStorage").Networking.ClientListeners.NotificationEvent.OnClientEvent,
        function(j)
print("[DEBUG]: Executando - function(j)")
            if j.Text == "Teleporting players..." then
                Fluent.Destroy()
            else
                if j.Text == "Match Started!" and not game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Enabled then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                task.wait()
                            until Fluent.Unloaded or game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Enabled
                            task.delay(0.055, function()
                                if game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Enabled then
print("[DEBUG]: Requisitando ou carregando - getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Other.EndScreenHandler)._Init)[6]()")
                                    getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Other.EndScreenHandler)._Init)[6]()
                                end
                            end)
                        end
                    )
                elseif j.Text:match("cannot be retried!") then
                    Fluent.Script.Not_Retry = true
print("[DEBUG]: Executando - Fluent.Script.Not_Retry = true")
                elseif j.Text == "Unable to go to next act!" then
                    Fluent.Script_Not_Next_Act = true
print("[DEBUG]: Executando - Fluent.Script_Not_Next_Act = true")
                elseif j.Text == "Summon banner has been reset!" then
                    Fluent.Script.Summon_Changed = true
print("[DEBUG]: Executando - Fluent.Script.Summon_Changed = true")
                elseif j.Text == "Daily Challenge has been reset!" then
                    Fluent.Script.Daily_Changed = true
print("[DEBUG]: Executando - Fluent.Script.Daily_Changed = true")
                    Fluent.Script.Cooldown_Daily = false
print("[DEBUG]: Executando - Fluent.Script.Cooldown_Daily = false")
                elseif j.Text == "Half Hourly Challenge has been reset!" then
                    Fluent.Script.HalfHourly_Changed = true
print("[DEBUG]: Executando - Fluent.Script.HalfHourly_Changed = true")
                    Fluent.Script.Cooldown_HalfHourly = false
print("[DEBUG]: Executando - Fluent.Script.Cooldown_HalfHourly = false")
                elseif j.Text:match("You have already completed this challenge") then
                    if Fluent.Script.Challenge == "Daily" then
                        Fluent.Script.Cooldown_Daily = true
print("[DEBUG]: Executando - Fluent.Script.Cooldown_Daily = true")
                    elseif Fluent.Script.Challenge == "Half Hourly" then
                        Fluent.Script.Cooldown_HalfHourly = true
print("[DEBUG]: Executando - Fluent.Script.Cooldown_HalfHourly = true")
                    end
                end
            end
        end
    )
    
    if game.PlaceId == 16146832113 then
        Fluent.Script.Buttons["Return Lobby"]:Lock()
print("[DEBUG]: Executando - Fluent.Script.Buttons["Return Lobby"]:Lock()")
    
        local function UnitWindowHandler(h)
            local e = {}
    
print("[DEBUG]: Requisitando ou carregando - for y, z in next, require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.UnitWindowHandler)._Cache do")
            for y, z in next, require(game:GetService("StarterPlayer").Modules.Interface.Loader.Windows.UnitWindowHandler)._Cache do
                if z.UnitData.Name == h then
                    table.insert(e, z)
                end
            end
            table.sort(e, function(a, b)
                return tonumber(a.Level) >= tonumber(b.Level)
            end)
            return e[1] or {}
        end
    
        function EquipUnits()
print("[DEBUG]: Executando - function EquipUnits()")
            local u, l = {}
            local s, e = pcall(
                function()
print("[DEBUG]: Executando - function()")
                    assert(Configs["Macro File"].Value, "Select macro file first")
                    assert(isfile, "The executor doesn't support isfile")
                    assert(delfile, "The executor doesn't support delfile")
                    assert(isfolder, "The executor doesn't support isfolder")
                    assert(readfile, "The executor doesn't support readfile")
                    assert(delfolder, "The executor doesn't support delfolder")
                    assert(listfiles, "The executor doesn't support listfiles")
                    assert(writefile, "The executor doesn't support writefile")
                    assert(makefolder, "The executor doesn't support makefolder")
                    l = game:GetService("HttpService"):JSONDecode(readfile(Otherfunction:FormatLocation(Configs["Macro File"].Value)))
                    setmetatable(l, Fluent.Script._len({"Database"}))
                    assert(#l > 0, "Make sure you're already record macro")
                    assert(l.Database.Units, "The units database is empty")
                    for x = 1, #l do
                        if UnitWindowHandler(l.Database.Units[x]) then
                            if #u == 0 then
                                game:GetService("ReplicatedStorage").Networking.Units.EquipEvent:FireServer("UnequipAll")
                                task.wait(0.125)
                            end
                            game:GetService("ReplicatedStorage").Networking.Units.EquipEvent:FireServer("Equip", UnitWindowHandler(l.Database.Units[x]).UniqueIdentifier)
                            table.insert(u, UnitWindowHandler(l.Database.Units[x]).UnitData.Name)
                        end
                    end
                end
            )
            if s then
                Fluent:Notify(
                    {
                        Title = "Successful equip units",
                        SubContent = table.concat(u, ", "),
                        Disable = true,
                        Duration = 5
                    }
                )
            else
                e = tostring(e)
                if e:find(": ") then
                    e = e:split(": ")[2]
                end
                Fluent:Notify(
                    {
                        Title = "Unsuccessful equip units",
                        SubContent = e,
                        Disable = true,
                        Duration = 5
                    }
                )
            end
        end
    
        local function MainLobby(c, u)
            if c == "Challenges" then
                for y, t in next, Fluent.Script.Vanguards._MainLobby()["Challenges"]:GetChildren() do
                    if t:IsA("Model") and t.LobbyBanner.Banner.Main.ChallengeInterface.Background.MaxPlayers.Amount.Text == "0/4" and
                    (
                        not u and t.LobbyBanner.Banner.Main.ChallengeInterface.Background.StageName.Text ~= "Daily"
                        or  u and t.LobbyBanner.Banner.Main.ChallengeInterface.Background.StageName.Text == "Daily"
                    )
                    then
                        return t
                    end
                end
            else
                for y, t in next, Fluent.Script.Vanguards._MainLobby()[c]:GetChildren() do
                    if t:IsA("Model") and t.Name == "Lobby" and t.LobbyBanner.Banner.Main:FindFirstChild("ChosenStage") == nil and t.LobbyBanner.Banner.Main.ChoosingStage.Main.ActName.Text == "Choosing..." and not table.find(Fluent.Script.Game.Lobby, t) then
                        return t
                    end
                end
            end
        end
    
        local function ChallengeReward(j)
            if #Configs["Select Challenge Rewards"].Tables > 0 and MainLobby("Challenges", j) then
                local h = MainLobby("Challenges", j).LobbyBanner.Banner.Main.ChallengeInterface.Background.StageName.Text
    
                if h == "Daily" then
                    for c, e in next, {Fluent.Script.Vanguards._EssenceStones(), {"Stat Chip", "TraitRerolls", "Super Stat Chip"}} do
                        if typeof(e) == "table" then
                            for y, k in next, e do
                                if table.find(Configs["Select Challenge Rewards"].Tables, k) then
                                    return ""
                                end
                            end
                        end
                    end
                elseif h == "Essence Stone Challenge" then
print("[DEBUG]: Requisitando ou carregando - for k, f in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do")
                    for k, f in next, require(game:GetService("ReplicatedStorage").Modules.Data.ItemsData.EssenceStones) do
                        if table.find(Configs["Select Challenge Rewards"].Tables, k) then
                            return ""
                        end
                    end
print("[DEBUG]: Requisitando ou carregando - elseif require(game:GetService("ReplicatedStorage").Modules.Data.ChallengeRewardsData).HalfHourly[h] then")
                elseif require(game:GetService("ReplicatedStorage").Modules.Data.ChallengeRewardsData).HalfHourly[h] then
print("[DEBUG]: Requisitando ou carregando - for g, q in next, require(game:GetService("ReplicatedStorage").Modules.Data.ChallengeRewardsData).HalfHourly[h] do")
                    for g, q in next, require(game:GetService("ReplicatedStorage").Modules.Data.ChallengeRewardsData).HalfHourly[h] do
                        if typeof(q) == "table" then
                            for s, e in next, q do
                                if table.find(Configs["Select Challenge Rewards"].Tables, s) then
                                    return ""
                                end
                            end
                        end
                    end
                end
            end
        end
    
        local function ChallengeIgnore(l)
            if #Configs["Ignore Challenge World"].Tables > 0 and MainLobby("Challenges", l) then
                for j, d in next, Configs["Ignore Challenge World"].Tables do
print("[DEBUG]: Requisitando ou carregando - for h, e in next, require(game:GetService("ReplicatedStorage").Modules.Data.StagesData).Challenge do")
                    for h, e in next, require(game:GetService("ReplicatedStorage").Modules.Data.StagesData).Challenge do
                        if h == Fluent.Script.Vanguards._StagesName("Story", d) then
                            for i = 1, 6 do
                                if e.Acts["Act"..tostring(i)].ActName == MainLobby("Challenges", l).LobbyBanner.Banner.Main.ChallengeInterface.Background.ActName.Text then
                                    return ""
                                end
                            end
                        end
                    end
                end
            end
            if #Configs["Ignore Challenge Modifier"].Tables > 0 and MainLobby("Challenges", l) then
                local j = MainLobby("Challenges", l).LobbyBanner.Banner.Main.ChallengeInterface.Background.Difficulty.Label.Text
    
                if not j:find(" ") then
                    for i = 1, #Configs["Ignore Challenge Modifier"].Tables do
                        if j:lower() == Configs["Ignore Challenge Modifier"].Tables[i]:lower() then
                            return ""
                        end
                    end
                else
                    local h = {}
    
                    for i = 1, #j:split(" ") do
                        local e = j:split(" ")[i]
                        if e:find(",") then
                           e = e:gsub(",", "")
                        end
                        table.insert(h, e:lower())
                    end
                    for i = 1, #Configs["Ignore Challenge Modifier"].Tables do
                        if table.find(h, Configs["Ignore Challenge Modifier"].Tables[i]:lower()) then
                            return ""
                        end
                    end
                end
            end
        end
    
        local function ChallengeUnlock(k)
print("[DEBUG]: Requisitando ou carregando - for y, h in next, require(game:GetService("ReplicatedStorage").Modules.Data.StagesData).Challenge do")
            for y, h in next, require(game:GetService("ReplicatedStorage").Modules.Data.StagesData).Challenge do
                if Fluent.Script.Vanguards._LobbyHandler().PlayerData.Stages.Story[y] then
                    for i = 1, 6 do
                        if h.Acts["Act"..tostring(i)].ActName == MainLobby("Challenges", k).LobbyBanner.Banner.Main.ChallengeInterface.Background.ActName.Text then
                            if Fluent.Script.Vanguards._LobbyHandler().PlayerData.Stages.Story[y]["Act"..tostring(i)] then
                                return ""
                            end
                        end
                    end
                end
            end
        end
    
        local function ChoosingGameStage()
            if Fluent.Script.Vanguards._LobbyHandler().Owner == game:GetService("Players").LocalPlayer.Name and Fluent.Script.Vanguards._LobbyHandler().SelectedType ~= "Challenge" and not Fluent.Script.Vanguards._LobbyHandler().AlreadySelected then
                local k, j = Fluent.Script.Vanguards._LobbyHandler().PlayerData,
                             Fluent.Script.Vanguards._StagesName
print("[DEBUG]: Executando - Fluent.Script.Vanguards._StagesName")
    
                if Configs["Auto Join Normal (Raids)"].Value and k.Stages.Raid[j("Raid", Configs["Raids Stage"].Value)] and k.Stages.Raid[j("Raid", Configs["Raids Stage"].Value)][Configs["Raids Act"].Value] then
                    game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                        {
                            "Raid",
                            j("Raid", Configs["Raids Stage"].Value),
                            Configs["Raids Act"].Value,
                            "Normal",
                            4,
                            0,
                            Configs["Friends Only"].Value
                        }
                    )
                elseif Configs["Auto Join Hights (Raids)"].Value and k.Raids then
                    setmetatable(k.Stages.Raid, Fluent.Script._len())
                    setmetatable(k.Stages.Raid["Stage"..tostring(#k.Stages.Raid)], Fluent.Script._len())
                    game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                        {
                            "Raid",
                            "Stage"..tostring(#k.Stages.Raid),
                            "Act"..tostring(#k.Stages.Raid["Stage"..tostring(#k.Stages.Raid)]),
                            "Normal",
                            4,
                            0,
                            Configs["Friends Only"].Value
                        }
                    )
                elseif Configs["Auto Join Legend Stage"].Value and k.Stages.LegendStage[j("LegendStage", Configs["Legend Stage Stage"].Value)] and k.Stages.LegendStage[j("LegendStage", Configs["Legend Stage Stage"].Value)][Configs["Legend Stage Act"].Value] then
                    game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                        {
                            "LegendStage",
                            j("LegendStage", Configs["Legend Stage Stage"].Value),
                            Configs["Legend Stage Act"].Value,
                            "Normal",
                            4,
                            0,
                            Configs["Friends Only"].Value
                        }
                    )
                elseif Configs["Auto Join Normal (Story)"].Value and k.Stages.Story[j("Story", Configs["Story Stage"].Value)] and k.Stages.Story[j("Story", Configs["Story Stage"].Value)][Configs["Story Act"].Value] then
                    game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                        {
                            "Story",
                            j("Story", Configs["Story Stage"].Value),
                            Configs["Story Act"].Value,
                            (
                                (Configs["Story Act"].Value == "Paragon" or Configs["Story Act"].Value == "Infinite") and "Normal"
                            )
                                or Configs["Story Difficulty"].Value,
                            4,
                            Configs["Story Act"].Value == "Paragon" and tostring(k.Stages.Story[j("Story", Configs["Story Stage"].Value)].Paragon.ParagonLevelsReached.Nightmare + 1) or 0,
                            Configs["Friends Only"].Value
                        }
                    )
                elseif Configs["Auto Join Hights (Story)"].Value then
                    setmetatable(k.Stages.Story, Fluent.Script._len())
                    setmetatable(k.Stages.Story["Stage"..tostring(#k.Stages.Story)], Fluent.Script._len({"Paragon", "Infinite"}))
                    game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Confirm",
                        {
                            "Story",
                            "Stage"..tostring(#k.Stages.Story),
                            "Act"..tostring(#k.Stages.Story["Stage"..tostring(#k.Stages.Story)]),
                            Configs["Story Difficulty"].Value,
                            4,
                            0,
                            Configs["Friends Only"].Value
                        }
                    )
                end
            end
        end

        local function ChooseedGameStage(y, ...)
            if #Fluent.Script.Vanguards._LobbyHandler().Owner >= 1 or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then
                Fluent.Script.Challenge = ""
print("[DEBUG]: Executando - Fluent.Script.Challenge = """)
                ChoosingGameStage()
                return
            else
                if y then
                    pcall(y, ...)
                end
            end
        end

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif Configs["Auto Start"].Value and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("MiniLobbyInterface") then
                        game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Start")
                        break
                    end
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait(0.125) do
                    if Fluent.Unloaded then
                        break
                    elseif (Configs["Auto Join Challenge"].Value or Configs["Auto Join Legend Stage"].Value or Configs["Auto Join Normal (Raids)"].Value or Configs["Auto Join Hights (Raids)"].Value or Configs["Auto Join Normal (Story)"].Value or Configs["Auto Join Hights (Story)"].Value) then
                        if Fluent.Script.Vanguards._LobbyHandler().Owner == "" then
                            local k, j = Fluent.Script.Vanguards._LobbyHandler().PlayerData,
                                         Fluent.Script.Vanguards._StagesName
print("[DEBUG]: Executando - Fluent.Script.Vanguards._StagesName")
                            pcall(
                                function()
print("[DEBUG]: Executando - function()")
                                    if Configs["Auto Join Challenge"].Value and table.find(Configs["Select Challenge Type"].Tables, "Daily Challenge") and not Fluent.Script.Cooldown_Daily and MainLobby("Challenges", "Daily") and ChallengeReward("Daily") and ChallengeUnlock("Daily") and not ChallengeIgnore("Daily") and #Fluent.Script.Vanguards._Slot().Unit > 0 then
                                        task.wait(Configs["Join Delay"].Value)
                                        if not Configs["Auto Join Challenge"].Value or not table.find(Configs["Select Challenge Type"].Tables, "Daily Challenge") or Fluent.Unloaded or Fluent.Script.Cooldown_Daily or not MainLobby("Challenges", "Daily") or not ChallengeReward("Daily") or not ChallengeUnlock("Daily") or ChallengeIgnore("Daily") or #Fluent.Script.Vanguards._Slot().Unit == 0 then
                                            return
                                        end
                                        if Configs["Auto Change Team"].Value and Configs["Challenge Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Challenge Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        ChooseedGameStage(
                                            function()
print("[DEBUG]: Executando - function()")
                                                Fluent.Script.Challenge = "Daily"
print("[DEBUG]: Executando - Fluent.Script.Challenge = "Daily"")
                                                game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", MainLobby("Challenges", "Daily"))
                                                task.wait(0.375)
                                                Fluent.Script.Challenge = "Dicon"
print("[DEBUG]: Executando - Fluent.Script.Challenge = "Dicon"")
                                            end
                                        )
                                    elseif Configs["Auto Join Challenge"].Value and table.find(Configs["Select Challenge Type"].Tables, "Half Hourly Challenge") and not Fluent.Script.Cooldown_HalfHourly and MainLobby("Challenges") and ChallengeReward() and ChallengeUnlock() and not ChallengeIgnore() and #Fluent.Script.Vanguards._Slot().Unit > 0 then
                                        task.wait(Configs["Join Delay"].Value)
                                        if not Configs["Auto Join Challenge"].Value or not table.find(Configs["Select Challenge Type"].Tables, "Half Hourly Challenge") or Fluent.Unloaded or Fluent.Script.Cooldown_HalfHourly or not MainLobby("Challenges") or not ChallengeReward() or not ChallengeUnlock() or ChallengeIgnore() or #Fluent.Script.Vanguards._Slot().Unit == 0 then
                                            return
                                        end
                                        if Configs["Auto Change Team"].Value and Configs["Challenge Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Challenge Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        ChooseedGameStage(
                                            function()
print("[DEBUG]: Executando - function()")
                                                Fluent.Script.Challenge = "Half Hourly"
print("[DEBUG]: Executando - Fluent.Script.Challenge = "Half Hourly"")
                                                game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", MainLobby("Challenges"))
                                                task.wait(0.375)
                                                Fluent.Script.Challenge = "Half Courly"
print("[DEBUG]: Executando - Fluent.Script.Challenge = "Half Courly"")
                                            end
                                        )
                                    elseif (Configs["Auto Join Normal (Raids)"].Value or Configs["Auto Join Hights (Raids)"].Value) and MainLobby("Raids") and Fluent.Script.Vanguards._LobbyHandler().PlayerData.Raids and #Fluent.Script.Vanguards._Slot().Unit > 0 then
                                    if Configs["Auto Join Normal (Raids)"].Value and (not k.Stages.Raid[j("Raid", Configs["Raids Stage"].Value)] or not k.Stages.Raid[j("Raid", Configs["Raids Stage"].Value)][Configs["Raids Act"].Value]) then
                                        return
                                    end
                                    task.wait(Configs["Join Delay"].Value)
                                    if (not Configs["Auto Join Normal (Raids)"].Value and not Configs["Auto Join Hights (Raids)"].Value) or not MainLobby("Raids") or Fluent.Unloaded or #Fluent.Script.Vanguards._Slot().Unit == 0 then
                                        return
                                    end
                                    if Configs["Auto Change Team"].Value and Configs["Raid Team"].Value then
                                        ChooseedGameStage(
                                            function()
print("[DEBUG]: Executando - function()")
                                                game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Raid Team"].Value:split("Team")[2]))
                                                task.wait(0.045)
                                            end
                                        )
                                    end
                                    ChooseedGameStage(
                                        function()
print("[DEBUG]: Executando - function()")
                                            Fluent.Script.Challenge = ""
print("[DEBUG]: Executando - Fluent.Script.Challenge = """)
                                            game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", MainLobby("Raids"))
                                            task.wait(0.375)
                                        end
                                    )
                                    elseif (Configs["Auto Join Normal (Story)"].Value or Configs["Auto Join Hights (Story)"].Value or Configs["Auto Join Legend Stage"].Value) and MainLobby("Stories") and #Fluent.Script.Vanguards._Slot().Unit > 0 then
                                        if Configs["Auto Join Normal (Story)"].Value and (not k.Stages.Story[j("Story", Configs["Story Stage"].Value)] or not k.Stages.Story[j("Story", Configs["Story Stage"].Value)][Configs["Story Act"].Value]) then
                                            return
                                        end
                                        if Configs["Auto Join Legend Stage"].Value and (not k.Stages.LegendStage[j("LegendStage", Configs["Legend Stage Stage"].Value)] or not k.Stages.LegendStage[j("LegendStage", Configs["Legend Stage Stage"].Value)][Configs["Legend Stage Act"].Value]) then
                                            return
                                        end
                                        task.wait(Configs["Join Delay"].Value)
                                        if (not Configs["Auto Join Normal (Story)"].Value and not Configs["Auto Join Hights (Story)"].Value and not Configs["Auto Join Legend Stage"].Value) or not MainLobby("Stories") or Fluent.Unloaded or #Fluent.Script.Vanguards._Slot().Unit == 0 then
                                            return
                                        end
                                        if Configs["Auto Change Team"].Value and Configs["Auto Join Legend Stage"].Value and Configs["Legend Stage Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Legend Stage Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        if Configs["Auto Change Team"].Value and not Configs["Auto Join Legend Stage"].Value and (Configs["Auto Join Normal (Story)"].Value and Configs["Story Act"].Value == "Paragon") and Configs["Paragon Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Paragon Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        if Configs["Auto Change Team"].Value and not Configs["Auto Join Legend Stage"].Value and (Configs["Auto Join Normal (Story)"].Value and Configs["Story Act"].Value == "Infinite") and Configs["Infinite Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Infinite Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        if Configs["Auto Change Team"].Value and not Configs["Auto Join Legend Stage"].Value and not (Configs["Auto Join Normal (Story)"].Value and (Configs["Story Act"].Value == "Paragon" or Configs["Story Act"].Value == "Infinite")) and Configs["Story Team"].Value then
                                            ChooseedGameStage(
                                                function()
print("[DEBUG]: Executando - function()")
                                                    game:GetService("ReplicatedStorage").Networking.Units.TeamsEvent:FireServer("EquipTeam", tonumber(Configs["Story Team"].Value:split("Team")[2]))
                                                    task.wait(0.045)
                                                end
                                            )
                                        end
                                        ChooseedGameStage(
                                            function()
print("[DEBUG]: Executando - function()")
                                                Fluent.Script.Challenge = ""
print("[DEBUG]: Executando - Fluent.Script.Challenge = """)
                                                game:GetService("ReplicatedStorage").Networking.LobbyEvent:FireServer("Enter", MainLobby("Stories"))
                                                task.wait(0.375)
                                            end
                                        )
                                    end
                                end
                            )
                        else
                            ChoosingGameStage()
                        end
                    end
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif Configs["Auto Craft Essence Stone"].Value and #Configs["Select Essence Stone"].Tables > 0 and Fluent.Script.Vanguards._CurrencyHandler().Gold >= 500 and Fluent.Script.Vanguards._InventoryHandler("Green Essence Stone") >= 3 then
                        local y = {}
    
                        for i = 1, #Configs["Select Essence Stone"].Tables do
                            table.insert(
                                y,
                                {
                                    Name = Configs["Select Essence Stone"].Tables[i],
                                    Amount = Fluent.Script.Vanguards._InventoryHandler(Configs["Select Essence Stone"].Tables[i])
                                }
                            )
                        end
                        table.sort(y, function(h, g)
                            return tonumber(h.Amount) >= tonumber(g.Amount)
                        end)
                        for i = 1, #y do
                            if not Configs["Auto Craft Essence Stone"].Value or #Configs["Select Essence Stone"].Tables == 0 or Fluent.Script.Vanguards._CurrencyHandler().Gold < 500 or Fluent.Script.Vanguards._InventoryHandler("Green Essence Stone") < 3 or Fluent.Unloaded then
                                break
                            else
                                game:GetService("ReplicatedStorage").Networking.State.CraftingEvent:FireServer("Craft", y[i].Name, 1)
                                task.wait(0.1)
                            end
                        end
                    end
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                for i = 1, 6 do
                    if game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(i)]:FindFirstChild("Locked") == nil then
                        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
                            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(i)].ChildAdded,
                            function(child)
print("[DEBUG]: Executando - function(child)")
                                if child.Name == "UnitTemplate" and not Fluent.Unloaded then
                                    local j = Fluent.Script.Vanguards._Slot

                                    Configs["Select Unit (Sell)"]:SetValues(j().Unit)
                                    Configs["Select Unit (Mohato)"]:SetValues(j().Unit)

                                    if not table.find(j().Unit, Configs["Select Unit (Mohato)"].Value) then
                                        Configs["Select Unit (Mohato)"]:SetValue(nil)
                                    end
                                end
                            end
                        )
                        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
                            game:GetService("Players").LocalPlayer.PlayerGui.HUD.Main.Units[tostring(i)].ChildRemoved,
                            function(child)
print("[DEBUG]: Executando - function(child)")
                                if child.Name == "UnitTemplate" and not Fluent.Unloaded then
                                    local j = Fluent.Script.Vanguards._Slot

                                    Configs["Select Unit (Sell)"]:SetValues(j().Unit)
                                    Configs["Select Unit (Mohato)"]:SetValues(j().Unit)

                                    if not table.find(j().Unit, Configs["Select Unit (Mohato)"].Value) then
                                        Configs["Select Unit (Mohato)"]:SetValue(nil)
                                    end
                                end
                            end
                        )
                    end
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.ClientListeners.LobbyEntranceEvent.OnClientEvent,
            function(h, y)
print("[DEBUG]: Executando - function(h, y)")
                if h == "Open" and not table.find(Fluent.Script.Game.Lobby, y) then
                    table.insert(Fluent.Script.Game.Lobby, y)
                elseif h == "Close" and table.find(Fluent.Script.Game.Lobby, y) then
                    table.remove(Fluent.Script.Game.Lobby, table.find(Fluent.Script.Game.Lobby, y))
                end
            end            
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded,
            function(child)
print("[DEBUG]: Executando - function(child)")
                if child.Name == "RewardsScreen" then
                    Fluent.Script.Game.Click()
print("[DEBUG]: Executando - Fluent.Script.Game.Click()")
                elseif child.Name == "PopupScreen" then
                    for y, h in next, child:GetDescendants() do
                        if table.find({"Close", "Cancel"}, h.Name) and h:FindFirstChild("Button") and h.Button:IsA("TextButton") then
                            firesignal(h.Button.Activated)
                            break
                        end
                    end
                end
            end
        )
    else
        Fluent.Script.Buttons["Equip Units"]:Lock()
print("[DEBUG]: Executando - Fluent.Script.Buttons["Equip Units"]:Lock()")
        if Configs["Macro Status"].Value then
            Fluent.Script.Notifys["Macro Status"] = Fluent:Notify(
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"] = Fluent:Notify(")
                {
                    Title = Fluent.Script.Macro.Status,
                    SubContent = "\nGame Time: 0.00",
                    Disable = true
                }
            )
        end
    
print("[DEBUG]: Requisitando ou carregando - if getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4] and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4].Holder.Description.Text:find("Vote start:") then")
        if getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4] and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4].Holder.Description.Text:find("Vote start:") then
            task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                function()
print("[DEBUG]: Executando - function()")
                    repeat
                        getgenv().Wave0 = tick()
                        task.wait()
print("[DEBUG]: Requisitando ou carregando - until Fluent.Unloaded or (not game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.Timer.Visible and not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4])")
                    until Fluent.Unloaded or (not game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.Timer.Visible and not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4])
                        getgenv().Wave0 = nil
                end
            )
        end
    
        local function _NextAct()
print("[DEBUG]: Requisitando ou carregando - local a = getupvalues(require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler)._Init)[2].GameData")
            local a = getupvalues(require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler)._Init)[2].GameData
    
print("[DEBUG]: Requisitando ou carregando - local b = getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Other.StartHandler)._Init)[2]")
            local b = getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Other.StartHandler)._Init)[2]
        
            if (a.Act:find("Act") and b[a.StageType][a.Stage].Acts["Act"..tostring(tonumber(a.Act:split("Act")[2] + 1))]) or a.Act:find("Paragon") then
                return ""
            end
        end
    
        local function _WaveInfo(e)
            return e == "Max" and game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.WavesAmount.Text:gsub(">", ""):gsub("<", ""):split([[="0"]])[2]:split([["0.45"/]])[2]:split("/")[1] 
                   or game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.WavesAmount.Text:gsub(">", ""):gsub("<", ""):split([[="0"]])[2]:split("/")[1]
        end
    
        local function _TickFirst()
print("[DEBUG]: Requisitando ou carregando - if _WaveInfo() == "0" or (_WaveInfo() == "1" and tonumber(Fluent.Script.Vanguards._Yen()) == 0 and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[2]) or getgenv().Wave0 then")
            if _WaveInfo() == "0" or (_WaveInfo() == "1" and tonumber(Fluent.Script.Vanguards._Yen()) == 0 and getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[2]) or getgenv().Wave0 then
                getgenv().StartTime = tick()
    
                return "0.000"
            else
                local x = tick() - getgenv().StartTime
                local y = math.floor(x) % ((9e9 * 9e9) + (9e9 * 9e9))
                local z = string.format(".%.03d", (x % 1) * 1000)
    
                return y..z
            end
        end
    
        local function _StageType()
print("[DEBUG]: Requisitando ou carregando - return (require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler).GameData.Act == "Paragon" and "Paragon") or (require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler).GameData.Act == "Infinite" and "Infinite") or tostring(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.StageInfoHandler)._Init)[9].GameData.StageType)")
            return (require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler).GameData.Act == "Paragon" and "Paragon") or (require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler).GameData.Act == "Infinite" and "Infinite") or tostring(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.StageInfoHandler)._Init)[9].GameData.StageType)
        end
    
        local function _StageName()
print("[DEBUG]: Requisitando ou carregando - local a = require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler)")
            local a = require(game:GetService("ReplicatedStorage").Modules.Gameplay.GameHandler)
            local b = a.GameData.Stage
    
print("[DEBUG]: Requisitando ou carregando - return getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Waves)._Init)[4][a.GameData.StageType][b].StageData.Name")
            return getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.HUD.Waves)._Init)[4][a.GameData.StageType][b].StageData.Name
        end
    
        local function _MacroWrite()
            writefile(Otherfunction:FormatLocation(Configs["Macro File"].Value), game:GetService("HttpService"):JSONEncode(Fluent.Script.Macro.Value))
        end
    
        local function _MacroSelect()
            if Configs[_StageType().._StageName()] and Configs[_StageType().._StageName()].Value then
                return Configs[_StageType().._StageName()].Value
            else
                return Configs["Macro File"].Value
            end
        end
    
        local function _MacroWating(e)
            repeat
                task.wait(0.005)
            until not Configs["Macro Play"].Value or Fluent.Unloaded or (tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(e["Money"]) and tonumber(_TickFirst()) >= tonumber(e["Time"]))
        end
    
        local function _MacroInsert(e)
            if not Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value + 1)] then
                   Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value + 1)] = e
print("[DEBUG]: Executando - Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value + 1)] = e")
    
            else
                   Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value + 1)] = e
print("[DEBUG]: Executando - Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value + 1)] = e")
            end
        end
    
        local function _MacroDatabase(e)
            Fluent.Script.Macro.Value.Database.World = _StageName()
print("[DEBUG]: Executando - Fluent.Script.Macro.Value.Database.World = _StageName()")
    
            if not table.find(Fluent.Script.Macro.Value.Database.Units, e) then
                   table.insert(Fluent.Script.Macro.Value.Database.Units, e)
            end
            _MacroWrite()
        end
    
        local function _UnitsDatabase(e)
print("[DEBUG]: Requisitando ou carregando - for r, v in next, getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Misc.UnitWindowHover)._HandleHover)[1].GetUnits)[1] do")
            for r, v in next, getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Misc.UnitWindowHover)._HandleHover)[1].GetUnits)[1] do
                if tostring(v.Name) == tostring(e) or tostring(v.Model) == tostring(e) or tostring(v.ShinyModel) == tostring(e) then
                    return {
                        Id = v.ID,
                        Name = v.Name,
                        Pirce = v.Price,
                        Upgrades = v.Upgrades
                    }
                end
            end
        end
    
        local function _UnitsSpawneds(e)
            for y, h in next, Fluent.Script.Vanguards._ActiveUnits() do
                if h.Player == game:GetService("Players").LocalPlayer and y == e then
                    return {
                        Key = y,
                        Name = h.Data.Name,
                        Position = h.Position,
                        Rotation = h.Rotation,
                        Sellable = h.Sellable,
                        Priority = h.Data.Priority,
                        Sellable2 = h.Data.Sellable,
                        ActiveAbility = h.ActiveAbility,
                        CurrentUpgrade = h.Data.CurrentUpgrade
                    }
                end
            end
        end
    
        local function _UnitsOnPlaced(e, x, y, z)
            for j, h in next, Fluent.Script.Vanguards._ActiveUnits() do
                if (not z and h.Player == game:GetService("Players").LocalPlayer or z) and (not y and h.Data.Name == e or y) then
                    if h.Position == Fluent.Script.ToVectors(x) or (h.Position - Fluent.Script.ToVectors(x)).Magnitude <= 1.45 then
                        return {
                            Key = j,
                            Name = h.Data.Name,
                            Position = h.Position,
                            Rotation = h.Rotation,
                            Sellable = h.Sellable,
                            Priority = h.Data.Priority,
                            Sellable2 = h.Data.Sellable,
                            ActiveAbility = h.ActiveAbility,
                            CurrentUpgrade = h.Data.CurrentUpgrade
                        }
                    end
                end
            end
        end
    
        local function _ModifiersVote()
            if Configs["Auto Choose Modifier"].Value and #game:GetService("Players").LocalPlayer.PlayerGui.Frames.Modifiers.Main:GetChildren() > 4 then
                local k
                for i = 1, #Fluent.Script.Vanguards._Modifiers() do
                    if k then
                        break
                    elseif Configs["Modifier"..tostring(i)] and Configs["Modifier"..tostring(i)].Value and not k then
                        if game:GetService("Players").LocalPlayer.PlayerGui.Frames.Modifiers.Main:FindFirstChild(Configs["Modifier"..tostring(i)].Value) then
                            game:GetService("ReplicatedStorage").Networking.ModifierEvent:FireServer("Choose",Configs["Modifier"..tostring(i)].Value)
                            k = ""
                            break
                        end
                    end
                end
                Fluent.Script.Game.Voteing = false
print("[DEBUG]: Executando - Fluent.Script.Game.Voteing = false")
            end
        end
    
        local function _Update_MacroStatus()
            if Configs["Macro Play"].Value and Fluent.Script.Macro.Playing and Fluent.Script.Macro.Playing.Database.World == _StageName() then
                if Fluent.Script.Macro.Ended then
                    local k, j = Fluent.Script.Macro,
                                 Fluent.Script.Macro.Playing
print("[DEBUG]: Executando - Fluent.Script.Macro.Playing")
    
                    k.Status = "Status : Playing Ended ("..tostring(#j).."/"..tostring(#j)..")"
                    return "\n"
                else
                    local k, j, y = Fluent.Script.Macro,
                                    Fluent.Script.Macro.Playing,
print("[DEBUG]: Executando - Fluent.Script.Macro.Playing,")
                                    Fluent.Script.Macro.Playing[tostring(Fluent.Script.Macro.Index)]
print("[DEBUG]: Executando - Fluent.Script.Macro.Playing[tostring(Fluent.Script.Macro.Index)]")

                    k.Status = "Status : Playing ("..tostring(k.Index).."/"..tostring(#j)..")"
                    return "\nAction : "..y["Type"].."\nUnit : "..y["Unit"]..(y["Selected"] and "\nSelected : "..y["Selected"]["Unit"] or "")..(y["Rotation"] and "\nRotation : "..y["Rotation"] or "")..(y["Value"] and "\nValue : "..y["Value"] or "").."\nMoney : "..y["Money"].."\nTime : "..y["Time"]
                end
            elseif Configs["Macro Record"].Value and #Fluent.Script.Macro.Value > 0 and Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)] then
                    local k, j = Fluent.Script.Macro,
                                 Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
print("[DEBUG]: Executando - Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]")

                    k.Status = "Status : Recording ("..tostring(#k.Value).."/"..tostring(#k.Value)..")"
                    return "\nAction : "..j["Type"].."\nUnit : "..j["Unit"]..(j["Selected"] and "\nSelected : "..j["Selected"]["Unit"] or "")..(j["Rotation"] and "\nRotation : "..j["Rotation"] or "")..(j["Value"] and "\nValue : "..j["Value"] or "").."\nMoney : "..j["Money"].."\nTime : "..j["Time"]
            else
                    local k = Fluent.Script.Macro

                    k.Status = Configs["Macro Record"].Value and "Status : Recording (0/0)" or "Status : None (0/0)"
                    return "\n"
            end
        end

        local function _PriorityWithNumber(e)
            return (e == 1 and "First") or (e == 2 and "Closest") or (e == 3 and "Last") or (e == 4 and "Strongest") or (e == 5 and "Weakest") or (e == 6 and "Bosses") or ("First")
        end

        local function _Mohato_Placed_Check(e)
            for k, h in next, Fluent.Script.Vanguards._ActiveUnits() do
                if Fluent.Script.Mohato.Position and (h.Position == Fluent.Script.Mohato.Position or (h.Position - Fluent.Script.Mohato.Position).Magnitude <= 1.45) then
                    if h.Player == game:GetService("Players").LocalPlayer and (e and h.Data.Name == e or not e) then
                        return {
                            Key = k,
                            Name = h.Data.Name,
                            Position = h.Position,
                            Rotation = h.Rotation,
                            Sellable = h.Sellable,
                            Priority = h.Data.Priority,
                            Sellable2 = h.Data.Sellable,
                            ActiveAbility = h.ActiveAbility,
                            CurrentUpgrade = h.Data.CurrentUpgrade
                        }
                    elseif h.Player ~= game:GetService("Players").LocalPlayer then
                        return false
                    end
                end
            end
            return nil
        end

        local function _Mohata_Playing_Check()
            local Position, Animation = game:GetService("Workspace").Mohato.HumanoidRootPart.Position,
                                        tostring(game:GetService("Workspace").Mohato.Humanoid:GetPlayingAnimationTracks()[1])

            if Animation == "Hanging" then
                Fluent.Script.Mohato.Position = Position + Vector3.new(3, -6.435, 0)
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position = Position + Vector3.new(3, -6.435, 0)")
                Fluent.Script.Mohato.LastPosition = Position + Vector3.new(3, -6.435, 0)
print("[DEBUG]: Executando - Fluent.Script.Mohato.LastPosition = Position + Vector3.new(3, -6.435, 0)")
            elseif Animation == "Peeking" then
                Fluent.Script.Mohato.Position = Position + Vector3.new(0, -1.435, 3)
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position = Position + Vector3.new(0, -1.435, 3)")
                Fluent.Script.Mohato.LastPosition = Position + Vector3.new(0, -1.435, 3)
print("[DEBUG]: Executando - Fluent.Script.Mohato.LastPosition = Position + Vector3.new(0, -1.435, 3)")
            elseif Animation == "Sitting" or Animation == "Leaning" then
                Fluent.Script.Mohato.Position = Position + Vector3.new(3, (Animation == "Sitting" and - 0.435 or -1.435), 0)
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position = Position + Vector3.new(3, (Animation == "Sitting" and - 0.435 or -1.435), 0)")
                Fluent.Script.Mohato.LastPosition = Position + Vector3.new(3, (Animation == "Sitting" and - 0.435 or -1.435), 0)
print("[DEBUG]: Executando - Fluent.Script.Mohato.LastPosition = Position + Vector3.new(3, (Animation == "Sitting" and - 0.435 or -1.435), 0)")
            end

            if Configs["Auto Mohato"].Value and Configs["Select Unit (Mohato)"].Value and table.find(Fluent.Script.Vanguards._Slot().Unit, Configs["Select Unit (Mohato)"].Value) and Fluent.Script.Mohato.Position and _Mohato_Placed_Check() ~= false then
                local UnitData = _UnitsDatabase(Configs["Select Unit (Mohato)"].Value)

                if _Mohato_Placed_Check(UnitData.Name) then
                    Fluent.Script.Mohato.SellUnit = nil
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = nil")
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            while true and task.wait() do
                                if not Configs["Auto Mohato"].Value or Fluent.Unloaded or not Fluent.Script.Mohato.BossSpawn or not Fluent.Script.Mohato.Position or _Mohato_Placed_Check(UnitData.Name) == false or not _Mohato_Placed_Check(UnitData.Name) then
                                    Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                    break
                                else
                                    if tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) < tonumber(Configs["Unit Max Upgrade"].Value + 1) and tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) ~= tonumber(#UnitData.Upgrades) then
                                        if tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price) then
                                            Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                                {
                                                    ["Unit"] = UnitData.Name,
                                                    ["Type"] = "UpgradeUnit (Mohato)",
                                                    ["Money"] = tostring(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                                },
                                                _Mohato_Placed_Check(UnitData.Name).Position
                                            )
                                            game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Upgrade", _Mohato_Placed_Check(UnitData.Name).Key)
                                            task.wait(0.475)
                                            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                        else
                                            Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                                {
                                                    ["Unit"] = UnitData.Name,
                                                    ["Type"] = "UpgradeUnit (Mohato)",
                                                    ["Money"] = tostring(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                                },
                                                _Mohato_Placed_Check(UnitData.Name).Position
                                            )
                                            repeat
                                                task.wait()
                                            until not Configs["Auto Mohato"].Value or Fluent.Unloaded or not Fluent.Script.Mohato.BossSpawn or not Fluent.Script.Mohato.Position or _Mohato_Placed_Check(UnitData.Name) == false or not _Mohato_Placed_Check(UnitData.Name) or tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                        end
                                    elseif tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) >= tonumber(Configs["Unit Max Upgrade"].Value + 1) and #Fluent.Script.Mohato.Action.Action > 0 then
                                        Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                    end
                                end
                            end
                        end
                    )
                else
                    if _Mohato_Placed_Check(UnitData.Name) == false then
                        return
                    end
                    Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                        {
                            ["Unit"] = UnitData.Name,
                            ["Type"] = "SpawnUnit (Mohato)",
                            ["Money"] = UnitData.Pirce
                        },
                        Fluent.Script.Mohato.Position
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position")
                    )
                    repeat
                        if not Configs["Auto Mohato"].Value then
                            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                        end
                        task.wait()
                    until not Configs["Auto Mohato"].Value or Fluent.Unloaded or tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Pirce) or _Mohato_Placed_Check(UnitData.Name) == false
                    if _Mohato_Placed_Check(UnitData.Name) == false or not Configs["Auto Mohato"].Value then
                        Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                        return
                    end
                    if _Mohato_Placed_Check() then
                        local j = _Mohato_Placed_Check().Key
    
                        Fluent.Script.Mohato.SellUnit = j
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = j")
                        game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", j)
                    end
                    if #Fluent.Script.Vanguards._CurrentPlaceUnit(Configs["Select Unit (Mohato)"].Value).Placed >= Fluent.Script.Vanguards._CurrentPlaceUnit(Configs["Select Unit (Mohato)"].Value).MaxPlace then
                        local j = Fluent.Script.Vanguards._CurrentPlaceUnit(Configs["Select Unit (Mohato)"].Value).Placed[1]
    
                        Fluent.Script.Mohato.SellUnit = j
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = j")
                        game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", j)
                    end
                    if tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Pirce) then
                        game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Render",
                            {
                                UnitData.Name,
                                UnitData.Id,
                                Fluent.Script.Mohato.Position,
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position,")
                                0
                            }
                        )
                        task.wait(0.475)
                        Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                        task.wait(0.235)
                        Fluent.Script.Mohato.SellUnit = nil
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = nil")
                        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                            function()
print("[DEBUG]: Executando - function()")
                                while true and task.wait() do
                                    if not Configs["Auto Mohato"].Value or Fluent.Unloaded or not Fluent.Script.Mohato.BossSpawn or not Fluent.Script.Mohato.Position or _Mohato_Placed_Check(UnitData.Name) == false or not _Mohato_Placed_Check(UnitData.Name) then
                                        Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                        break
                                    else
                                        if tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) < tonumber(Configs["Unit Max Upgrade"].Value + 1) and tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) ~= tonumber(#UnitData.Upgrades) then
                                            if tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price) then
                                                Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                                    {
                                                        ["Unit"] = UnitData.Name,
                                                        ["Type"] = "UpgradeUnit (Mohato)",
                                                        ["Money"] = tostring(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                                    },
                                                    _Mohato_Placed_Check(UnitData.Name).Position
                                                )
                                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Upgrade", _Mohato_Placed_Check(UnitData.Name).Key)
                                                task.wait(0.475)
                                                Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                            else
                                                Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                                    {
                                                        ["Unit"] = UnitData.Name,
                                                        ["Type"] = "UpgradeUnit (Mohato)",
                                                        ["Money"] = tostring(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                                    },
                                                    _Mohato_Placed_Check(UnitData.Name).Position
                                                )
                                                repeat
                                                    task.wait()
                                                until not Configs["Auto Mohato"].Value or Fluent.Unloaded or not Fluent.Script.Mohato.BossSpawn or not Fluent.Script.Mohato.Position or _Mohato_Placed_Check(UnitData.Name) == false or not _Mohato_Placed_Check(UnitData.Name) or tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(UnitData.Upgrades[_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade + 1].Price)
                                            end
                                        elseif tonumber(_Mohato_Placed_Check(UnitData.Name).CurrentUpgrade) >= tonumber(Configs["Unit Max Upgrade"].Value + 1) and #Fluent.Script.Mohato.Action.Action > 0 then
                                            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            end
        end
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                for j, g in next, Fluent.Script.Vanguards._ActiveUnits() do
                    if g.Player == game:GetService("Players").LocalPlayer and not Fluent.Script.Game.Units[j] then
                        Fluent.Script.Game.Units[j] = _UnitsSpawneds(j)
print("[DEBUG]: Executando - Fluent.Script.Game.Units[j] = _UnitsSpawneds(j)")
                    end
                end
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif Configs["Auto Skip"].Value and game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("SkipWave") and #game:GetService("Players").LocalPlayer.PlayerGui.Frames.Modifiers.Main:GetChildren() < 3 then
                        game:GetService("ReplicatedStorage").Networking.SkipWaveEvent:FireServer("Skip")
                        task.wait(2.735)
                    elseif Configs["Auto Lobby Challenge"].Value and _StageType() ~= "Challenge" and table.find(Configs["Select Challenge Type"].Tables, "Daily Challenge") and Fluent.Script.Daily_Changed then
                        game:GetService("ReplicatedStorage").Networking.TeleportEvent:FireServer("Lobby")
                        break
                    elseif Configs["Auto Lobby Challenge"].Value and _StageType() ~= "Challenge" and table.find(Configs["Select Challenge Type"].Tables, "Half Hourly Challenge") and Fluent.Script.HalfHourly_Changed then
                        game:GetService("ReplicatedStorage").Networking.TeleportEvent:FireServer("Lobby")
                        break
                    end
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif Configs["Auto Leave Select Wave"].Value and tonumber(_WaveInfo()) >= tonumber(Configs["Select Wave (Sell / Leave)"].Value) then
                        game:GetService("ReplicatedStorage").Networking.TeleportEvent:FireServer("Lobby")
                        break
                    elseif Configs["Auto Sell (Select Unit)"].Value and #Configs["Select Unit (Sell)"].Tables > 0 and tonumber(_WaveInfo()) >= tonumber(Configs["Select Wave (Sell / Leave)"].Value) then
                        for j, k in next, Fluent.Script.Vanguards._ActiveUnits() do
                            if k.Player == game:GetService("Players").LocalPlayer and k.Data.Sellable == nil and k.Sellable == nil and table.find(Configs["Select Unit (Sell)"].Tables, k.Data.Name) then
                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", j)
                            end
                        end
                    end
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif not Fluent.Script.Game.Reset and Configs["Auto Sell Farm Last Wave"].Value and _WaveInfo() == _WaveInfo("Max") then
                        for j, k in next, Fluent.Script.Vanguards._ActiveUnits() do
                            if k.Player == game:GetService("Players").LocalPlayer and k.Data.Sellable == nil and k.Sellable == nil and (k.Data.UnitType and k.Data.UnitType == "Farm") then
                                if not table.find(Fluent.Script.Game.Sells, k.Data.Name) then
                                       table.insert(Fluent.Script.Game.Sells, k.Data.Name)
                                end
                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", j)
                            end
                        end
                    elseif not Configs["Auto Sell Farm Last Wave"].Value and #Fluent.Script.Game.Sells > 0 then
                                       table.clear(Fluent.Script.Game.Sells)
                    end
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                while true and task.wait() do
                    if Fluent.Unloaded then
                        break
                    elseif Configs["Macro Status"].Value then
                        pcall(
                            function()
print("[DEBUG]: Executando - function()")
                                if Fluent.Script.Notifys["Macro Status"] then
                                    Fluent.Script.Notifys["Macro Status"].SubContentLabel.Text = "Game Time : "..tostring(_TickFirst()).._Update_MacroStatus()
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"].SubContentLabel.Text = "Game Time : "..tostring(_TickFirst()).._Update_MacroStatus()")
                                    Fluent.Script.Notifys["Macro Status"].Title.Text = Fluent.Script.Macro.Status
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"].Title.Text = Fluent.Script.Macro.Status")

                                    local j, k = string.gsub(Fluent.Script.Notifys["Macro Status"].SubContentLabel.Text, "\n", "")
                                    Fluent.Script.Notifys["Macro Status"].Holder.Size = UDim2.new(1, 0, 0, (80 + (10.5 * k)))
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"].Holder.Size = UDim2.new(1, 0, 0, (80 + (10.5 * k)))")
                                else
                                    Fluent.Script.Buttons["Macro Status"]:SetDesc("\nGame Time : "..tostring(_TickFirst()).._Update_MacroStatus())
print("[DEBUG]: Executando - Fluent.Script.Buttons["Macro Status"]:SetDesc("\nGame Time : "..tostring(_TickFirst()).._Update_MacroStatus())")
                                    Fluent.Script.Buttons["Macro Status"]:SetTitle(Fluent.Script.Macro.Status)
print("[DEBUG]: Executando - Fluent.Script.Buttons["Macro Status"]:SetTitle(Fluent.Script.Macro.Status)")
                                end
                            end
                        )
                    end
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                for j, k in next, game:GetService("Players").LocalPlayer.PlayerGui.HUD.BossHealth:GetChildren() do
                    if k:IsA("Frame") and k:FindFirstChild("EnemyInfo") and k.EnemyInfo.EnemyName.Label.Text == "Mohato Clone" then
                        if k.HealthBar:FindFirstChild("MohatoHealth") == nil then
                            Fluent.Script.Mohato.BossSpawn = true
print("[DEBUG]: Executando - Fluent.Script.Mohato.BossSpawn = true")
                        end
                        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                            function()
print("[DEBUG]: Executando - function()")
                                repeat
                                    task.wait()
                                until Fluent.Unloaded or not k.Parent
                                if _Mohato_Placed_Check() and _Mohato_Placed_Check().Sellable == nil and _Mohato_Placed_Check().Sellable2 == nil then
                                    Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                    Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                        {
                                            ["Type"] = "SellUnit (Mohato)",
                                            ["Unit"] = _Mohato_Placed_Check().Name,
                                            ["Money"] = "0"
                                        },
                                        _Mohato_Placed_Check().Position
                                    )
                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", _Mohato_Placed_Check().Key)
                                    task.wait(0.125)
                                end
                                Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                Fluent.Script.Mohato.SellUnit = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = false")
                                Fluent.Script.Mohato.Position = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position = false")
                                Fluent.Script.Mohato.BossSpawn = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.BossSpawn = false")
                            end
                        )
                    end
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.PlayerGui.HUD.BossHealth.ChildAdded,
            function(child)
print("[DEBUG]: Executando - function(child)")
                if child:IsA("Frame") and child:FindFirstChild("EnemyInfo") and child.EnemyInfo.EnemyName.Label.Text == "Mohato Clone" then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                task.wait()
                            until Fluent.Unloaded or not child.Parent
                            if _Mohato_Placed_Check() and _Mohato_Placed_Check().Sellable == nil and _Mohato_Placed_Check().Sellable2 == nil then
                                Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                                Fluent.Script.Mohato.Action.Create(
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Create(")
                                    {
                                        ["Type"] = "SellUnit (Mohato)",
                                        ["Unit"] = _Mohato_Placed_Check().Name,
                                        ["Money"] = "0"
                                    },
                                    _Mohato_Placed_Check().Position
                                )
                                game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", _Mohato_Placed_Check().Key)
                                task.wait(0.125)
                            end
                            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                            Fluent.Script.Mohato.SellUnit = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = false")
                            Fluent.Script.Mohato.Position = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.Position = false")
                            Fluent.Script.Mohato.BossSpawn = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.BossSpawn = false")
                        end
                    )
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.ClientListeners.HealthBar.MohatoHealthEvent.OnClientEvent,
            function(k, j)
print("[DEBUG]: Executando - function(k, j)")
                if k == "Update" and j.WavesElapsed == j.WavesNeeded then
                    Fluent.Script.Mohato.BossSpawn = true
print("[DEBUG]: Executando - Fluent.Script.Mohato.BossSpawn = true")
                    task.spawn(_Mohata_Playing_Check)
print("[DEBUG]: Executando - task.spawn(_Mohata_Playing_Check)")
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                Configs["Auto Mohato"]:OnChanged(
                    function(y)
print("[DEBUG]: Executando - function(y)")
                        if Configs["Auto Save Configuration"] and Configs["Auto Save Configuration"].Value then
                            SaveSettings:Save("Configuration")
                        end
                        if y and Fluent.Script.Mohato.BossSpawn and table.find(Fluent.Script.Vanguards._Slot().Unit, Configs["Select Unit (Mohato)"].Value) then
                            task.spawn(_Mohata_Playing_Check)
print("[DEBUG]: Executando - task.spawn(_Mohata_Playing_Check)")
                        else
                            Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                        end
                    end
                )
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                Configs["Auto Choose Modifier"]:OnChanged(
                    function(j)
print("[DEBUG]: Executando - function(j)")
                        if Configs["Auto Save Configuration"] and Configs["Auto Save Configuration"].Value then
                            SaveSettings:Save("Configuration")
                        end
                        if j and #game:GetService("Players").LocalPlayer.PlayerGui.Frames.Modifiers.Main:GetChildren() > 4 then
                            task.spawn(_ModifiersVote)
print("[DEBUG]: Executando - task.spawn(_ModifiersVote)")
                        end
                    end
                )
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.PlayerGui.Frames.Modifiers.Main.ChildAdded,
            function(child)
print("[DEBUG]: Executando - function(child)")
                if child:IsA("Frame") and Configs["Auto Choose Modifier"].Value and not Fluent.Script.Game.Voteing then
                    Fluent.Script.Game.Voteing = ""
print("[DEBUG]: Executando - Fluent.Script.Game.Voteing = """)
                    task.wait(0.325)
                    task.spawn(_ModifiersVote)
print("[DEBUG]: Executando - task.spawn(_ModifiersVote)")
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded,
            function(child)
print("[DEBUG]: Executando - function(child)")
                if child.Name == "RewardsDisplay" then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                Fluent.Script.Game.Click()
print("[DEBUG]: Executando - Fluent.Script.Game.Click()")
                                task.wait()
                            until Fluent.Unloaded or not child.Parent
                        end
                    )
                elseif child.Name == "MahoragaWheel" then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                if Configs["Auto Select Attack"] and Configs["Auto Select Attack"].Value then
                                    if child.Holder.Attacks:FindFirstChild(Configs["Select Attack Sukuna"] and Configs["Select Attack Sukuna"].Value or "Unknow***") then
                                        firesignal(child.Holder.Attacks[Configs["Select Attack Sukuna"].Value].Button.Activated)
                                    end
                                end
                                task.wait()
                            until Fluent.Unloaded or not child.Parent
                        end
                    )
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("Players").LocalPlayer.PlayerGui.ChildAdded,
            function(child)
print("[DEBUG]: Executando - function(child)")
                if child.Name == "SkipWave" and child.Holder.Description.Text:find("Vote start:") then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                getgenv().Wave0 = tick()
                                task.wait()
print("[DEBUG]: Requisitando ou carregando - until Fluent.Unloaded or (not game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.Timer.Visible and not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4])")
                            until Fluent.Unloaded or (not game:GetService("Players").LocalPlayer.PlayerGui.HUD.Map.Timer.Visible and not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[4])
                                getgenv().Wave0 = nil
                        end
                    )
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            Windows.Root:GetPropertyChangedSignal("Visible"),
            function()
print("[DEBUG]: Executando - function()")
                if Configs["Macro Status"].Value and not Fluent.Unloaded and not Windows.Root.Visible and not Fluent.Script.Notifys["Macro Status"] then
                    Fluent.Script.Notifys["Macro Status"] = Fluent:Notify(
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"] = Fluent:Notify(")
                        {
                            Title = Fluent.Script.Macro.Status,
                            SubContent = "\nGame Time: 0.00",
                            Disable = true
                        }
                    )
                elseif not Fluent.Unloaded and (not Configs["Macro Status"].Value or Windows.Root.Visible) and Fluent.Script.Notifys["Macro Status"] then
                    Fluent.Script.Notifys["Macro Status"]:Close()
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"]:Close()")
                    Fluent.Script.Notifys["Macro Status"] = nil
print("[DEBUG]: Executando - Fluent.Script.Notifys["Macro Status"] = nil")
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.Abilities.BoogieEvent.OnClientEvent,
            function(k, j)
print("[DEBUG]: Executando - function(k, j)")
                if k == "Start" and Fluent.Script.Game.Units[j.UnitGUID] then
                    Fluent.Script.Boogies.Main = Fluent.Script.Game.Units[j.UnitGUID]
print("[DEBUG]: Executando - Fluent.Script.Boogies.Main = Fluent.Script.Game.Units[j.UnitGUID]")
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.AbilityEvent.OnClientEvent,
            function(x, y, z)
print("[DEBUG]: Executando - function(x, y, z)")
                if x == "UpdateCooldown" and not table.find({"Boogie"}, z.AbilityName) and Fluent.Script.Game.Units[y] and Configs["Macro Record"].Value and not (Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == Fluent.Script.Game.Units[y].Position or (Fluent.Script.Mohato.Position - Fluent.Script.Game.Units[y].Position).Magnitude <= 1.45)) then
                    local k, j, t = Fluent.Script.Game.Units[y],
                                    function()
print("[DEBUG]: Executando - function()")
                                        return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                    end,
                                    function()
print("[DEBUG]: Executando - function()")
                                        return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                    end

                    _MacroInsert(
                        {
                            ["Unit"] = k.Name,
                            ["Type"] = "UseAbility",
                            ["Time"] = t(),
                            ["Money"] = "0",
                            ["Value"] = z.AbilityName,
                            ["CFrame"] = tostring(k.Position)
                        }
                    )
                    _MacroDatabase(k.Name)
                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                    Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.ClientListeners.Units.AutoAbilityEvent.OnClientEvent,
            function(x, y)
print("[DEBUG]: Executando - function(x, y)")
                if Fluent.Script.Game.Units[x] and Configs["Macro Record"].Value and not (Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == Fluent.Script.Game.Units[x].Position or (Fluent.Script.Mohato.Position - Fluent.Script.Game.Units[x].Position).Magnitude <= 1.45)) then
                    local k, j, t = Fluent.Script.Game.Units[x],
                                    function()
print("[DEBUG]: Executando - function()")
                                        return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                    end,
                                    function()
print("[DEBUG]: Executando - function()")
                                        return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                    end

                    _MacroInsert(
                        {
                            ["Unit"] = k.Name,
                            ["Type"] = "AutoAbility",
                            ["Time"] = t(),
                            ["Money"] = "0",
                            ["CFrame"] = tostring(k.Position)
                        }
                    )
                    _MacroDatabase(k.Name)
                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                    Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.UnitEvent.OnClientEvent,
            function(x, y, z)
print("[DEBUG]: Executando - function(x, y, z)")
                if x == "Render" and y.Player == game:GetService("Players").LocalPlayer then
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                task.wait()
                            until Fluent.Unloaded or _UnitsSpawneds(y.UniqueIdentifier)
                            if not Fluent.Script.Game.Units[y.UniqueIdentifier] then
                                   Fluent.Script.Game.Units[y.UniqueIdentifier] = _UnitsSpawneds(y.UniqueIdentifier)
print("[DEBUG]: Executando - Fluent.Script.Game.Units[y.UniqueIdentifier] = _UnitsSpawneds(y.UniqueIdentifier)")
                            end
                        end
                    )
                    if Configs["Macro Record"].Value and not (Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == y.Position or (Fluent.Script.Mohato.Position - y.Position).Magnitude <= 1.45)) then
                        local j, t, m = function()
                                            return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                        end,
                                        function()
print("[DEBUG]: Executando - function()")
                                            return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                        end,
                                        function()
print("[DEBUG]: Executando - function()")
                                            return (Configs["Record Type"].Value == "Money" or Configs["Record Type"].Value == "Hybrid") and tostring(_UnitsDatabase(y.Data.Name).Pirce) or "0"
                                        end

                        _MacroInsert(
                            {
                                ["Unit"] = y.Data.Name,
                                ["Type"] = "SpawnUnit",
                                ["Time"] = t(),
                                ["Money"] = m(),
                                ["CFrame"] = tostring(y.Position),
                                ["Rotation"] = tostring(y.Rotation)
                            }
                        )
                        _MacroDatabase(y.Data.Name)
                        Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                        Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                    end
                elseif x == "Remove" and Fluent.Script.Game.Units[y] then
                    if Configs["Macro Record"].Value and not Fluent.Script.Game.Reset then
                        local k, j, t = Fluent.Script.Game.Units[y],
                                        function()
print("[DEBUG]: Executando - function()")
                                            return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                        end,
                                        function()
print("[DEBUG]: Executando - function()")
                                            return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                        end
                        if Configs["Auto Mohato"].Value and Fluent.Script.Mohato.SellUnit and Fluent.Script.Mohato.SellUnit == y then
                            Fluent.Script.Mohato.SellUnit = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.SellUnit = false")
                        elseif Configs["Auto Sell Farm Last Wave"].Value and _WaveInfo() == _WaveInfo("Max") and table.find(Fluent.Script.Game.Sells, k.Name) then
                        elseif Configs["Auto Mohato"].Value and Fluent.Script.Mohato.LastPosition and (Fluent.Script.Mohato.LastPosition == Fluent.Script.ToVectors(k.Position) or (Fluent.Script.Mohato.LastPosition - Fluent.Script.ToVectors(k.Position)).Magnitude <= 1.45) then
                            Fluent.Script.Mohato.LastPosition = false
print("[DEBUG]: Executando - Fluent.Script.Mohato.LastPosition = false")
                        elseif Configs["Auto Sell (Select Unit)"].Value and #Configs["Select Unit (Sell)"].Tables > 0 and table.find(Configs["Select Unit (Sell)"].Tables, k.Name) and tonumber(_WaveInfo()) >= tonumber(Configs["Select Wave (Sell / Leave)"].Value) then
                        else
                            _MacroInsert(
                                {
                                    ["Unit"] = k.Name,
                                    ["Type"] = "SellUnit",
                                    ["Time"] = t(),
                                    ["Money"] = "0",
                                    ["CFrame"] = tostring(k.Position)
                                }
                            )
                            _MacroDatabase(k.Name)
                            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                            Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                        end
                    end
                    Fluent.Script.Game.Units[y] = nil
print("[DEBUG]: Executando - Fluent.Script.Game.Units[y] = nil")
                elseif x == "Upgrade" and z.Player == game:GetService("Players").LocalPlayer and Configs["Macro Record"].Value and not (Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == z.Position or (Fluent.Script.Mohato.Position - z.Position).Magnitude <= 1.45)) then
                    local j, t, m = function()
                                        return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                    end,
                                    function()
print("[DEBUG]: Executando - function()")
                                        return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                    end,
                                    function()
print("[DEBUG]: Executando - function()")
                                        return (Configs["Record Type"].Value == "Money" or Configs["Record Type"].Value == "Hybrid") and tostring(_UnitsDatabase(z.Data.Name).Upgrades[z.Data.CurrentUpgrade].Price) or "0"
                                    end

                    _MacroInsert(
                        {
                            ["Unit"] = z.Data.Name,
                            ["Type"] = "UpgradeUnit",
                            ["Time"] = t(),
                            ["Money"] = m(),
                            ["Value"] = tostring(z.Data.CurrentUpgrade - 1),
                            ["CFrame"] = tostring(z.Position)
                        }
                    )
                    _MacroDatabase(z.Data.Name)
                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                    Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                elseif x == "ChangePriority" and z.Player == game:GetService("Players").LocalPlayer and Configs["Macro Record"].Value and not (Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == z.Position or (Fluent.Script.Mohato.Position - z.Position).Magnitude <= 1.45)) then
                    local j, t = function()
                                    return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                 end,
                                 function()
print("[DEBUG]: Executando - function()")
                                    return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                 end
                    _MacroInsert(
                        {
                            ["Unit"] = z.Data.Name,
                            ["Type"] = "ChangePriority",
                            ["Time"] = t(),
                            ["Money"] = "0",
                            ["Value"] = _PriorityWithNumber(z.Data.Priority),
                            ["CFrame"] = tostring(z.Position)
                        }
                    )
                    _MacroDatabase(z.Data.Name)
                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                    Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                elseif x == "ChangePosition" and Fluent.Script.Boogies.Main and y.UnitGUID ~= Fluent.Script.Boogies.Main.Key and Fluent.Script.Game.Units[y.UnitGUID] then
                    local j, t = function()
                                    return Fluent.Script.Macro.Value[tostring(#Fluent.Script.Macro.Value)]
                                 end,
                                 function()
print("[DEBUG]: Executando - function()")
                                    return (Configs["Record Type"].Value == "Time" or Configs["Record Type"].Value == "Hybrid") and _TickFirst() or "0.000"
                                 end
                                 Fluent.Script.Boogies.Misc = Fluent.Script.Game.Units[y.UnitGUID]
print("[DEBUG]: Executando - Fluent.Script.Boogies.Misc = Fluent.Script.Game.Units[y.UnitGUID]")

                    if Configs["Macro Record"].Value and Fluent.Script.Boogies.Main and Fluent.Script.Boogies.Misc then
                        local h, e = Fluent.Script.Boogies.Main,
                                     Fluent.Script.Boogies.Misc
print("[DEBUG]: Executando - Fluent.Script.Boogies.Misc")

                        if Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == h.Position or (Fluent.Script.Mohato.Position - h.Position).Magnitude <= 1.45) then
                        elseif Configs["Auto Mohato"].Value and Fluent.Script.Mohato.BossSpawn and Fluent.Script.Mohato.Position and (Fluent.Script.Mohato.Position == e.Position or (Fluent.Script.Mohato.Position - e.Position).Magnitude <= 1.45) then
                        else
                            _MacroInsert(
                                {
                                    ["Unit"] = h.Name,
                                    ["Type"] = "BoogieMove",
                                    ["Time"] = t(),
                                    ["Money"] = "0",
                                    ["CFrame"] = tostring(h.Position),
                                    ["Selected"] = {
                                        ["Unit"] = e.Name,
                                        ["CFrame"] = tostring(e.Position)
                                    },
                                }
                            )
                            _MacroDatabase(h.Name)
                            _MacroDatabase(e.Name)
                            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                            Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["CFrame"])")
                            Fluent.Script.Macro.Action.Create(j(), j()["Selected"]["CFrame"], e.Name)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j(), j()["Selected"]["CFrame"], e.Name)")
                        end
                    end
                    if Fluent.Script.Boogies.Main and Fluent.Script.Boogies.Misc then
                        local h, e = Fluent.Script.Boogies.Main,
                                     Fluent.Script.Boogies.Misc
print("[DEBUG]: Executando - Fluent.Script.Boogies.Misc")

                        if Fluent.Script.Game.Units[h.Key] and Fluent.Script.Game.Units[e.Key] then
                            task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                                function()
print("[DEBUG]: Executando - function()")
                                    repeat
                                        task.wait()
                                    until Fluent.Unloaded or (h.Position ~= _UnitsSpawneds(h.Key).Position and e.Position ~= _UnitsSpawneds(e.Key).Position)
                                    Fluent.Script.Game.Units[h.Key] = _UnitsSpawneds(h.Key)
print("[DEBUG]: Executando - Fluent.Script.Game.Units[h.Key] = _UnitsSpawneds(h.Key)")
                                    Fluent.Script.Game.Units[e.Key] = _UnitsSpawneds(e.Key)
print("[DEBUG]: Executando - Fluent.Script.Game.Units[e.Key] = _UnitsSpawneds(e.Key)")
                                    Fluent.Script.Boogies.Main = nil
print("[DEBUG]: Executando - Fluent.Script.Boogies.Main = nil")
                                    Fluent.Script.Boogies.Misc = nil
print("[DEBUG]: Executando - Fluent.Script.Boogies.Misc = nil")
                                end
                            )
                        end
                    end
                end
            end
        )
    
        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            function()
print("[DEBUG]: Executando - function()")
                Configs["Macro Play"]:OnChanged(
                    function(q)
print("[DEBUG]: Executando - function(q)")
                        if Configs["Auto Save Configuration"] and Configs["Auto Save Configuration"].Value then
                            SaveSettings:Save("Configuration")
                        end
                        if Fluent.Unloaded or not Configs["Macro Play"].Value then
                            Fluent.Script.Macro.Index = 0
print("[DEBUG]: Executando - Fluent.Script.Macro.Index = 0")
                            Fluent.Script.Macro.Ended = nil
print("[DEBUG]: Executando - Fluent.Script.Macro.Ended = nil")
                            Fluent.Script.Macro.Playing = nil
print("[DEBUG]: Executando - Fluent.Script.Macro.Playing = nil")
                            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                        else
                            if not isfile then
                                Fluent:Notify(
                                    {
                                        Title = "Notification",
                                        SubContent = "The executor doesn't support isfile",
                                        Disable = true,
                                        Duration = 5
                                    }
                                )
                                Configs["Macro Play"]:SetValue(false)
                            elseif not readfile then
                                Fluent:Notify(
                                    {
                                        Title = "Notification",
                                        SubContent = "The executor doesn't support readfile",
                                        Disable = true,
                                        Duration = 5
                                    }
                                )
                                Configs["Macro Play"]:SetValue(false)
                            elseif not _MacroSelect() then
                                Fluent:Notify(
                                    {
                                        Title = "Notification",
                                        SubContent = "Select macro file first",
                                        Disable = true,
                                        Duration = 5
                                    }
                                )
                                Configs["Macro Play"]:SetValue(false)
                            elseif not isfile(Otherfunction:FormatLocation(_MacroSelect())) then
                                Fluent:Notify(
                                    {
                                        Title = "Notification",
                                        SubContent = "Can't find selected file",
                                        Disable = true,
                                        Duration = 5
                                    }
                                )
                                Configs["Macro Play"]:SetValue(false)
                            else
                                Fluent.Script.Macro.Playing = game:GetService("HttpService"):JSONDecode(readfile(Otherfunction:FormatLocation(_MacroSelect())))
print("[DEBUG]: Executando - Fluent.Script.Macro.Playing = game:GetService("HttpService"):JSONDecode(readfile(Otherfunction:FormatLocation(_MacroSelect())))")
                                setmetatable(Fluent.Script.Macro.Playing, Fluent.Script._len({"Database"}))
                                if #Fluent.Script.Macro.Playing == 0 then
                                    Fluent:Notify(
                                        {
                                            Title = "Notification",
                                            SubContent = "Record action first",
                                            Disable = true,
                                            Duration = 5
                                        }
                                    )
                                    Configs["Macro Play"]:SetValue(false)
                                elseif Fluent.Script.Macro.Playing.Database.World ~= _StageName() then
                                    Fluent:Notify(
                                        {
                                            Title = "Notification",
                                            SubContent = "World doesn't match the database",
                                            Disable = true,
                                            Duration = 5
                                        }
                                    )
                                    Configs["Macro Play"]:SetValue(false)
                                else
                                    task.wait(0.125)
                                    for i = 1, #Fluent.Script.Macro.Playing do
                                        task.wait(
                                            Configs["Macro Delay"].Value
                                        )
                                        Fluent.Script.Macro.Index = i
print("[DEBUG]: Executando - Fluent.Script.Macro.Index = i")
                                        local j = Fluent.Script.Macro.Playing[tostring(i)]
    
                                        if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            break
                                        end
                                        if j["Type"] == "SpawnUnit" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not table.find(Fluent.Script.Vanguards._Slot().Unit, j["Unit"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to SpawnUnit",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif _UnitsOnPlaced(j["Unit"], j["CFrame"], "Check", "Anything") then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit already on this place",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif #Fluent.Script.Vanguards._CurrentPlaceUnit(j["Unit"]).Placed >= Fluent.Script.Vanguards._CurrentPlaceUnit(j["Unit"]).MaxPlace then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit already on max place",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, j["CFrame"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, j["CFrame"])")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if not _UnitsOnPlaced(j["Unit"], j["CFrame"], "Check", "Anything") then
                                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Render",
                                                        {
                                                            j["Unit"],
                                                            _UnitsDatabase(j["Unit"]).Id,
                                                            Fluent.Script.ToVectors(j["CFrame"]),
print("[DEBUG]: Executando - Fluent.Script.ToVectors(j["CFrame"]),")
                                                            tonumber(j["Rotation"])
                                                        }
                                                    )
                                                    task.wait(0.475)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "SellUnit" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to SellUnit",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Sell", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key)
                                                    task.wait(0.125)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "UseAbility" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to UseAbility",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]).ActiveAbility or _UnitsOnPlaced(j["Unit"], j["CFrame"]).ActiveAbility ~= j["Value"] then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit can't find ability to use",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.AbilityEvent:FireServer("Activate", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key, j["Value"])
                                                    task.wait(0.125)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "AutoAbility" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to UseAbility",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]).ActiveAbility then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit can't find ability to use",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.ClientListeners.Units.AutoAbilityEvent:FireServer("Enable", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key)
                                                    task.wait(0.125)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "UpgradeUnit" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to UpgradeUnit",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif _UnitsOnPlaced(j["Unit"], j["CFrame"]).CurrentUpgrade >= tonumber(j["Value"] + 1) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit already on this upgrade",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Upgrade", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key)
                                                    task.wait(0.475)
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) and _UnitsOnPlaced(j["Unit"], j["CFrame"]).CurrentUpgrade < tonumber(j["Value"] + 1) then
                                                    repeat
                                                        if _UnitsOnPlaced(j["Unit"], j["CFrame"]) and tonumber(Fluent.Script.Vanguards._Yen()) >= tonumber(_UnitsDatabase(j["Unit"]).Upgrades[tonumber(j["Value"] + 1)].Price) then
                                                            game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("Upgrade", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key)
                                                            task.wait(0.475)
                                                        end
                                                        task.wait()
                                                    until Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 or not _UnitsOnPlaced(j["Unit"], j["CFrame"]) or _UnitsOnPlaced(j["Unit"], j["CFrame"]).CurrentUpgrade >= tonumber(j["Value"] + 1)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "ChangePriority" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to ChangePriority",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif _PriorityWithNumber(_UnitsOnPlaced(j["Unit"], j["CFrame"]).Priority) == j["Value"] then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit already on this priority",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.UnitEvent:FireServer("ChangePriority", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key, j["Value"])
                                                    task.wait(0.475)
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        elseif j["Type"] == "BoogieMove" then
                                            if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                break
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]) or not _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]) then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Invalid unit to BoogieMove",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            elseif not _UnitsOnPlaced(j["Unit"], j["CFrame"]).ActiveAbility then
                                                Fluent:Notify(
                                                    {
                                                        Title = "Notification",
                                                        SubContent = "Unit can't find ability to use",
                                                        Disable = true,
                                                        Duration = 5
                                                    }
                                                )
                                            else
                                                local k = 0
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Unit"], j["CFrame"]).Position)")
                                                Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]).Position, j["Selected"]["Unit"])
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Create(j, _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]).Position, j["Selected"]["Unit"])")
                                                _MacroWating(j)
                                                if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                                    break
                                                end
                                                if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BoogieMove") then
                                                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.BoogieMove.Holder.Cancel.Button.Activated)
                                                    task.wait(0.075)
                                                end
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) then
                                                    game:GetService("ReplicatedStorage").Networking.AbilityEvent:FireServer("Activate", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key, "Boogie")
                                                    task.wait(0.275)
                                                end
                                                repeat
                                                    k += 1
                                                    task.wait(0.1)
                                                until Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 or k >= 500 or game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BoogieMove") or (Fluent.Script.Boogies.Main and Fluent.Script.Boogies.Main.Key == _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key)
                                                if _UnitsOnPlaced(j["Unit"], j["CFrame"]) and _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]) then
                                                    if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BoogieMove") == nil then
                                                        game:GetService("ReplicatedStorage").Networking.AbilityEvent:FireServer("Activate", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key, "Boogie")
                                                        task.wait(0.355)
                                                        game:GetService("ReplicatedStorage").Networking.Abilities.BoogieEvent:FireServer("Move", {["SelectedUnitGUID"] = _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]).Key, ["UnitGUID"] = _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key})
                                                        task.wait(0.075)
                                                        game:GetService("ReplicatedStorage").Networking.Abilities.BoogieEvent:FireServer("CancelMove", {})
                                                    else
                                                        firesignal(game:GetService("Players").LocalPlayer.PlayerGui.BoogieMove.Holder.Cancel.Button.Activated)
                                                        task.wait(0.075)
                                                        game:GetService("ReplicatedStorage").Networking.AbilityEvent:FireServer("Activate", _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key, "Boogie")
                                                        task.wait(0.355)
                                                        game:GetService("ReplicatedStorage").Networking.Abilities.BoogieEvent:FireServer("Move", {["SelectedUnitGUID"] = _UnitsOnPlaced(j["Selected"]["Unit"], j["Selected"]["CFrame"]).Key, ["UnitGUID"] = _UnitsOnPlaced(j["Unit"], j["CFrame"]).Key})
                                                        task.wait(0.075)
                                                        game:GetService("ReplicatedStorage").Networking.Abilities.BoogieEvent:FireServer("CancelMove", {})
                                                    end
                                                end
                                                Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            end
                                        end
                                        if Fluent.Unloaded or not Configs["Macro Play"].Value or not Fluent.Script.Macro.Playing or Fluent.Script.Macro.Index == 0 then
                                            Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                                            break
                                        elseif i >= #Fluent.Script.Macro.Playing then
                                            Fluent.Script.Macro.Ended = ""
print("[DEBUG]: Executando - Fluent.Script.Macro.Ended = """)
                                        end
                                        task.wait(0.0875)
                                    end
                                end
                            end
                        end
                    end
                )
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.EndScreen.HideEndScreenEvent.OnClientEvent,
            function()
print("[DEBUG]: Executando - function()")
                Fluent.Script.Not_Retry = false
print("[DEBUG]: Executando - Fluent.Script.Not_Retry = false")
                Fluent.Script.Game.Reset = true
print("[DEBUG]: Executando - Fluent.Script.Game.Reset = true")
                Fluent.Script_Not_Next_Act = false
print("[DEBUG]: Executando - Fluent.Script_Not_Next_Act = false")
                table.clear(Fluent.Script.Game.Sells)
                table.clear(Fluent.Script.Rewards[1])
                table.clear(Fluent.Script.Rewards[2])
                task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                    function()
print("[DEBUG]: Executando - function()")
                        if game:GetService("Players").LocalPlayer.PlayerGui:FindFirstChild("BoogieMove") then
                            firesignal(game:GetService("Players").LocalPlayer.PlayerGui.BoogieMove.Holder.Cancel.Button.Activated)
                        end
                        Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                        Fluent.Script.Mohato.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Mohato.Action.Delete()")
                        table.clear(Fluent.Script.Macro.Value)
                        Fluent.Script.Macro.Value.Database = {World = "", Units = {}}
print("[DEBUG]: Executando - Fluent.Script.Macro.Value.Database = {World = "", Units = {}}")

                        repeat
                            task.wait()
print("[DEBUG]: Requisitando ou carregando - until Fluent.Unloaded or not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[2]")
                        until Fluent.Unloaded or not getupvalues(require(game:GetService("StarterPlayer").Modules.Gameplay.WaveSkipHandler)._Init)[2]
                        Fluent.Script.Game.Reset = false
print("[DEBUG]: Executando - Fluent.Script.Game.Reset = false")
                    end
                )
                if Configs["Macro Play"].Value then
                    Configs["Macro Play"].Value = false
                    task.wait(0.055)
                    Configs["Macro Play"]:SetValue(false)
                    task.wait(0.095)
                    Fluent.Script.Macro.Action.Delete()
print("[DEBUG]: Executando - Fluent.Script.Macro.Action.Delete()")
                    Configs["Macro Play"]:SetValue(true)
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.Interface.ItemNotificationEvent.OnClientEvent,
            function(x)
print("[DEBUG]: Executando - function(x)")
                if not Fluent.Script.Rewards[2][x.ItemName] then
                       Fluent.Script.Rewards[2][x.ItemName] = {}
print("[DEBUG]: Executando - Fluent.Script.Rewards[2][x.ItemName] = {}")
                end
                if tonumber(x.ItemAmount) > 0 then
                    table.insert(Fluent.Script.Rewards[2][x.ItemName], tonumber(x.ItemAmount))
                end
            end
        )

        task.spawn(
print("[DEBUG]: Executando - task.spawn(")
            Fluent.Script.AddSignal, nil,
print("[DEBUG]: Executando - Fluent.Script.AddSignal, nil,")
            game:GetService("ReplicatedStorage").Networking.EndScreen.ShowEndScreenEvent.OnClientEvent,
            function(x)
print("[DEBUG]: Executando - function(x)")
                if Configs["Macro Record"].Value then
                    Configs["Macro Record"]:SetValue(false)
                end
                if Configs["Auto Lobby Green Essence Stone"].Value and Fluent.Script.Vanguards._InventoryHandler("Green Essence Stone") >= 100 and Fluent.Script.Vanguards._CurrencyHandler().Gold >= 500 then
                    task.delay(2, function()
                        game:GetService("ReplicatedStorage").Networking.TeleportEvent:FireServer("Lobby")
                    end)
                else
                    task.spawn(
print("[DEBUG]: Executando - task.spawn(")
                        function()
print("[DEBUG]: Executando - function()")
                            repeat
                                if game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Leave.Visible and (Configs["Auto Leave"].Value or (_StageType() == "Challenge" and game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Main.VictoryLabel.Visible)) then
                                    task.wait(2)
                                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Leave.Button.Activated)
                                    break
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Next.Visible and not Fluent.Script_Not_Next_Act and _StageType() ~= "Challenge" and _NextAct() and game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Main.VictoryLabel.Visible and Configs["Auto Next"].Value then
                                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Next.Button.Activated)
                                    task.wait(2)
                                elseif game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Retry.Visible and not Fluent.Script.Not_Retry and Configs["Auto Retry"].Value then
                                    firesignal(game:GetService("Players").LocalPlayer.PlayerGui.EndScreen.Container.EndScreen.Retry.Button.Activated)
                                    task.wait(2)
                                end
                                task.wait()
                            until Fluent.Unloaded or Fluent.Script.Game.Reset or _WaveInfo() == "0" or getgenv().Wave0
                        end
                    )
                end
                local j =
                {
                    u =
                    {
                        {},
                        {}
                    },
                    c = {},
                    s = x.Status,
                    d = x.Difficulty,
                    w = x.WavesCompleted,
                    a = x.ParagonLevel and "Level "..tostring(x.ParagonLevel) or x.Act,
                    t = string.format("%02i:%02i:%02i", x.TimeTaken/60^2, x.TimeTaken/60%60, x.TimeTaken%60),
print("[DEBUG]: Requisitando ou carregando - n = require(game:GetService("ReplicatedStorage").Modules.Data.StagesData[x.StageType][x.Stage][x.Stage]).Name,")
                    n = require(game:GetService("ReplicatedStorage").Modules.Data.StagesData[x.StageType][x.Stage][x.Stage]).Name,
                }
                for k, h in next, x.Rewards.Items or {} do
                    local y = "+"..h.Amount.." "..k..(Fluent.Script.Vanguards._InventoryHandler(k) > 0 and " ["..tostring(Fluent.Script.Vanguards._InventoryHandler(k)).."]" or "")

                    if not table.find(Fluent.Script.Rewards[1], y) then
                           table.insert(Fluent.Script.Rewards[1], y)
                    end
                end
                for k, h in next, x.Rewards.Units or {} do
print("[DEBUG]: Requisitando ou carregando - local y = "+1 "..k.." ["..getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Misc.UnitWindowHover)._HandleHover)[1].GetUnits)[1][k].Rarity.."]"..(h.Shiny and ("(Shiny)") or "")")
                    local y = "+1 "..k.." ["..getupvalues(getupvalues(require(game:GetService("StarterPlayer").Modules.Interface.Loader.Misc.UnitWindowHover)._HandleHover)[1].GetUnits)[1][k].Rarity.."]"..(h.Shiny and ("(Shiny)") or "")
                    table.insert(j.u[1], y:split("+1 ")[2])

                    if not table.find(Fluent.Script.Rewards[1], y) then
                           table.insert(Fluent.Script.Rewards[1], y)
                    end
                end
                for k, h in next, x.Rewards.Currencies or {} do
                    local y = "+"..h.Amount.." "..k

                    if not table.find(Fluent.Script.Rewards[1], y) then
                           table.insert(Fluent.Script.Rewards[1], y)
                    end
                end
                for k, h in next, x.Rewards.Experience or {} do
                    local y =  "+"..h.." Experience"

                    if not table.find(Fluent.Script.Rewards[1], y) then
                           table.insert(Fluent.Script.Rewards[1], y)
                    end
                end
                for k, h in next, x.Rewards.UnitExperience or {} do
                    local y = "+"..h.." UnitExperience"

                    if not table.find(Fluent.Script.Rewards[1], y) then
                           table.insert(Fluent.Script.Rewards[1], y)
                    end
                end

                for k, h in next, Fluent.Script.Rewards[2] do
                    local b
                    local m = 0
                    if #h > 0 then
                        for i = 1, #h do
                            m += h[i]
                            b = "+"..tostring(m).." "..k..(Fluent.Script.Vanguards._InventoryHandler(k) > 0 and " ["..tostring(Fluent.Script.Vanguards._InventoryHandler(k)).."]" or "")
                        end
                        if not table.find(Fluent.Script.Rewards[1], b) then
                               table.insert(Fluent.Script.Rewards[1], b)
                        end
                    end
                end
                for k, h in next, Fluent.Script.Vanguards._Slot().Data do
                    table.insert(j.u[2], "["..tostring(h.Level).."] "..h.Name..tostring(h.Worthiness >= 100 and " 100%" or " "..h.Worthiness.."%"))
                end
                for k, h in next, Fluent.Script.Vanguards._CurrencyHandler() do
                    table.insert(j.c, k..": "..Otherfunction:NumberToString(h))
                end
                if Configs["Send Webhook"].Value and string.find(Configs["Webhook Url"].Value, "https://discord.com/api/webhooks/") then
                    local v = game:GetService("HttpService"):JSONEncode(
                        {
                            ["username"] = "Anime Vanguards : Notification",
                            ["avatar_url"] = "https://tr.rbxcdn.com/180DAY-9afff1de0f2fc599599792d23da9f210/256/256/Image/Webp/noFilter",
                            content = (Configs["Ping Webhook"].Value and #j.u[1] > 0 and "<@"..tostring(Configs["Ping Webhook"].Value)..">\n`You received:` "..table.concat(j.u[1], "\n`You received:` ")) or nil,
                            embeds = {
                                {
                                    ["title"] = "**✦ Webhook Notifaction ✦**",
                                    ["description"] = nil,
                                    ["color"] = j.s == "Finished" and 0x00ff00 or 0xe9190c,
                                    ["footer"] =
                                    {
                                        ["text"] = "Time: "..os.date("%c").."\nBy Omg",
                                        ["icon_url"] = ""
                                    },
                                    ["thumbnail"] =
                                    {
                                        ["url"] = "https://tr.rbxcdn.com/180DAY-9afff1de0f2fc599599792d23da9f210/256/256/Image/Webp/noFilter",
                                    },
                                    ["fields"] =
                                    {
                                        {
                                            ["name"] = "**User: ||"..game:GetService("Players").LocalPlayer.Name.."||**",
                                            ["value"] = game:GetService("Players").LocalPlayer.PlayerGui.Hotbar.Main.Level.Level.Text,
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**Units**",
                                            ["value"] = "\n"..table.concat(j.u[2], "\n"),
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**Rewards**",
                                            ["value"] = "\n"..table.concat(Fluent.Script.Rewards[1], "\n"),
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**Currencies**",
                                            ["value"] = "\n"..table.concat(j.c, "\n"),
                                            ["inline"] = false
                                        },
                                        {
                                            ["name"] = "**Match Result ["..j.s.."!]**",
                                            ["value"] = tostring(j.t).." - Wave "..tostring(j.w).."\n"..j.n.." "..j.a.. " - " .._StageType().. " ["..j.d.."]",
                                            ["inline"] = false
                                        }
                                    }
                                }
                            }
                        }
                    )
                    local l = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or (request)
                    l(
                        {
                            Url = Configs["Webhook Url"].Value,
                            Method = "POST",
                            Headers =
                            {
                                ["Content-Type"] = "application/json"
                            },
                            Body = v
                        }
                    )
                end
            end
        )
    
    end
end