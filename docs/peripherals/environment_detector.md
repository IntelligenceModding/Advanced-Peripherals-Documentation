#Environment Detector
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/03/Environment-Detector-e1617223696336.png){ align=right }

The environment detector is able to recieve informations from your environment like the current time, the current moon phase,
the light level of the block and many more.

#Events
No Events


#Functions

List of moon phases:

* 0 Full moon
* 1 Waning gibbous
* 2 Third quarter
* 3 Wanning crescent
* 4 New moon
* 5 Waxing crescent
* 6 First quarter
* 7 Waxing gibbous

The environment detector is easy to use. Wrap the peripheral and use one of the functions.

``` lua
detector = peripheral.wrap("right") --Defines the detector on the right

--Prints some information to the terminal of the computer
print("Biome ".. detector.getBiome())
print("Current moon phase ".. detector.getMoonName())
print("Is raining ".. detector.isRaining())
print("Current dimension ".. detector.getDimensionName())

```

| Function | Returns | Description |
|----------|---------|-------------|
|getBiome() |	String | Returns the biome the block is in |
|getSkyLightLevel()	| int |	Returns the sky light level above the block |
|getBlockLightLevel() |	int |	Returns the block light level of the block(can be manipulate with light sources) |
|getDayLightLevel()	| int |	Returns the day light level of the current world from 0 to 15(like the day light sensor) |
|getTime() (WIP) | int | Returns the daytime of the current world |
|getDimensionProvider()	| string | Returns the provider of the dimension(ex. minecraft) |
|getDimensionName() |	string | Returns the name of the dimension(ex. the_nether) |
|getDimensionPaN() | string |	Returns the name with the provider of the dimension(ex. minecraft:overworld) |
|getMoonName() | string |	Returns the current moon phase as name(ex. Third quarter) |
|getMoonId() | int | Returns the current moon phase as id(ex. 2) |
|isSlimeChunk() | boolean |	Returns true if the chunk is a slime chunk |
|isDimension(string dimension) | boolean | is dimension	Returns true if the current dimension matches the first parameter |
|isMoon(int moonphase) | boolean | Returns true if the current moon phase machtes the first parameter(ex. 0 = Full moon) |
|isRaining() | boolean | Returns true if it's raining |
|isThunder() | boolean | Returns true if it's thundering |
|isSunny() | boolean | Returns true if it's sunny |
|listDimensions() |	table |	Returns a table with all registered dimensions(also modded dimensions) |

#Changelog/Trivia

0.3.3b
Added much more functions to the environment detector. The environment detector was like an useless block before this update.

0.1b
Added the block. It was the second feature of the mod.
