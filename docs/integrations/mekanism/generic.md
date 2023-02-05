<h4><a href="../">Go Back</a></h4>

# Generic Mekanism Machine

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/05/Steel-Casing.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Any energy supporting block
This proxy integration will add a integration for every energy supporting machine from Mekanism.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getTotalEnergy() | int | Returns the amount of stored energy. |
| getTotalEnergyNeeded() | int | Returns the amount of energy that is needed to fill the block. |
| getTotalEnergyFilledPercentage() | int | Returns the amount of the energy in percent. |
| getTotalMaxEnergy() | int | Returns the capacity of the machine. |

##Changelog/Trivia

0.6b
Added integration for Mekanism
