#Fission Reactor

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/05/Fission-Reactor-Logic-Adapter.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Fission Reactor Logic Adapter
The [Fission Reactor](https://wiki.aidancbrady.com/wiki/Fission_Reactor) is a reactor from Mekanism.

<br><br/>
<br><br/>
<br><br/>

!!! info
    Energy functions will always return in FE. If you want it in joules, multiplay the value with 2.5

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
| getFuel() | int | Returns the amount of fuel. |
| getFuelCapacity() | int | Returns capacity of the fuel tank. |
| getFuelNeeded() | int | Returns the amount of fuel that is needed to fill the tank. |
| getFuelFilledPercentage() | int | Returns the amount of the fuel in percent. |
| getWaste() | int | Returns the amount of waste. |
| getWasteCapacity() | int | Returns capacity of the waste tank. |
| getWasteNeeded() | int | Returns the waste that is needed to fill the tank. |
| getWasteFilledPercentage() | int | Returns the amount of the waste in percent. |
| getStatus() | booleans | Returns true if the reactor is active false if not. |
| scram() | | Deactivates the reactor. |
| activate() | | Activates the reactor. |
| getBurnRate() | int | Returns the burn rate of the reactor that is set. |
| setBurnRate(int rate) | | Set the burn rate. |
| getActualBurnRate() | int | Actual burn rate as it may be lower if say there is not enough fuel			. |
| getMaxBurnRate() | int | Returns the max burn rate. |
| getDamagePercent() | int | Returns the damage in percent. |
| getHeatingRate() | int | Returns the heating rate. |
| getEnvironmentalLoss() | int | Returns the environmental loss. |
| getTemperature() | int | Returns the temperature of the reactor. |
| getHeatCapacity() | int | Returns the max temperature. |
| getFuelAssemblies() | int | Returns the amount of fuel assemblies. |
| getFuelSurfaceArea() | int | Returns the surface area of the fuel. |
| getBoilEfficiency() | int | |
| getActualBurnRate() | int | Actual burn rate as it may be lower if say there is not enough fuel			. |
| getMaxBurnRate() | int | Returns the max burn rate. |
| getDamagePercent() | int | Returns the damage in percent. |
| getHeatingRate() | int | Returns the heating rate. |
| getEnvironmentalLoss() | int | Returns the environmental loss. | getTemperature

##Changelog/Trivia

0.6b
Added integration for Mekanism
