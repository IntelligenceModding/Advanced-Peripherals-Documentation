#Industrial Turbine

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/05/Turbine-Valve.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Turbine Valve
The [Industrial Turbine](https://wiki.aidancbrady.com/wiki/Industrial_Turbine) is a multiblock structure from mekanism to generate energy with steam.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getSteam() | int | Returns the stored amount of the water. |
| getSteamCapacity() | int | Returns the capacity of the steam. |
| getSteamNeeded() | int | Returns the amount of steam that is needed to fill the tank. |
| getSteamFilledPercentage() | int | Returns the amount of the steam in percent. |
| getLastSteamInputRate() | int | Returns the amount of steam that is imported to the turbine. |
| getDumpingMode() | string | Returns the gas dumping mode. |
| getProductionRate() | int | Returns the energy production per tick. |
| getMaxProduction() | int | Returns the max possible energy production per tic. |
| getFlowRate() | int | Returns the current flow rate per tick. |
| getMaxFlowRate() | int | Returns the current max possible flow rate per tick. |
| getMaxWaterOutput() | int | Returns the max possible water output. |
| getDispersers() | int | Returns the amount of dispersers. |
| getVents() | int | Returns the amount of vents. |
| getBlades() | int | Returns the amount of blades. |
| getCoils() | int | Returns the amount of coils. |
| getCondensers() | int | Returns the amount of condensers. |

##Changelog/Trivia

0.6b
Added integration for Mekanism
