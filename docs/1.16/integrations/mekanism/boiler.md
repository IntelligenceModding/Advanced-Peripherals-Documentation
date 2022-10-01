#Boiler

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/05/Boiler-Valve.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Boiler Valve
The [Themoelectric Boiler](https://wiki.aidancbrady.com/wiki/Thermoelectric_Boiler) is a multiblock structure from mekanism to generate steam or other gases.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getCoolant() | table | Returns the type of coolant and the amount. |
| getCoolantCapacity() | int | Returns capacity of the coolant tank. |
| getCoolantNeeded() | int | Returns the coolant that is needed the tank is full. |
| getCoolantFilledPercentage() | int | Returns the amount of the coolant in percent. |
| getHeatedCoolant() | table | Returns the type of heated coolant and the amount. |
| getHeatedCoolantCapacity() | int | Returns capacity of the heated coolant tank. |
| getHeatedCoolantNeeded() | int | Returns the amount of heated coolant that is needed to fill the tank. |
| getHeatedCoolantFilledPercentage() | int | Returns the amount of the heated coolant in percent. |
| getWater() | int | Returns the amount of the water. |
| getWaterCapacity() | int | Returns the capacity of the water. |
| getWaterNeeded() | int | Returns the amount of water that is needed to fill the tank. |
| getWaterFilledPercentage() | int | Returns the amount of the water in percent. |
| getSteam() | int | Returns the stored amount of the water. |
| getSteamCapacity() | int | Returns the capacity of the steam. |
| getSteamNeeded() | int | Returns the amount of steam that is needed to fill the tank. |
| getSteamFilledPercentage() | int | Returns the amount of the steam in percent. |
| getEnvironmentalLoss() | int | Returns the environmental loss. |
| getTemperature() | int | Returns the temperature of the reactor. |
| getBoilRate() | int | Returns the boil rate. |
| getMaxBoilRate() | int | Returns the max boil rate. |
| getSuperheaters() | int | Returns the amount of superheating elements. |
| getBoilCapacity() | int | Returns the capacity of the boiler. |

##Changelog/Trivia

0.6b
Added integration for Mekanism
