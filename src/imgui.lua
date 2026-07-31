local previousConfig = {
    Biome = nil,
    Location = nil,
    Type  = nil,
}

rom.gui.add_imgui(function()
    if rom.ImGui.Begin("SpawnLocation") then
        DrawMenu()
        rom.ImGui.End()
    end
end)

rom.gui.add_to_menu_bar(function()
    if rom.ImGui.BeginMenu("SpawnLocation") then
        DrawMenu()
        rom.ImGui.EndMenu()
    end
end)

function DrawMenu()
    
    local max_run_length = ((config.custom_run or config.true_random) and 6) or 4

    config.Biome = config.Biome or "Tartarus"
    
    rom.ImGui.Text("Select Biome")
    if rom.ImGui.BeginCombo("###Biome", config.Biome) then
        for _, BiomeName in ipairs(mod.BiomeDisplayOrder) do
            if rom.ImGui.Selectable(BiomeName, (BiomeName == config.Biome)) then
                if BiomeName ~= previousConfig.Biome then
                    config.Biome = BiomeName
                    previousConfig.Biome = BiomeName
                end
                rom.ImGui.SetItemDefaultFocus()
            end
        end
        rom.ImGui.EndCombo()
    end

    rom.ImGui.Text("Select Type")
    if rom.ImGui.BeginCombo("###Type", config.Type) then
        for _, TypeName in ipairs(mod.TypeDisplayOrder) do
            if rom.ImGui.Selectable(TypeName, (TypeName == config.Type)) then
                if TypeName ~= previousConfig.Type then
                    config.Type = TypeName
                    previousConfig.Type = TypeName
                end
                rom.ImGui.SetItemDefaultFocus()
            end
        end
        rom.ImGui.EndCombo()
    end

    rom.ImGui.Text("Select Location")
    if rom.ImGui.BeginCombo("###Location", config.Location) then
        for _, LocationName in ipairs(mod.LocationDisplayOrder[config.Biome][config.Type]) do
            if rom.ImGui.Selectable(LocationName, (LocationName == config.Location)) then
                if LocationName ~= previousConfig.Location then
                    config.Location = LocationName
                    previousConfig.Location = LocationName
                end
                rom.ImGui.SetItemDefaultFocus()
            end
        end
        rom.ImGui.EndCombo()
    end
end
