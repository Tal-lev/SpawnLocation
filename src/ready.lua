---@meta _
-- globals we define are private to our plugin!
---@diagnostic disable: lowercase-global

StartNewRun

modutil.mod.Path.Wrap("StartNewRun", function(base, prevRun, args)
    if config.Active == true then
        args.StartingBiome = config.Biome or "F"
        args.StartingRoomName = config.Location or ""
    end
	return base(prevRun, args)
end)