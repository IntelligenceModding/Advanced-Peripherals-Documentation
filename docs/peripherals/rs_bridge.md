---
comments: true
---

# RS Bridge

!!! picture inline end
    ![!Image of the RS Bridge block](../img/previews/rs_bridge.png){ align=right }

The RS Bridge is able to interact with Refined Storage.
You can retrieve items, craft items, get all items as a list and more.

!!! warning "Requirement"
    Requires the [Refined Storage](https://www.curseforge.com/minecraft/mc-mods/refined-storage) mod to be installed

<p class="picture-spacing" style="--ps:0.6rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| rsBridge        | Refined Storage | No         | 0.3.6b        |

</center>

---

!!! failure
    <center> <h3> You need to place the inventory/tank you want to use to export/import stuff next to the RS Bridge and **NOT** next to the computer! <h3> </center>

!!! tip
    You can use the command `/advancedperipherals getHashItem` with an item in your hand to get the MD5 hash of the NBT tags of the item. An MD5 Hash can look like this `ae70053c97f877de546b0248b9ddf525`.

## Functions

!!! info
    The item arguments(`item: table`) accepts our item filters, you can check the syntax of these filters [here](/../guides/filters).

### craftItem
```
craftItem(item: table) -> boolean
```

Tries to craft the provided `item`, returns true if it successfully starts crafting.

#### Item Properties

Check the [item filters guide](/../guides/filters) for more info!

| item             | Description                                 |
| ---------------- | ------------------------------------------- |
| name: `string`   | The registry name of the item or a tag      |
| count: `number?` | The amount of the item to craft             |
| nbt: `string?`   | NBT to match the item on                    |

**OR**  

| item                  | Description                                 |
| --------------------- | ------------------------------------------- |
| fingerprint: `string` | A unique fingerprint which identifies the<br>item to craft |
| count: `number?`      | The amount of the item to craft             |

---

### craftFluid
```
craftFluid(fluid: table, amount: number) -> boolean
```

Tries to craft the provided `fluid` of the given `amount`, returns true if it successfully starts crafting.

#### Fluid Properties

Check the [fluid filters guide](/../guides/filters) for more info!

| fluid             | Description                                 |
| ---------------- | ------------------------------------------- |
| name: `string`   | The registry name of the fluid or a tag      |
| count: `number?` | The amount of the fluid to craft             |
| nbt: `string?`   | NBT to match the fluid on                    |

**OR**  

| fluid                  | Description                                 |
| --------------------- | ------------------------------------------- |
| fingerprint: `string` | A unique fingerprint which identifies the<br>fluid to craft |
| count: `number?`      | The amount of the fluid to craft      

---

### getItem
```
getItem(item: table) -> table
```

Returns a table with information about the item type in the system.

#### Properties

| result                 | Description                                             |
| ---------------------- | ------------------------------------------------------- |
| name: `string`         | The registry name of the item                           |
| fingerprint: `string?` | A unique fingerprint which identifies the item to craft |
| amount: `number`       | The amount of the item in the system                    |
| displayName: `string`  | The display name for the item                           |
| isCraftable: `boolean` | Whether the item has a crafting pattern or not          |
| nbt: `string?`         | NBT to match the item on                                |
| tags: `table`          | A list of all of the item tags                          |

---

### importItem
```
importItem(item: table, direction: string) -> number
```

Imports an `item` from a container in the `direction` to the RS System.  
Returns the number of the `item` imported into the system.

!!! tip "Since version 0.7r"
    You can now use both relative (`right`, `left`, `front`, `back`, `top`, `bottom`) and cardinal (`north`, `south`, `east`, `west`, `up`, `down`) directions for the `direction` argument.  

```lua linenums="1"
local bridge = peripheral.find("rsBridge")

-- Imports 32 dirt from the container above into the system
bridge.importItem({name="minecraft:dirt", count=1}, "up")
```

---

### exportItem
```
exportItem(item: table, direction: string) -> number
```

Exports an `item` to a container in the `direction` from the RS bridge block.  
Returns the number of the `item` exported into the container.

```lua linenums="1"
local bridge = peripheral.find("rsBridge")

-- Exports 1 "Protection I" book into the container above
bridge.exportItem({name="minecraft:enchanted_book", count=1, nbt="ae70053c97f877de546b0248b9ddf525"}, "up")
```

---

### importItemFromPeripheral
```
importItemFromPeripheral(item: table, container: string) -> number
```

Similar to [`importItem()`](#importitem) it imports an `item` from a container which is connected to the peripheral network.  
`container` should be the exact name of the container peripheral on the network.  
Returns the number of the `item` imported from the container.

---

### exportItemToPeripheral
```
exportItemToPeripheral(item: table, container: string) -> number
```

Similar to [`exportItem()`](#exportitem) it exports an `item` to a container which is connected to the peripheral network.  
`container` should be the exact name of the container peripheral on the network.  
Returns the number of the `item` exported into the container.

---

### getMaxItemDiskStorage
```
getMaxItemDiskStorage() -> number
```

!!! success "Added in version 0.7.3r"

Returns the total amount of available item disk storage.

---

### getMaxFluidDiskStorage
```
getMaxItemDiskStorage() -> number
```

!!! success "Added in version 0.7.3r"

Returns the total amount of available fluid disk storage.

---

### getMaxItemExternalStorage
```
getMaxItemExternalStorage() -> number
```

!!! success "Added in version 0.7.3r"

Returns the total amount of available external item disk storage.

---

### getMaxFluidExternalStorage
```
getMaxFluidExternalStorage() -> number
```

!!! success "Added in version 0.7.3r"

Returns the total amount of available external fluid disk storage.

---

### getEnergyStorage
```
getEnergyStorage() -> number
```

Returns the stored energy of the whole RS System in FE.

---

### getMaxEnergyStorage
```
getMaxEnergyStorage() -> number
```

Returns the maximum energy storage capacity of the whole RS system in FE.

---

### getEnergyUsage
```
getEnergyUsage() -> number
```

Returns the energy usage of the whole RS System in FE/t.

---

### getPattern
```
getPattern(item: table) -> table | nil, string
```

!!! success "Added in version 0.7.3r"

Returns the crafting pattern for the `item` if one exists.

#### Properties

| pattern               | Description                                             |
| --------------------- | ------------------------------------------------------- |
| inputs: `table`       | A list of all the input items                           |
| outputs: `table`      | A list of all of the output items                       |
| byproducts: `table`   | A list of any byproduct items                           |
| processing: `boolean` | If the pattern is currently being used in crafting      |

---

### isItemCrafting
```
isItemCrafting(item: table) -> boolean
```

Returns true if a crafting job for the `item` exists.

---

### isItemCraftable
```
isItemCraftable(item: table) -> boolean
```

!!! success "Added in version 0.7.3r"

Returns true if the `item` is craftable.

---

### listCraftableItems
```
listCraftableItems() -> table
```

!!! danger "Does not exist in versions >=0.7.3r, <0.7.10b"

Returns a list of information about all craftable items

#### Properties

| item / fluid           | Description                                             |
| ---------------------- | ------------------------------------------------------- |
| name: `string`         | The registry name of the item                           |
| fingerprint: `string?` | A unique fingerprint which identifies the item to craft |
| amount: `number`       | The amount of the item in the system                    |
| displayName: `string`  | The display name for the item                           |
| isCraftable: `boolean` | Whether the item has a crafting pattern or not          |
| nbt: `string?`         | NBT to match the item on                                |
| tags: `table`          | A list of all of the item tags                          |

```lua linenums="1"
local bridge = peripheral.find("rsBridge")

-- print out all craftable items
craftableItems = bridge.listCraftableItems()
for _, item in pairs(craftableItems) do
    print(item.name)
end
```

---

### listCraftableFluids
```
listCraftableFluids() -> table
```

!!! danger "Does not exist in versions >=0.7.3r, <0.7.10b"

Returns a list of information about all craftable fluids

---

### listItems
```
listItems() -> table
```

Returns a list of information about all items in the RS System.

---

### listFluids
```
listFluids() -> table
```

Returns a list of information about all fluids in the RS System.

---

## Examples

### Autocrafting script

Here is a script to craft items, the computer will re-craft every item needed (a specified amount) in the RS system. Everything is adjustable.

[Click here](https://gist.github.com/Seniorendi/26bd8ecaec400146f2e38790faceead8) to view the script

!!! bug
    This script does not work on versions above 0.4b

---

## Changelog/Trivia

**0.7.10b**  
Ported RS Bridge to 1.18.1.
Added `listCraftableItems` and `listCraftableFluids` back.

**0.7.3r**  
Added `getMaxItemDiskStorage`, `getMaxFluidDiskStorage`, `getMaxItemExternalStorage`, `getMaxFluidExternalStorage`, `getPattern` and `isItemCraftable`.
Removed `listCraftableItems` and `listCraftableFluids`.

**0.7r**  
The RS Bridge does uses computercraft relative and cardinal directions.
We also changed some function names.

**0.4b**  
Reworked the system of the RS Bridge, it has now more features and a new system for the `item` parameter.

**0.3.9b**  
Added the `importItem` and `exportItem` from container functions.

**0.3.6b**  
Added the RS Bridge with a good amount of features.
