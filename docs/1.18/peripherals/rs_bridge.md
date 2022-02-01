# RS Bridge

!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/RS-Bridge.png){ align=right }

The RS Bridge is able to interact with Refined Storage.
You can retrieve items, craft items, get all items as a list and more.

<br><br><br><br><br><br>

## Overview

| Peripheral Name | Interfaces with | Events | Introduced in |
| --------------- | --------------- | ------ | ------------- |
| rsBridge        | Refined Storage | Yes    | 0.3.6b        |

## Functions

Most functions uses a table to craft, export or import the item. You can define NBT values, the amount and the name of the item.
You can use the command `/advancedperipherals getHashItem` with an item in your hand to get the MD5 hash of the NBT tags of the item. A MD5 Hash can look like this `ae70053c97f877de546b0248b9ddf525`.

Example with exportItem:

```lua
local bridge = peripheral.find("rsBridge") -- Finds the peripheral if one is connected

if bridge == nil then error("rsBridge not found") end

bridge.exportItem({name="minecraft:enchanted_book", count=1, nbt="ae70053c97f877de546b0248b9ddf525"}, "UP")
-- Exports an protection I book to the chest above the me bridge.
```

| Function                                      | Returns | Description                                                                                                                                            |
| --------------------------------------------- | ------- | ------------------------------------------------------------------------------------------ |
| craftItem(table item)                         | table   | Crafts an item. |
| exportItem(table item, string directions)     | int     | Exports an item to a chest in the direction of the block. Valid directions are "top", "bottom", "left", "right", "back" and "front". |
| exportItemToPeripheral(table item, string chest)   | int     | Exports an item to a chest (every inventory tile entity should work) which is connected to the peripheral network. |
| getEnergyStorage()                            | int     | Returns the stored energy of the whole RS System. |
| getEnergyUsage()                              | int     | Returns the energy usage of the whole RS System. |
| getItem(table item)                           | table   | Returns a table with information of the item. |
| getPattern(table item)                        | table   | Returns the crafting pattern of this item. |
| getMaxEnergyStorage()                         | int     | Returns the maximum energy storage of the whole RS System. |
| importItem(table item, string directions)     | int     | Imports an item to the me system from the chest in the direction of the block. Valid directions are "top", "bottom", "left", "right", "back" and "front". |
| importItemFromPeripheral(table item, string chest) | int     | Imports an item to a chest(every inventory tile entity should work) which is connected to the peripheral network. |
| isItemCrafting(table item)                    | boolean | Returns true if a job for the item already exists. |
| isItemCraftable(table item)                   | boolean | Returns true if this item is craftable. |
| listCraftableItems()                          | table   | Returns list of all craftable items in the system.
| listCraftableFluids()                         | table   | Returns a list of all craftable fluids in the system.
| listFluids()                                  | table   | Returns all stored fluids. |
| listItems()                                   | table   | Returns all stored items. |
| getMaxItemDiskStorage()                       | int     | Returns the total amount of availabe item disk storage. |
| getMaxFluidDiskStorage()                      | int     | Returns the total amount of availabe fluid disk storage. |
| getMaxItemExternalStorage()                   | int     | Returns the total amount of availabe extern item storage. |
| getMaxFluidExternalStorage()                  | int     | Returns the total amount of availabe extern fluid storage. |

## Screenshots

Picture of the table from listItems()

![Picture](https://srendi.de/wp-content/uploads/2021/02/Bild_2021-02-05_234200.png)

## Example

I made a script to craft items, the computer will re-craft every item needed (a specified amount) in the RS system. Everything is adjustable.

Script: [Click here](https://gist.github.com/Seniorendi/26bd8ecaec400146f2e38790faceead8)

!!! bug
    This script does not work on version above 0.4b

Screenshot:
![Picture](https://srendi.de/wp-content/uploads/2021/02/Bild_2021-02-05_233915.png)

## Changelog/Trivia
Unreleased:
Ported RS Bridge to 1.18.1.
Added `listCraftableItems` and `listCraftableFluids` back.

0.7.3r
Added `getMaxItemDiskStorage`, `getMaxFluidDiskStorage`, `getMaxItemExternalStorage`, `getMaxFluidExternalStorage`, `getPattern` and `isItemCraftble`
Removed `listCraftableItems` and `listCraftableFluids`

0.7r
The RS Bridge does now use computercraft directions("top", "right", ...)
We also changed some function names

0.4b
Reworked the system of the RS Bridge, it has now more features and a new system for the item parameter.

0.3.9b
Added the functions import/exportItemFromChest

0.3.6b
Added the RS Bridge with a good amount of features.
