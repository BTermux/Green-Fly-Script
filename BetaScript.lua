--> This is only for Pre-Updates (! Have Bugs !)
repeat
    wait()
until game:IsLoaded()

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local UIS = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local StarterGui = game:GetService("StarterGui")

--> Notification <--
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "The script will be loaded as soon as the game loads", 
    Text = "Creator's ScriptBlox account copied in your clipboard", 
    Button1 = "Ok",
    Duration = 30
})

--> Notification 2 <--
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Original Script - https://github.com/BTermux/Green-Fly-Script/", 
    Text = "Original script copied in your clipboard", 
    Button1 = "Ok",
    Duration = 30
})

--> Copy Credits script <--
loadstring(game:HttpGet("https://gist.githubusercontent.com/BTermux/e53697866169d4d40f524f8a14bbb26b/raw/76ae9d07abe12d7cc3533baaf6f72100a76ff2a1/Copy-Script",true))()

----> GUI Setuping <----

--> Screen GUI <--
local screenGui = Instance.new("ScreenGui", player.PlayerGui)
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

--> GUI Frame <--
local frame = Instance.new("Frame", screenGui)
frame.Size = UDim2.new(0, 260, 0, 230)
frame.Position = UDim2.new(1, -280, 0, 40)
frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
frame.Active = true
frame.Draggable = true
frame.BorderSizePixel = 3
frame.BorderColor3 = Color3.fromRGB(0, 255, 0)
frame.ZIndex = 10
frame.ClipsDescendants = true

--> Make the GUI round <--
local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = frame

--> GUI Title <--
local titleLabel = Instance.new("TextLabel", frame)
titleLabel.Size = UDim2.new(1, -10, 0, 30)
titleLabel.Position = UDim2.new(0, 5, 0, 5)
titleLabel.Text = "Fly Settings"
titleLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
titleLabel.Font = Enum.Font.LuckiestGuy
titleLabel.TextSize = 20
titleLabel.BackgroundTransparency = 1
titleLabel.TextScaled = true
titleLabel.TextWrapped = true
titleLabel.ZIndex = 11

--> Round the title <--
local TitleCorner = Instance.new("UICorner")
TitleCorner.CornerRadius = UDim.new(0, 20)
TitleCorner.Parent = titleLabel

--> Less Speed Button <--
local minusButton = Instance.new("TextButton", frame)
minusButton.Size = UDim2.new(0, 50, 0, 35)
minusButton.Position = UDim2.new(0, 10, 0, 75)  
minusButton.Text = "-"
minusButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
minusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minusButton.Font = Enum.Font.LuckiestGuy
minusButton.TextSize = 20
minusButton.BorderSizePixel = 2
minusButton.BorderColor3 = Color3.fromRGB(0, 255, 0)
minusButton.Parent = frame

--> Round Less Speed Button <--
local minusCorner = Instance.new("UICorner")
minusCorner.CornerRadius = UDim.new(0, 10)
minusCorner.Parent = minusButton

--> Flying Speed TextBox <--
local textBox = Instance.new("TextBox", frame)
textBox.Size = UDim2.new(0, 120, 0, 35)  
textBox.Position = UDim2.new(0, 70, 0, 75) 
textBox.PlaceholderText = "Fly Speed"
textBox.Text = "50"
textBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textBox.TextColor3 = Color3.fromRGB(0, 255, 0)
textBox.Font = Enum.Font.LuckiestGuy 
textBox.TextSize = 16 
textBox.BorderSizePixel = 2
textBox.BorderColor3 = Color3.fromRGB(0, 255, 0)
textBox.TextScaled = true
textBox.Parent = frame

--> Round Flying Speed TextBox <--
local textBoxCorner = Instance.new("UICorner")
textBoxCorner.CornerRadius = UDim.new(0, 10)
textBoxCorner.Parent = textBox

