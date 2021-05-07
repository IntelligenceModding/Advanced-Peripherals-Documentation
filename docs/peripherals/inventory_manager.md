#Inventory Manager
!!! picture inline end
    ![Header](https://srendi.de/wp-content/uploads/2021/04/Inventory-Manager.png){ align=right }

The Inventory Manager can communicate with the player's inventory. You need to right click a [Memory Card](https://docs.srendi.de/items/memory_card/) and put the card into the manager to use it.

!!! info
    Only one Memory Card can be linked by Inventory Manager.

##Functions

```lua
manager = peripheral.wrap("back") --Wraps the Inventory Manager

manager.addItemToPlayer("UP", 63, "minecraft:dirt") --Will add 63 dirt to the players inventory from the chest above

manager.removeItemFromPlayer("UP", 114, "minecraft:stone") --Will remove 114 stone blocks from the players inventory to the chest above

manager.removeItemFromPlayer("UP", 400) --Will remove 400 items from the players inventory to the chest above
```

| Function | Returns  | Description |
|------------|--------------|-------------|
| getOwner()  | string | Returns the owner of the memory card, nil if the memory card is empty. |
| addItemToPlayer(string inventoryBlock, int count\[, string item\])  | int amount | Adds an item to the player's inventory. `inventoryBlock` is the direction for the chest/inventory block. The Inventory Manager will add a random item to the player's inventory if the argument `item` is null. |
| removeItemFromPlayer(string inventoryBlock, int count\[, string item\]) | int amount | Removes an item from the player's inventory to the given inventory direction. `inventoryBlock` is the direction for the chest/inventory block. The Inventory Manager will remove a random item from the player's inventory if the argument `item` is null. |
| getItems() | table | Returns the content of the player's inventory. |

##Changelog/Trivia
0.5.2b
Fixed a bug, that the inventory manager does not drop the contents.

0.5b
Added the Inventory Manager and Memory Card
