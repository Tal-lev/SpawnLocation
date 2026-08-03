# SpawnLocation

Allows Starting a Run in a chosen room using the imgui menu. 

## Features

- Start a Run in a selected room

## Installation

Use r2modman by ebkr from Thunderstore or GitHub.

While the mod has been tested decently well it is recommended to backup your save from %USERPROFILE%\Saved Games\Hades II\Profile*.sav in case there are issues.

## Adding custom rooms

- For modders who wish to add their own rooms into the mod.
- In `plugins/JarlUlsfark-SpawnLocation/data.lua` add the **exact** name of your custom room into the one of the lists for it to be select-able in game.
- If you add a whole new biome then add it as a list in a similar structure to other biomes in the file.

## Known Issues

- If the Starting room is not the first room in a Biome, the following room would be.
- Selecting starting biome with incompatible Room / Biome causes the game to crash.

## Issues

Report any issues on the mod [github](https://github.com/Tal-lev/SpawnLocation/issues) or [Hades Modding discord](https://discord.gg/KuMbyrN)