--> More Speed Button <--
local plusButton = Instance.new("TextButton", frame)
plusButton.Size = UDim2.new(0, 50, 0, 35)
plusButton.Position = UDim2.new(0, 200, 0, 75)  
plusButton.Text = "+"
plusButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
plusButton.TextColor3 = Color3.fromRGB(255, 255, 255)
plusButton.Font = Enum.Font.LuckiestGuy
plusButton.TextSize = 20
plusButton.BorderSizePixel = 2
plusButton.BorderColor3 = Color3.fromRGB(0, 255, 0)
plusButton.Parent = frame

--> Round More Speed Button <--
local plusCorner = Instance.new("UICorner")
plusCorner.CornerRadius = UDim.new(0, 10)
plusCorner.Parent = plusButton

--> Fly Button - E to Fly <--
-- ========> Especially for Phone Exploits Users <======== --   
local button = Instance.new("TextButton", frame)
button.Size = UDim2.new(1, -20, 0, 50)
button.Position = UDim2.new(0, 10, 0, 130)
button.Text = "E - Fly"
button.BackgroundColor3 = Color3.fromRGB(0, 50, 0)
button.TextColor3 = Color3.fromRGB(0, 255, 0)
button.Font = Enum.Font.LuckiestGuy
button.TextSize = 20
button.BorderSizePixel = 2
button.BorderColor3 = Color3.fromRGB(0, 255, 0)
button.Parent = frame

-->Round Fly Button <--
local buttonCorner = Instance.new("UICorner")
buttonCorner.CornerRadius = UDim.new(0, 10)
buttonCorner.Parent = button 

--> Credits (Please also write my credits if you forked this script) <--
local credits = Instance.new("TextLabel", frame)
credits.Size = UDim2.new(1, -10, 0, 60)
credits.Position = UDim2.new(0, 5, 0, 180)
credits.Text = "Credits:\nhttps://github.com/BTermux"
credits.TextColor3 = Color3.fromRGB(0, 255, 0)
credits.Font = Enum.Font.LuckiestGuy
credits.TextSize = 12
credits.BackgroundTransparency = 1
credits.TextScaled = true
credits.TextWrapped = true
credits.BorderSizePixel = 0
credits.Parent = frame

--> Minimize Button <--
local MinimizeButton = Instance.new("TextButton", frame)
MinimizeButton.Size = UDim2.new(0, 30, 0, 30)
MinimizeButton.Position = UDim2.new(1, -35, 0, 5)
MinimizeButton.Text = "-"
MinimizeButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0) -- Green color
MinimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinimizeButton.Font = Enum.Font.Fondamento
MinimizeButton.TextSize = 18
MinimizeButton.ZIndex = 12
MinimizeButton.Parent = frame

--> Round the minimize button <--
local MinimizeCorner = Instance.new("UICorner")
MinimizeCorner.CornerRadius = UDim.new(0, 15)
MinimizeCorner.Parent = MinimizeButton

local minimized = false
MinimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        frame:TweenSize(UDim2.new(0, 220, 0, 40), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "+"
        titleLabel.Visible = true
        textBox.Visible = false
        for _, child in pairs(frame:GetChildren()) do
            if child:IsA("TextButton") or child:IsA("TextLabel") then
                if child ~= titleLabel and child ~= MinimizeButton then
                    child.Visible = false
                end
            end
        end
    else
        frame:TweenSize(UDim2.new(0, 260, 0, 230), "Out", "Quad", 0.3, true)
        MinimizeButton.Text = "-"
        for _, child in pairs(frame:GetChildren()) do
            if child:IsA("TextButton") or child:IsA("TextLabel") then
                child.Visible = true
                textBox.Visible = true
            end
        end
    end
end)

--> Configure script <--
local flySpeed = 50 --< Fly Speed at Start <--
local flying = false 

--> TextBox configure <--
textBox.FocusLost:Connect(function()
    local inputSpeed = tonumber(textBox.Text)
    if inputSpeed then
        flySpeed = inputSpeed
    end
end)

