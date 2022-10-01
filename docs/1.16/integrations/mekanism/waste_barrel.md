#Waste Barrel

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/10/mekanism_radioactive_waste_barrel.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Waste Barrel
[Waste Barrels](https://wiki.aidancbrady.com/wiki/Radioactive_Waste_Barrel) are blocks from mekanism to store nuclear waste.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getStored() | int | Returns the amount of stored waste. |
| getCapacity() | string | Returns the capacity of the barrel. |
| getFilledPercentage | int | Returns the amount of waste in percent. |

##Changelog/Trivia

0.7.2r
Added waste barrel integration

0.6b
Added integration for Mekanism
