#Fluid Tank

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/10/mekanism_creative_fluid_tank_29.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Fluid Tanks
[Fluid Tanks](https://wiki.aidancbrady.com/wiki/Fluid_Tanks) are tanks from mekanism to store fluids, obviously.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getStored() | table | Returns a table with the amount and the name of the stored type. |
| getTier() | string | Returns the tier of the tank(Basic, Advanced, ...). |
| getCapacity() | int | Returns the capacity of the tank. |
| getFilledPercentage | int | Returns the amount in percent. |
| getNeeded() | int | Returns the amount that is needed to fill the tank. |

##Changelog/Trivia

0.7.2r
Added fluid tank integration

0.6b
Added integration for Mekanism
