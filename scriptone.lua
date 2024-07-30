-- Carregamento dos módulos Fluent e outros
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- Configuração da janela principal
local Window = Fluent:CreateWindow({
    Title = "Script para farm",
    SubTitle = "by polar",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- Configuração da UI flutuante
local ThunderScreen = Instance.new("ScreenGui")
local ThunderToggleUI = Instance.new("TextButton")
local ThunderCornerUI = Instance.new("UICorner")
local ThunderImageUI = Instance.new("ImageLabel")

ThunderScreen.Name = "TrueFalseUi"
ThunderScreen.Parent = game.CoreGui
ThunderScreen.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ThunderToggleUI.Name = "ThunderToggleUI"
ThunderToggleUI.Parent = ThunderScreen
ThunderToggleUI.BackgroundColor3 = Color3.fromRGB(31, 31, 31)
ThunderToggleUI.BorderSizePixel = 0
ThunderToggleUI.Position = UDim2.new(0.2, -50, 0.1, -25)
ThunderToggleUI.Size = UDim2.new(0, 50, 0, 50)
ThunderToggleUI.Font = Enum.Font.FredokaOne
ThunderToggleUI.Text = ""
ThunderToggleUI.TextColor3 = Color3.fromRGB(0, 0, 0)
ThunderToggleUI.TextSize = 14.000
ThunderToggleUI.Draggable = true

ThunderCornerUI.Name = "ThunderCornerUI"
ThunderCornerUI.Parent = ThunderToggleUI

ThunderImageUI.Name = "MODILEMAGE"
ThunderImageUI.Parent = ThunderToggleUI
ThunderImageUI.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
ThunderImageUI.BackgroundTransparency = 1.000
ThunderImageUI.BorderSizePixel = 0
ThunderImageUI.Position = UDim2.new(0.0, 0, 0.0, 0)
ThunderImageUI.Size = UDim2.new(0, 50, 0, 50)
ThunderImageUI.Image = "rbxassetid://18658183492"

ThunderToggleUI.MouseButton1Click:Connect(function()
    Window:Minimize()
end)

-- Função de arrastar
local dragging = false
local dragInput, mousePos, framePos

local function updateInput(input)
    local delta = input.Position - mousePos
    ThunderToggleUI.Position = UDim2.new(
        framePos.X.Scale, a
        framePos.X.Offset + delta.X,
        framePos.Y.Scale,
        framePos.Y.Offset + delta.Y
    )
end

ThunderToggleUI.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        mousePos = input.Position
        framePos = ThunderToggleUI.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ThunderToggleUI.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        updateInput(input)
    end
end)

-- Declaração de variáveis
local bikeNames = {}
local eggsName = {}
local interactParts = {}
local crewExist = {}
local plotsExist = {}
local selectedBike = 1
local bolts = 0
local keepCrewFarm = false
local keepWinFarm = false
local keepAutoUpgrade = false
local keepTraining = false  -- Variável de controle para o loop

-- Funções auxiliares
function getWorld(value)
    local world = math.ceil(value / 3)
    return world
end

function addBikesToList()
    for _, bike in pairs(workspace.Active.Bikes:GetChildren()) do
        table.insert(bikeNames, bike.Name)
    end
end

function addCrewToList()
    crewExist = {}
    for _, bolts in pairs(workspace.Active.Bolts:GetChildren()) do
        table.insert(crewExist, bolts)
    end
end
function addPlotToList()
    plotsExist = {}
    for _, plots in pairs(workspace.Areas["3"].Plots:GetChildren()) do
        table.insert(plotsExist, plots)
    end
end

function openEgg(name)
    local args = {
        [1] = workspace.Active.Eggs:FindFirstChild(name),
        [2] = 1
    }
    game:GetService("ReplicatedStorage").Packages.Knit.Services.PetService.RF.Hatch:InvokeServer(unpack(args))
end

function addInteractsToList()
    interactParts = {}
    for _, interact in pairs(workspace.Active.TouchParts:GetChildren()) do
        if interact.Name ~= "Bikes" then
            table.insert(interactParts, interact.Name)
        end
    end
end

function addEggsToList()
    for _, eggs in pairs(workspace.Active.Eggs:GetChildren()) do
        table.insert(eggsName, eggs.Name)
    end
end

local function removeDuplicatesAndSortDescending(list)
    local uniqueList = {}
    local hash = {}

    for _, v in ipairs(list) do
        if not hash[v] then
            uniqueList[#uniqueList + 1] = v
            hash[v] = true
        end
    end

    table.sort(uniqueList, function(a, b) return a > b end)

    return uniqueList
end

-- Atualize listas e dropdowns
addBikesToList()
addEggsToList()
addInteractsToList()
addPlotToList()
bikeNames = removeDuplicatesAndSortDescending(bikeNames)

-- Função para obter a velocidade da bike
function getSpeedBike(selected)
    local worldArgs = {
        [1] = getWorld(selected)
    }
    print(getWorld(selected))
    game:GetService("ReplicatedStorage").Packages.Knit.Services.AreaService.RE.SetArea:FireServer(unpack(worldArgs))

    local args = {
        [1] = workspace.Active.Bikes:FindFirstChild(selected)
    }
    game:GetService("ReplicatedStorage").Packages.Knit.Services.TrainService.RE.MountBike:FireServer(unpack(args))
end

-- Adiciona abas e dropdowns
local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Eggs = Window:AddTab({ Title = "Eggs" }),
    Teleports = Window:AddTab({ Title = "Teleports" }),
    Settings = Window:AddTab({ Title = "Settings", Icon = "settings" })
}

local Options = Fluent.Options

local BikesDropdown = Tabs.Main:AddDropdown("Dropdown", {
    Title = "Bikes",
    Values = bikeNames,
    Multi = false,
    Default = 1,
})

BikesDropdown:OnChanged(function(value)
    selectedBike = value
end)

local EggsDropdown = Tabs.Eggs:AddDropdown("Dropdown", {
    Title = "Eggs",
    Values = eggsName,
    Multi = false,
})

EggsDropdown:OnChanged(function(value)
    selectedEgg = value
end)

local TeleportDropdown = Tabs.Teleports:AddDropdown("Dropdown", {
    Title = "Interacts",
    Values = interactParts,
    Multi = false,
    Default = 1,
})

TeleportDropdown:OnChanged(function(value)
    local player = game.Players.LocalPlayer
    local targetPart = workspace.Active.TouchParts:FindFirstChild(value)
    if targetPart then
        player.Character:SetPrimaryPartCFrame(targetPart.CFrame)
    else
        Fluent:Notify({
            Title = "Erro",
            Content = "Parte interativa não encontrada.",
            Duration = 5
        })
    end
end)

-- Configuração dos toggles
local StartFarmSpeed = Tabs.Main:AddToggle("MyToggle", { Title = "Auto Speed", Default = false })
local StartScrewFarm = Tabs.Main:AddToggle("ScrewFarm", { Title = "Auto Bolt", Default = false })
local StartWinFarm = Tabs.Main:AddToggle("WinFarm", { Title = "Auto Win", Default = false })
local StartUpgrades = Tabs.Main:AddToggle("AutoOpenEggs", { Title = "Auto Oep", Default = false })

function teleportTo(part, destination)
    part.CFrame = destination.CFrame
end

function checkAndTeleport(part, destination)
    for _, child in ipairs(part:GetChildren()) do
        if child:IsA("BasePart") then
            teleportTo(child, destination)
        end
        checkAndTeleport(child, destination)
    end
end

StartWinFarm:OnChanged(function(value)
    keepWinFarm = value
    if value then
        local RunService = game:GetService("RunService")
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if keepWinFarm then
                addPlotToList()
                local player = game.Players.LocalPlayer
                for _, plot in pairs(plotsExist) do
                    if plot then
                        game:GetService("ReplicatedStorage").Packages.Knit.Services.MowerService.RE.Equip:FireServer()
                        player.Character:SetPrimaryPartCFrame(plot.CFrame)
                        local destination = workspace.PolarFF_FF.Mower.Spinner.spinPart
                        while true do
                          for _, area in ipairs(workspace.Areas:GetChildren()) do
                            local grass = area:FindFirstChild("Grass")
                            if grass then
                              checkAndTeleport(grass)
                            end
                          end
                          wait(.5)
                      end
                    end
                end
            else
                connection:Disconnect()
            end
        end)
    end
end)

