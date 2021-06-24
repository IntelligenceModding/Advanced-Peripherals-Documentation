#Induction Matrix

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/06/Ultimate-Chemical-Tank.png){ align=right }
    Mod: Mekanism <br><br/>
    Block: Chemical Tank
[Chemical Tanks](https://wiki.aidancbrady.com/wiki/Chemical_Tanks) are used to store Gases. They can be placed as a block and can interact with Pressurized Tubes. They come in the four tiers, each tier being double the capacity and output rate of its predecessor. It can store the following gases:

<br><br/>
<br><br/>
<br><br/>

!!! info
    The functions which returns a value in percent, will return a number between 1-0. (50% would be 0.5)

##Functions
| Function | Returns | Description |
|----------|---------|-------------|
| getStored() | table | Returns the type and the amount of the chemical. |
| getCapacity() | int | Returns the capacity. |
| getFilledPercentage() | int | Returns the amount of the stored chemical in percent. |
| getNeeded() | int | Returns the amount of chemical that is needed to fill the tank. |

##Changelog/Trivia

0.6.6b
Added integration for the chemical tank
