while true do
    for i,v in pairs(game.Players:GetChildren()) do
        local char = v.Character
        if char:FindFirstChild("Head") then
            local head = _G.settings.Position
            local esp = Instance.new("BoxHandleAdornment", head)
            esp.Adornee = head
            esp.AlwaysOnTop = _G.settings.AlwaysOnTop
            esp.ZIndex = 10
            esp.Transparency = _G.settings.Transparency
            esp.Size = Vector3.new(_G.settings.Size)
            esp.Color3 = _G.settings.Color
        end
    end
    wait()
end
