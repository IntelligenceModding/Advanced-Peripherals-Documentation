---
comments: true
---

# Inventory Manager

!!! picture inline end
    ![!Image of the Inventory Manager block](../img/previews/inventory_manager.png){ align=right }

The Inventory Manager can communicate with the player's inventory. You need to assign yourself to a [Memory Card](../items/memory_card.md) and put the card into the manager to use it.

!!! note
    Only one Memory Card can be used per Inventory Manager.

<p class="picture-spacing" style="--ps:0.6rem;"></p>

---

<center>

| Peripheral Name  | Interfaces with  | Has events | Introduced in |
| ---------------- | ---------------- | ---------- | ------------- |
| inventoryManager | Player Inventory | No         | 0.5b          |

</center>

---

!!! failure
    <center> <h3> You need to place the inventory you want to use next to the inventory manager and **NOT** next to the computer! <h3> </center>

## Functions

### addItemToPlayer
```
addItemToPlayer(direction: string, item: table) -> number
```

Adds an item to the player's inventory and returns the amount of the item added.
The `direction` is the direction of the container relative to the peripheral.  
The `slot` is the slot to take items from in the container.
The Inventory Manager will add a random item to the player's inventory if the `item` or `slot` argument are not provided.

!!! tip "Since version 0.7r"
    You can now use both relative (`right`, `left`, `front`, `back`, `top`, `bottom`) and cardinal (`north`, `south`, `east`, `west`, `up`, `down`) directions for the `direction` argument.  

```lua linenums="1"
local manager = peripheral.find("inventoryManager")

-- Add 32 cobblestone to the players offhand slot from the block above
manager.addItemToPlayer("up", {name="minecraft:cobblestone", toSlot=36, count=32})
```

---

### removeItemFromPlayer
```
removeItemFromPlayer(direction: string item: table) -> number
```

Removes an item from the player's inventory and returns the amount of the item removed.
The `direction` is the direction of the container relative to the peripheral to put the item into.  
The `slot` is the slot to take items from in the player's inventory.
The Inventory Manager will remove a random item from the player's inventory if the `item` or `slot` argument are not provided.
The `slot` and `count` are overwritten if `fromSlot` or `count` is specified in the `item` filter
if the `item` argument is empty, the manager will move any item.

```lua linenums="1"
local manager = peripheral.find("inventoryManager")

-- Remove up to 5 of the item in slot 1 of the player's inventory
-- and place it in the block above
manager.removeItemFromPlayer("up", {name="minecraft:cobblestone", toSlot=3, fromSlot=1, count=5})
```

---

### getArmor
```
getArmor() -> table
```

Returns a list of the player's current armor slots

#### Item Properties

| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| displayName: `string`  | The item's display name                 |
| slot: `number`         | The slot that the item stack is in      |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

```lua linenums="1"
local manager = peripheral.find("inventoryManager")

local armor = manager.getArmor()
print("First armor piece is: " .. armor[1].displayName)
```

---

### getItems
```
getItems() -> table
```

Returns the contents of the player's inventory as a list of items

#### Item Properties

| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| slot: `number`         | The slot that the item stack is in      |
| displayName: `string`  | The item's display name                 |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

---

### getOwner
```
getOwner() -> string | nil
```

Returns the username of the owner of the memory card in the manager or nil if there is no memory card or owner.

---

### isPlayerEquipped
```
isPlayerEquipped() -> boolean
```

Returns true if the player is wearing atleast one piece of armor.

---

### isWearing
```
isWearing(slot: number) -> boolean
```

Returns true if the player is wearing a armor piece on the given slot.  
Slots: `103`(Helmet) - `100`(Boots).

---

### getItemInHand
```
getItemInHand() -> table
```

!!! success "Added in version 0.7.4r"

Returns the item in the player's main hand.

#### Item Properties

| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| displayName: `string`  | The item's display name                 |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

---

### getItemInOffHand
```
getItemInOffHand() -> table
```

!!! success "Added in version 0.7.4r"

Returns the item in the player's off hand.

#### Item Properties

| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| displayName: `string`  | The item's display name                 |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

---

### getFreeSlot
```
getFreeSlot() -> number
```

!!! success "Added in version 0.7.4r"

Returns the next free slot in the player's inventory. Or -1 if their inventory is full.

---

### isSpaceAvailable
```
isSpaceAvailable() -> boolean
```

!!! success "Added in version 0.7.4r"

Returns true if space is available in the player's inventory.

---

### getEmptySpace
```
getEmptySpace() -> number
```

!!! success "Added in version 0.7.4r"

Returns the number of empty slots in the player's inventory.

---

## Changelog/Trivia

**0.7.4r**  
Added `getItemInHand`, `getItemInOffHand`, `getFreeSlot`, `isSpaceAvailable` and `getEmptySpace` to the inventory manager.  
Added support for armor items, you can use the slots `100 - 103` to access armor items.

**0.7r**  
Added the `slot` parameter.  
Also changed the direction parameter to computercraft directions.

**0.5.2b**  
Fixed the bug where the inventory manager does not drop its contents.

**0.5b**  
Added the Inventory Manager and Memory Card
