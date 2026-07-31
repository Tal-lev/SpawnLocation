---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

-- here is where your mod sets up all the things it will do after all other mods load.
-- this file will not be reloaded if it changes during gameplay
-- 	so you will most likely want to have it reference
--	values and functions later defined in `reload_late.lua`.

modutil.mod.Path.Wrap("StartNewRun", function(base, prevRun, args)
    if config.Active == "Yes" then
        if config.Biome == "Erebus" then
            args.StartingBiome = "F"
        elseif config.Biome == "Oceanus" then
            args.StartingBiome = "G"
        elseif config.Biome == "Mourning_Fields" then
            args.StartingBiome = "H"
        elseif config.Biome == "Tartarus" then
            args.StartingBiome = "I"
        elseif config.Biome == "Ephyra" then
            args.StartingBiome = "N"
        elseif config.Biome == "Sea" then
            args.StartingBiome = "O"
        elseif config.Biome == "Mount_Olympus" then
            args.StartingBiome = "P"
        elseif config.Biome == "Summit" then
            args.StartingBiome = "Q"
        elseif config.Biome == "Tartarus_H1" then
            args.StartingBiome = "Tartarus"
        else
            args.StartingBiome = config.Biome or "F"
        end
        args.RoomName = config.Location or ""
    end
	return base(prevRun, args)
end)