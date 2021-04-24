#RS Bridge
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/RS-Bridge.png){ align=right }

The Rs Bridge is able to interact with Refined Storage. You can retrieve items, craft items, get all items as a list and more. The Rs Bridge uses one channel.

##Events

No Events

##Functions

The most functions uses a table to craft, export or import the item. You can define NBT values, the amount and the name of the item.
You can use the command `/advancedperipherals getHashItem` with an item in your hand to get the MD5 hash of the NBT tags of the item. The MD5 hash for the protection I book is `ae70053c97f877de546b0248b9ddf525`.

Example with exportItem:

```lua
bridge = peripheral.wrap("rsBridge_0") -- Define the peripheral

bridge.exportItem({name="minecraft:enchanted_book", count=1, nbt="ae70053c97f877de546b0248b9ddf525"}, "UP")
-- Exports an protection I book to the chest above the me bridge.
```

| Function | Returns | Description |
|----------|---------|-------------|
| listCraftableFluids() | table | Returns all craftable fluids. |
| listFluids()	| table | Returns all stored fluids.
| listCraftableItems() | table |	Returns all craftable items. |
| listItems() |	table | Returns all items. |
| isItemCrafting(table item) | boolean | Returns true if already a job for the item exists. |
| getItem(table item) | table | Returns a table with information of the item. |
| getEnergyUsage() | int |	Returns the energy usage of the whole RS System. |
| getEnergyStorage() | int |	Returns the stored energy of the whole RS System. |
| getMaxEnergyStorage() |	int | Returns the maximum energy storage of the whole RS System. |
| craftItem(table item)	| table | Crafts an item. |
| exportItem(table item, string directions) |	int | exports an item to a chest in the direction of the block. Valid directions are "up", "down", "north", "west", "east" and "south" |
| importItem(table item, string directions) |	int | imports an item to the me system from the chest in the direction of the block. Valid directions are "up", "down", "north", "west", "east" and "south" |
| exportItemToChest(table item, string chest) |	int |	exports an item to a chest(Every inventory tile entity should work) which is connected to the peripheral network. |
| importItemFromChest(table item, string chest) |	int |	imports an item to a chest(Every inventory tile entity should work) which is connected to the peripheral network. |

##Screenshots

Picture of the table from listItems()

![Picture](https://srendi.de/wp-content/uploads/2021/02/Bild_2021-02-05_234200.png)

Picture of the table from listCraftableItems()

![Picture](https://srendi.de/wp-content/uploads/2021/02/Bild_2021-02-05_234048.png)


##Example

I made a script to craft items, the computer will re-craft every item needed(a specified amount) in the RS system. Everything is adjustable.

Script: [Click here](https://gist.github.com/Seniorendi/26bd8ecaec400146f2e38790faceead8)

!!! bug
    This script does not work on version above 0.4b

Screenshot:
![Picture](https://srendi.de/wp-content/uploads/2021/02/Bild_2021-02-05_233915.png)

##Changelog/Trivia

0.4b
Reworked the system of the RS Bridge, it has now more features and a new system for the item parameter.

0.3.9b
Added the functions import/exportItemFromChest

0.3.6b
Added the RS Bridge with a good amount of features.
