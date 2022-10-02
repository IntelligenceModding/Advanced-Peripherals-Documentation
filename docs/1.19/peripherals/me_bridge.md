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

## Events

!!! warning
The crafting event does not work everytime. The crafting event is also barely tested.

| Event Name | Parameter One | Parameter Two                 | Description                                              |
| ---------- | ------------- | ----------------------------- | -------------------------------------------------------- |
| crafting   | "crafting"    | table job informations or nil | Fires when a crafting job is done, cancelled or aborted. |

## Functions

Most functions uses a table to craft, export or import the item. You can see how these item parameters exactly works at the [Item parameters of the ME/RS Bridge](/1.18/othersandutilities/item_parameter/) page.

Example with exportItem:

```lua
local bridge = peripheral.find("meBridge") -- Finds the peripheral if one is connected

if bridge == nil then error("meBridge not found") end

bridge.exportItem({name="minecraft:enchanted_book", count=1, nbt="ae70053c97f877de546b0248b9ddf525"}, "UP")
-- Exports an protection I book to the chest above the me bridge.
```

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

## Screenshots

Picture of the table from listItems()

![Picture](https://intelligence-modding.de/wp-content/uploads/2021/02/Bild_2021-02-05_231136.png)

Picture of the table from getCraftingCPUs()

![Picture](https://intelligence-modding.de/wp-content/uploads/2021/02/Bild_2021-02-05_231231.png)

Picture of the table from craftItem()

![Picture](https://intelligence-modding.de/wp-content/uploads/2021/02/Bild_2021-02-05_233210.png)

## Example

I made a script to craft items, the computer will re-craft every item needed (a specified amount) in the ME system. Everything is adjustable.

Script: [Click here](https://gist.github.com/Seniorendi/dbbe08502ce51d59173c3b5e119d3558)

!!! bug
    This script does not work on version above 0.4b

Screenshot:
![Picture](https://intelligence-modding.de/wp-content/uploads/2021/02/Bild_2021-02-05_233338.png)

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
