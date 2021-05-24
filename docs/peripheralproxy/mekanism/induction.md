#Induction Matrix

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/05/Induction-Port.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Induction Valve
The [Induction Matrix](https://wiki.aidancbrady.com/wiki/Induction_Matrix) is a multiblock structure from mekanism made to store large amounts of energy.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiplay the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getEnergy() | int | Returns the amount of stored energy. |
| getInputRate() | int | Returns the input rate per tick. |
| getOutputRate() | int | Returns the output rate per tick. |
| getEnergyNeeded() | int | Returns the amount of energy that is needed to fill the matrix. |
| getEnergyFilledPercentage() | int | Returns the amount of the energy in percent. |
| getTransferCap() | table | Returns the max transfer rate per tick. This is defined by the amount of [induction providers](https://wiki.aidancbrady.com/wiki/Induction_Providers) |
| getInstalledCells() | int | Returns the amount of the installed [induction cells](https://wiki.aidancbrady.com/wiki/Induction_Cells). |
| getInstalledProviders() | int | Returns the amount of the installed induction providers. |
| getMaxEnergy() | int | Returns the capacity of the induction matrix. |

##Changelog/Trivia

0.6b
Added integration for Mekanism
