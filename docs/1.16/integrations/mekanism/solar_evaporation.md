#Solar Evaporation Plant

!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/10/mekanism_thermal_evaporation_valve.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Thermal Evaporation Valve
A [Solar Evaporation Plant](https://wiki.aidancbrady.com/wiki/Thermal_Evaporation_Plant) is a multiblock structure from mekanism to create brine or lithium.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiply the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getInputTank() | table | Returns the name and the amount of the stored fluid of the input tank(left). |
| getInputTank() | table | Returns the name and the amount of the stored fluid of the output tank(right). |
| getHeat() | int | Returns the amount heat. |
| getHeight() | int | Returns the height of the tower. |
| getProduction() | int | Returns the production rate of the tower. |


##Changelog/Trivia

0.7.1r
Added evaporation tower integration

0.6b
Added integration for Mekanism
