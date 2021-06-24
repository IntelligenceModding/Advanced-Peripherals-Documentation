#Fusion Reactor

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/05/Fusion-Reactor-Logic-Adapter.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Fusion Reactor Logic Adapter
The [Fusion Reactor](https://wiki.aidancbrady.com/wiki/Fusion_Reactor) is a reactor from Mekanism.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiplay the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getHohlraum() | table | Returns the item stack of the hohlraum. |
| getPlasmaTemperature() | int | Returns the temperature of the plasma. |
| getCaseTemperature() | int | Returns the temperature of the case. |
| getWater() | int | Returns the amount of the water. |
| getWaterCapacity() | int | Returns the capacity of the water. |
| getWaterNeeded() | int | Returns the amount of water that is needed to fill the tank. |
| getWaterFilledPercentage() | int | Returns the amount of the water in percent. |
| getSteam() | int | Returns the stored amount of the water. |
| getSteamCapacity() | int | Returns the capacity of the steam. |
| getSteamNeeded() | int | Returns the amount of steam that is needed to fill the tank. |
| getSteamFilledPercentage() | int | Returns the amount of the steam in percent. |
| getTritium() | int | Returns the amount of the tritium. |
| getTritiumCapacity() | int | Returns the capacity of the tritium. |
| getTritiumNeeded() | int | Returns the amount of tritium that is needed to fill the tank. |
| getTritiumFilledPercentage() | int | Returns the amount of the tritium in percent. |
| getDeuterium() | int | Returns the stored amount of the deuterium. |
| getDeuteriumCapacity() | int | Returns the capacity of the deuterium. |
| getDeuteriumNeeded() | int | Returns the amount of deuterium that is needed to fill the tank. |
| getDeuteriumFilledPercentage() | int | Returns the amount of the deuterium in percent. |
| getDTFuel() | int | Returns the stored amount of the dt-fuel. |
| getDTFuelCapacity() | int | Returns the capacity of the dt-fuel. |
| getDTFuelNeeded() | int | Returns the amount of dt-fuel that is needed to fill the tank. |
| getDTFuelFilledPercentage() | int | Returns the amount of the dt-fuel in percent. |
| getProduction() | int | Returns the energy production. |
| getInjectionRate() | int | Returns the injection rate. |
| setInjectionRate(int rate) | | Set the injection rate. |
| getPassiveGeneration(boolean isWaterCooled) | int | Returns the passive generation. |

##Changelog/Trivia

0.6b
Added integration for Mekanism
