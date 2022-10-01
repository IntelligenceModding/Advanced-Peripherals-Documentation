#Dynamic Tank

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/10/mekanism_dynamic_valve.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Dynamic Tank Valve
The [Dynamic tank](https://wiki.aidancbrady.com/wiki/Dynamic_Tank) is a multiblock structure from mekanism to store fluids, gases and more.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getStored() | table | Returns a table with the amount, the name of the stored type and the current type(fluid, gas, ...). |
| getCapacity() | int | Returns the capacity of the tank. |
| getFilledPercentage | int | Returns the amount in percent. |
| getNeeded() | int | Returns the amount that is needed to fill the tank. |
| isEmpty() | boolean | Returns true if the tank is empty. |


##Changelog/Trivia

0.7.3r
Added dynamic tank integration

0.6b
Added integration for Mekanism