StartUpgrades:OnChanged(function(value)
    keepAutoUpgrade = value
    if value then
       coroutine.wrap(function()
            while keepAutoUpgrade do
                game:GetService("ReplicatedStorage").Packages.Knit.Services.MowerService.RE.Upgrade:FireServer()
                task.wait(5)
            end
        end)()
    end
end)

StartScrewFarm:OnChanged(function(value)
    keepCrewFarm = value
    if value then
        local RunService = game:GetService("RunService")
        local connection
        connection = RunService.Heartbeat:Connect(function()
            if keepCrewFarm then
                addCrewToList()
                local player = game.Players.LocalPlayer
                for _, bolt in pairs(crewExist) do
                    if bolt then
                       
                        bolts = bolts + 1
                        player.Character:SetPrimaryPartCFrame(bolt.CFrame)
                    end
                end
            else
                connection:Disconnect()
            end
        end)
    end
end)



StartFarmSpeed:OnChanged(function(value)
    keepTraining = value  -- Atualiza o estado com base no toggle
    if value then
        print(selectedBike)
        getSpeedBike(selectedBike) -- Passa o nome da bike para a função
        Fluent:Notify({
            Title = "Notificação",
            Content = "Iniciado o farm de velocidade.",
            Duration = 5
        })
        -- Iniciar o loop em uma nova coroutine para não bloquear o script principal
        coroutine.wrap(function()
            while keepTraining do
                trained = trained + 1
                game:GetService("ReplicatedStorage").Packages.Knit.Services.TrainService.RE.Click:FireServer()
            end
        end)()
    else
        Fluent:Notify({
            Title = "Notificação",
            Content = "Saindo do farm de velocidade.",
            Duration = 5
        })
        game:GetService("ReplicatedStorage").Packages.Knit.Services.TrainService.RE.Unmount:FireServer()
    end
end)

Options.MyToggle:SetValue(false)

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({})

InterfaceManager:SetFolder("PolarHub")
SaveManager:SetFolder("PolarHub/specific-game")

InterfaceManager:BuildInterfaceSection(Tabs.Settings)
SaveManager:BuildConfigSection(Tabs.Settings)

Window:SelectTab(1)

Fluent:Notify({
    Title = "Fluent",
    Content = "O script foi carregado.",
    Duration = 8
})

SaveManager:LoadAutoloadConfig()