--> More Speed Configure <-
plusButton.MouseButton1Click:Connect(function()
    flySpeed = flySpeed + 5 --< You can change the swing to more/less flight speed <--
    textBox.Text = tostring(flySpeed)
end)

--> Less Speed Configure <--
minusButton.MouseButton1Click:Connect(function()
    flySpeed = math.max(5, flySpeed - 5) --< Same as More Speed Configure, for example: math.max('Minimum Speed', flySpeed - 'Swing Power' <--
    textBox.Text = tostring(flySpeed)
end)

--> E - Fly Button Handler <--
button.MouseButton1Click:Connect(function()
    if flying then
        stopFlying()
    else
        startFlying()
    end
end)

--> Creates an object to control the character's movement in space <--
-- ========> Detailed: A `BodyVelocity` object is created, which allows modifying the character's speed. The initial speed is set to (0, 0, 0), and the maximum force for each axis is set to 100,000. This enables efficient control of the character's movement in the air <======== --
local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.MaxForce = Vector3.new(100000, 100000, 100000)

-- --> Creates an object to control the character's orientation and rotation. <--
-- ========> A `BodyGyro` object is created, which controls the character's rotation. The initial CFrame (coordinate frame) is set to the character's current position. The maximum torque for each axis is set to 100,000, allowing for precise control over the rotation. <======== --
local bodyGyro = Instance.new("BodyGyro")
bodyGyro.CFrame = character.HumanoidRootPart.CFrame
bodyGyro.MaxTorque = Vector3.new(100000, 100000, 100000)

--> Start Flying Function <--
function startFlying()
    flying = true
    bodyVelocity.Parent = character.HumanoidRootPart
    bodyGyro.Parent = character.HumanoidRootPart
    humanoid.PlatformStand = true
end

--> Stop Flying Function <--
function stopFlying()
    flying = false
    bodyVelocity.Parent = nil
    bodyGyro.Parent = nil
    humanoid.PlatformStand = false
end

--> Keybind 'E' to start Flying Handler <--
UIS.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.E then
        if flying then
            stopFlying()
        else
            startFlying()
        end
    end
end)

-- --> Handles movement while flying, based on user input. <--
-- ========> The `RenderStepped` event continuously checks for key presses to control movement. The movement direction is calculated based on the player's input (W, S, A, D, Space, LeftShift), which adjusts the character's velocity in relation to the camera's orientation. The `LookVector` and `RightVector` of the camera are used for forward/backward and sideways movement, respectively, while Space adds upward movement and LeftShift moves the character downward. <======== --
RunService.RenderStepped:Connect(function(deltaTime)
    if flying then
        local moveDirection = Vector3.new(0, 0, 0)
        if UIS:IsKeyDown(Enum.KeyCode.W) then
            moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.LookVector) -- ==> Initialize movement direction <== --
        end
        if UIS:IsKeyDown(Enum.KeyCode.S) then
            moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.LookVector) -- ==> Move Forward <== --
        end
        if UIS:IsKeyDown(Enum.KeyCode.A) then
            moveDirection = moveDirection - (workspace.CurrentCamera.CFrame.RightVector) -- ==> Move Backward <== --
        end
        if UIS:IsKeyDown(Enum.KeyCode.D) then
            moveDirection = moveDirection + (workspace.CurrentCamera.CFrame.RightVector) -- ==> Move Left <== --
        end
        if UIS:IsKeyDown(Enum.KeyCode.Space) then
            moveDirection = moveDirection + Vector3.new(0, 1, 0) -- ==> Move Right <== --
        end
        if UIS:IsKeyDown(Enum.KeyCode.LeftShift) then
            moveDirection = moveDirection - Vector3.new(0, 1, 0) -- ==> Move UpWard <== --
        end

        bodyVelocity.Velocity = bodyVelocity.Velocity:Lerp(moveDirection * flySpeed, 0.1) -- ==> Move DownWard <== --
        bodyGyro.CFrame = workspace.CurrentCamera.CFrame
    end
end)
