local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local bikeNames = {}
local eggsName = {}
local interactParts = {}
local selectedBike = 1
local trained = 0
local keepTraining = false  -- Variável de controle para o loop

function getWorld(value)
    -- Calcula o mundo baseado no valor fornecido
    local world = math.ceil(value / 3)
    return world
end

function addBikesToList()
    -- Lista para armazenar os nomes das bikes
    for _, bike in pairs(workspace.Active.Bikes:GetChildren()) do
        table.insert(bikeNames, bike.Name)  -- Adicionar o nome de cada bike à lista
    end
end

function openEgg(name)
    local args = {
        [1] = workspace.Active.Eggs[name],
        [2] = 1
    }
    game:GetService("ReplicatedStorage").Packages.Knit.Services.PetService.RF.Hatch:InvokeServer(unpack(args))
end

function addInteractsToList()
    -- Lista para armazenar os nomes das partes interativas
    for _, part in pairs(workspace.Active.TouchParts:GetChildren()) do
        table.insert(interactParts, part.Name)  -- Adicionar o nome de cada parte interativa à lista
    end
end

function addEggsToList()
    for _, egg in pairs(workspace.Active.Eggs:GetChildren()) do
        table.insert(eggsName, egg.Name)
    end
end

local function removeDuplicatesAndSortDescending(list)
    local uniqueList = {}
    local hash = {}

    -- Remover duplicatas
    for _, v in ipairs(list) do
        if not hash[v] then
            uniqueList[#uniqueList + 1] = v
            hash[v] = true
        end
    end

    -- Ordenar em ordem decrescente
    table.sort(uniqueList, function(a, b) return a > b end)

    return uniqueList
end

-- Chame a função após adicionar as bikes à lista
addBikesToList()
addEggsToList()
addInteractsToList()
bikeNames = removeDuplicatesAndSortDescending(bikeNames)
interactParts = removeDuplicatesAndSortDescending(interactParts)

-- Definição da função getSpeedBike corrigida
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

local Window = Fluent:CreateWindow({
    Title = "Script para farm",
    SubTitle = "by polar",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Eggs = Window:AddTab({ Title = "Eggs"}),
    Teleports = Window:AddTab({ Title = "Teleports"}),
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

local StartFarmSpeed = Tabs.Main:AddToggle("MyToggle", { Title = "AutoSpeed", Default = false })

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

