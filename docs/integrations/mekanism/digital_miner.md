#Fission Reactor

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/05/Digital-Miner.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Digital Miner
The [Digital Miner](https://wiki.aidancbrady.com/wiki/Digital_Miner) is the scale mining machine of Mekanism. However, this machine is like no other as it "magically-teleports" mined blocks to its inventory.

<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>
<br><br/>

!!! warning
    You need to connect the peripheral proxy in the middle of the bottom. See:
    ![Miner](https://srendi.de/wp-content/uploads/2021/05/Bild_2021-05-31_141652.png)

!!! info
    Energy functions will always return in FE. If you want it in joules, multiplay the value with 2.5

    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getDalay() | int | Returns the delay between two mining operations. |
| getRadius() | int | Returns the radius. |
| setRadius(int radius) | | Set the radius. |
| getMinY() | int | Returns the minium mining high. |
| setMinY(int high) | | Set the minium mining high. |
| getMaxY() | int | Returns the maximum mining high. |
| setMaxY(int high) | | Set the maximum mining high. |
| toggleSilkTouch() | | Toggles the silk touch mode. |
| toggleInverse() | | Toggles the inverse mode. |
| toggleAutoEject() | | Toggles the auto eject mode. |
| toggleAutoPull() | | Toggles the auto pull mode. |
| start() | | Starts the miner. |
| stop() | | Stops the miner. |
| reset() | | Resets the miner. |
| getTotalEnergyFilledPercentage() | int | Returns the amount of the energy in percent. |

##Changelog/Trivia

0.6.5b
Added the digital miner integration
