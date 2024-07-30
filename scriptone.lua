
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
ThunderToggleUI.TextSize = 14
ThunderToggleUI.Draggable = true

ThunderCornerUI.Name = "ThunderCornerUI"
ThunderCornerUI.Parent = ThunderToggleUI

ThunderImageUI.Name = "MODILEMAGE"
ThunderImageUI.Parent = ThunderToggleUI
ThunderImageUI.BackgroundColor3 = Color3.fromRGB(192, 192, 192)
ThunderImageUI.BackgroundTransparency = 1
ThunderImageUI.BorderSizePixel = 0
ThunderImageUI.Position = UDim2.new(0, 0, 0, 0)
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
        framePos.X.Scale,
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
local areasExist = {}
local selectedBike = 1
local trained = 0
local keepCrewFarm = false
local keepAutoUpgrade = false
local keepAutoOpenEggs = false
local keepTraining = false  -- Variável de controle para o loop

-- Funções auxiliares
function getWorld(value)
    return math.ceil(value / 3)
end

function addBikesToList()
    for _, bike in pairs(workspace.Active.Bikes:GetChildren()) do
        table.insert(bikeNames, bike.Name)
    end
end

function addAreasToList()
    areasExist = {}
    for _, area in pairs(workspace.Areas:GetChildren()) do
        table.insert(areasExist, area.Name)  -- Use o nome da área em vez do objeto completo
    end
end

function addCrewToList()
    crewExist = {}
    for _, bolts in pairs(workspace.Active.Bolts:GetChildren()) do
        table.insert(crewExist, bolts)
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
            table.insert(uniqueList, v)
            hash[v] = true
        end
    end

    table.sort(uniqueList, function(a, b) return a > b end)
    return uniqueList
end

-- Atualize listas e dropdowns
addBikesToList()
addEggsToList()
addAreasToList()
addInteractsToList()
bikeNames = removeDuplicatesAndSortDescending(bikeNames)
eggsName = removeDuplicatesAndSortDescending(eggsName)

-- Função para obter a velocidade da bike
function getSpeedBike(selected)
    local worldArgs = { getWorld(selected) }
    print(getWorld(selected))
    game:GetService("ReplicatedStorage").Packages.Knit.Services.AreaService.RE.SetArea:FireServer(unpack(worldArgs))

    local args = { workspace.Active.Bikes:FindFirstChild(selected) }
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
local WorldsDropdown = Tabs.Teleports:AddDropdown("TeleportWorlds", {
    Title = "Areas",
    Values = areasExist,
    Multi = false,
    Default = 1,
})
WorldsDropdown:OnChanged(function(value)
    local selectedAreaName = value
    local player = game.Players.LocalPlayer
    local targetArea = workspace.Areas:FindFirstChild(selectedAreaName)
    if targetArea and targetArea:FindFirstChild("Home") then
        local home = targetArea:FindFirstChild("Home")
        local newCFrame = CFrame.new(home.position.x, home.position.y + 5, home.position.z)
        player.Character:SetPrimaryPartCFrame(newCFrame)
    else
        Fluent:Notify({
            Title = "Erro",
            Content = "Área não encontrada.",
            Duration = 5
        })
    end
end)

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
local StartUpgrades = Tabs.Main:AddToggle("AutoUpgrades", { Title = "Auto Upgrades", Default = false })
local StartAutoEggs = Tabs.Eggs:AddToggle("AutoOpenEggs", { Title = "Auto Open Eggs", Default = false })

StartAutoEggs:OnChanged(function(value)
    keepAutoOpenEggs = value
    if value then
        coroutine.wrap(function()
            while keepAutoOpenEggs do
                openEgg(selectedEgg)
                task.wait(0.1)
            end
        end)()
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
                task.wait(0.1)  -- Aguarda um pouco antes de repetir o loop para evitar sobrecarga
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
