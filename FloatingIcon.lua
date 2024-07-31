local MinimizeButton = {}

function MinimizeButton.new(window)
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

    ThunderToggleUI.MouseButton1Click:Connect(function()
        if window:IsMinimized() then
            window:Restore()
        else
            window:Minimize()
        end
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
end

return MinimizeButton
