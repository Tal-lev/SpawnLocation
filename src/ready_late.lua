---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do after all other mods load.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload_late.lua`.

modutil.mod.Path.Wrap("StartNewRun", function(base, prevRun, args)
    if config.Active == "Yes" then
        local usedbiome = "F"
        for biome,roomType in pairs(mod.LocationDisplayOrder) do
            for key,room in pairs(roomType) do
                if config.Location == room then
                    usedbiome = biome
                end
            end
        end

        if usedbiome == "Erebus" then
            args.StartingBiome = "F"
        elseif usedbiome == "Oceanus" then
            args.StartingBiome = "G"
        elseif usedbiome == "Mourning_Fields" then
            args.StartingBiome = "H"
        elseif usedbiome == "Tartarus" then
            args.StartingBiome = "I"
        elseif usedbiome == "Ephyra" then
            args.StartingBiome = "N"
        elseif usedbiome == "Sea" then
            args.StartingBiome = "O"
        elseif usedbiome == "Mount_Olympus" then
            args.StartingBiome = "P"
        elseif usedbiome == "Summit" then
            args.StartingBiome = "Q"
        elseif usedbiome == "Tartarus_H1" then
            args.StartingBiome = "Tartarus"
        else
            args.StartingBiome = usedbiome or "F"
        end
        args.RoomName = config.Location or "F_Opening01"
    end
	currentRun = base(prevRun, args)
    if game.Contains({"Tartarus","Asphodel","Elysium","Styx"},args.StartingBiome) then
        currentRun.ModsNikkelMHadesBiomesIsModdedRun = true
        CallFunctionName("NikkelM-Zagreus_Journey.ApplyGlobalGameObjectModifications",currentRun.ModsNikkelMHadesBiomesIsModdedRun)
    end
    return currentRun
end)

modutil.mod.Path.Wrap("InitHeroLastStands", function(base, newHero)
    if config.Active == "Yes" and CurrentRun and CurrentRun.EnteredBiomes == 0 then
        local StartingLocations = {
            "F_Opening01", "F_Opening02", "F_Opening03", "G_Intro", "H_Intro", "I_Intro", 
            "N_Opening01","O_Intro","P_Intro","Q_Intro","RoomOpening","X_Intro","Y_Intro",
            "D_Intro","Dream_Intro",
        } 
        if not game.Contains( StartingLocations, config.Location) then
            CurrentRun.EnteredBiomes = 1
        end
    end
    return base(newHero)
end)