local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()
local MarketplaceService = game:GetService("MarketplaceService")

local MinimizeButton = {}

local function getGameName()
    local success, productInfo = pcall(MarketplaceService.GetProductInfo, MarketplaceService, game.PlaceId)
    return success and productInfo.Name or "Anime Dimensions"
end

function MinimizeButton.createWindow()
    local gameName = getGameName()

    local Window = Fluent:CreateWindow({
        Title = "Game: " .. gameName,
        SubTitle = "by Polar",
        TabWidth = 160,
        Size = UDim2.fromOffset(580, 460),
        Acrylic = true,
        Theme = "Dark",
        MinimizeKey = Enum.KeyCode.LeftControl
    })

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
    ThunderImageUI.Image = "rbxassetid://18728889062"

    local isVisible = true

    local function toggleVisibility()
        if isVisible then
            Window:Minimize()
        else
            Window:Restore()
        end
        isVisible = not isVisible
    end

    ThunderToggleUI.MouseButton1Click:Connect(toggleVisibility)

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

    return Window
end

return MinimizeButton
