# ME Bridge
!!! picture inline end
    ![Header](https://intelligence-modding.de/wp-content/uploads/2021/04/ME-Bridge.png){ align=right }

The ME Bridge is able to interact with Applied Energistics 2.
You can retrieve items, craft items, get all items as a list and more. The ME Bridge uses one channel.

<br><br><br><br><br><br>

## Overview

| Peripheral Name | Interfaces with                 | Events | Introduced in |
| --------------- | ------------------------------- | ------ | ------------- |
| meBridge        | Applied Energistics 2 ME System | Yes    | 0.3b          |

## Functions

Most functions uses a table to craft, export or import the item. You can see how these item parameters exactly works at the [Item parameters of the ME/RS Bridge](/1.16/othersandutilities/item_parameter/) page.

```lua linenums="1" title="meBridgeExample.lua"
local bridge = peripheral.find("meBridge") -- (1)

if bridge == nil then error("meBridge not found") end

bridge.exportItem({name="minecraft:enchanted_book", count=1, nbt="ae70053c97f877de546b0248b9ddf525"}, "UP") -- (2)

craftableItems = bridge.listCraftableItems() -- (3)
for a = 1, #craftableItems do
    print(craftableItems[a].name) -- (4)
end

```

1.  Place a modem next to the me bridge and wrap it
2.  Exports an protection I book to the chest above the me bridge.
3.  Retrieve all craftable items
4.  Print the name of the craftable item

| Function                                      | Returns | Description                                                                                                                                            |
| --------------------------------------------- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------ |
| craftItem(table item)                         | table   | Crafts an item.                                                                                                                                        |
| exportItem(table item, string direction)     | int     | Exports an item to a chest in the direction of the block. Valid directions are "up", "down", "north", "west", "east" and "south".                      |
| exportItemToPeripheral(table item, string chest)   | int     | Exports an item to a chest (every inventory tile entity should work) which is connected to the peripheral network.                                     |
| getCraftingCPUs()                             | table   | Returns all connected crafting cpus.                                                                                                                   |
| getEnergyStorage()                            | int     | Returns the stored energy of the whole ME System.                                                                                                      |
| getEnergyUsage()                              | int     | Returns the energy usage of the whole ME System.                                                                                                       |
| getItem(table item)                           | table   | Returns a table with information of the item.                                                                                                          |
| getMaxEnergyStorage()                         | int     | Returns the maximum energy storage of the whole ME System.                                                                                             |
| importItem(table item, string direction)     | int     | Imports an item to the ME System from the chest in the direction of the block. Valid directions are "up", "down", "north", "west", "east" and "south". |
| importItemFromPeripheral(table item, string chest) | int     | Imports an item to a chest (every inventory tile entity should work) which is connected to the peripheral network.                                     |
| isItemCrafting(table item)                    | boolean | Returns true if a job for the item already exists.                                                                                                     |
| isItemCraftable(table item)                    | boolean | Returns true if the item is craftble |
| listCraftableFluid()                          | table   | Returns all craftable fluids.                                                                                                                          |
| listCraftableItems()                          | table   | Returns all craftable items.                                                                                                                           |
| listFluid()                                   | table   | Returns all stored fluids.                                                                                                                             |
| listItems()                                   | table   | Returns all stored items.                                                                                                                                     |

## Examples

### Automatic Autocrafting

This script automatic crafts items in a list.
You want 500 glass in your me system at all time? Add glass to the list and the script will craft it for you.
No need for level emitters or crafting cards!

Script:

You can find a instruction how to install the script [here](https://github.com/SirEndii/Lua-Projects/tree/master)

Install the installer and then run `installer install meautocraft`

Screenshot:
![Picture](/../../../assets/images/me_bridge/autocraft_example.png)

### ME Crafting CPUS

This script shows you some statistics about the me crafting cpus.

Script:

You can find a instruction how to install the script [here](https://github.com/SirEndii/Lua-Projects/tree/master)

Install the installer and then run `installer install mecpus`

Screenshot:
![Picture](/../../../assets/images/me_bridge/mecpus_example.png)


## Changelog/Trivia

0.7r
The ME Bridge does now use computercraft directions("top", "right", ...)
We also changed some function names

0.4b
Reworked the system of the ME Bridge, it has now more features and a new system for the item parameter.

0.3.9b
Added the functions import/exportItemFromChest

0.3b
Added the ME Bridge with a good amount of features.
