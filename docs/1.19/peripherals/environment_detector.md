# Environment Detector

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Environment-Detector.png){ align=right }

The Environment Detector provides current information from the environment like the current time, the current moon phase,
the light level of the block and many more.

<br><br><br><br><br><br>

## Overview

| Peripheral Name     | Interfaces with | Events | Introduced in |
| ------------------- | --------------- | ------ | ------------- |
| environmentDetector | World           | No     | 0.1b          |

## Functions

List of moon phases:

-   0 Full moon
-   1 Waning gibbous
-   2 Third quarter
-   3 Wanning crescent
-   4 New moon
-   5 Waxing crescent
-   6 First quarter
-   7 Waxing gibbous

The Environment Detector is easy to use. Wrap the peripheral and use one of the functions.

```lua
local detector = peripheral.find("environmentDetector") -- Finds the peripheral if one is connected

if detector == nil then error("environmentDetector not found") end

--Prints some information to the terminal of the computer
print("Biome ".. detector.getBiome())
print("Current moon phase ".. detector.getMoonName())
print("Is raining ".. detector.isRaining())
print("Current dimension ".. detector.getDimensionName())

```

| Function                      | Returns | Description                                                                                |
| ----------------------------- | ------- | ------------------------------------------------------------------------------------------ |
| getBiome()                    | string  | Returns the biome the block is in.                                                         |
| getBlockLightLevel()          | int     | Returns the light level of the block (can be manipulated with light sources).              |
| getDayLightLevel()            | int     | Returns the day light level of the current world from 0 to 15 (like the day light sensor). |
| getDimension()                | string  | Returns the resource name of the dimension (ex. "minecraft:nether" or "galacticraft:moon").|
| getMoonId()                   | int     | Returns the current moon phase as id (ex. 2).                                              |
| getMoonName()                 | string  | Returns the current moon phase as name (ex. Third quarter).                                |
| getSkyLightLevel()            | int     | Returns the sky light level above the block.                                               |
| getTime() (WIP)               | int     | Returns the daytime of the current world.                                                  |
| isDimension(string dimension) | boolean | Returns true if the current dimension matches the first parameter.                         |
| isMoon(int moonphase)         | boolean | Returns true if the current moon phase matches the first parameter (ex. 0 = Full moon).    |
| isRaining()                   | boolean | Returns true if it's raining.                                                              |
| isSlimeChunk()                | boolean | Returns true if the chunk is a slime chunk.                                                |
| isSunny()                     | boolean | Returns true if it's sunny.                                                                |
| isThunder()                   | boolean | Returns true if it's thundering.                                                           |
| listDimensions()              | table   | Returns a table with all registered dimensions(also modded dimensions).                    |

## Changelog/Trivia

0.6.5b
Added getRadiationRaw

0.6.1b
Added getRadiation

0.3.3b
Added much more functions to the environment detector. The environment detector was a useless block before this update.

0.1b
Added the block. It was the second feature of the mod.
