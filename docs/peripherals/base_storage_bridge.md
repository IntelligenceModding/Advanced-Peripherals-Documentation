# Storage System Functions

Starting from AP 0.8, the ME and RS Bridge both now share the same functionality along with the new crafting system.  
The following functions can be used for both the ME and RS Bridge.

!!! tip
    You can use the command `/advancedperipherals getHashItem` with an item in your hand to get the hash of the NBT tags
    of the item. An hash can look like this `5d955c751ee14ae5`.

## Common Functions

!!! info
    The item arguments(`filter: table`) accepts our item/fluid/chemical filters, you can check the syntax of these
    filters [here](../guides/filters.md).

### isConnected

```
isConnected() -> boolean
```

Returns true if the block is currently connected to a grid

---

### isOnline

```
isOnline() -> boolean
```

Returns true if the grid is currently online and available

---

### getItem

```
getItem(filter: table) -> table | (nil, string)
```

Returns the first item that matches the filter. Or nil with a debug message if none could be found

---

### getFluid

```
getFluid(filter: table) -> table | (nil, string)
```

Returns the first fluid that matches the filter. Or nil with a debug message if none could be found

---

### getChemical

```
getChemical(filter: table) -> table | (nil, string)
```

Returns the first mekanism chemical that matches the filter. Or nil with a debug message if none could be found

---

### getItems

```
getItems(filter: table) -> table | (nil, string)
```

Returns every item that matches the filter or an empty table if none could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getFluids

```
getFluids(filter: table) -> table | (nil, string)
```

Returns every fluid that matches the filter or an empty table if none could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getChemicals

```
getChemicals(filter: table) -> table | (nil, string)
```

Returns every mekanism chemical that matches the filter or an empty table if none could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getCraftableItems

```
getCraftableItems(filter: table) -> table | (nil, string)
```

Returns every craftable item that matches the filter even if there is currently no item stored or an empty table if none
could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getCraftableFluids

```
getCraftableFluids(filter: table) -> table | (nil, string)
```

Returns every craftable fluid that matches the filter even if there is currently no fluid stored or an empty table if
none could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getCraftableChemicals

```
getCraftableChemicals(filter: table) -> table | (nil, string)
```

Returns every craftable mekanism chemical that matches the filter even if there is currently no chemical stored or an
empty table if none could be found.
An empty filter can be provided to get every resource.
Returns nil if there was an issue parsing your table.

---

### getCells

```
getCells() -> table | (nil, string)
```

Returns every storage cell in the drives of the grid. Supports standard RS/ME cells and some third party cells.
Please open a feature request if some custom addon cells do not work

---

### getDrives

```
getCells() -> table | (nil, string)
```

Returns every drive connected to the system with the cells in it.

---

## Importing/Exporting functions

It will try to parse the given string `target` as a cardinal or relative direction about the peripheral if starts with `@` (e.g. `@up`, `@east`).
If that fails, it tries to search for a peripheral on the CC network which exposes an item handler or capability.

### importItem

```
importItem(target: string, filter: table) -> table | (nil, string)
```

Imports an item from the specified target. The filter can be empty to import every item.
One call imports 64 of resources by default, can be set using the count filter key.

---

### exportItem

```
exportItem(target: string, filter: table) -> table | (nil, string)
```

Exports an item to the specified target. The filter can be empty to export every item.
One call exports 64 of resources by default, can be set using the count filter key.

---

### importFluid

```
importFluid(filter: table, target: string) -> table | (nil, string)
```

Imports a fluid from the specified target. The filter can be empty to import every fluid.
One call imports 1000mB of resources by default, can be set using the count filter key.

---

### exportFluid

```
exportFluid(filter: table, target: string) -> table | (nil, string)
```

Exports a fluid to the specified target. The filter can be empty to export every fluid.
One call exports 1000mB of resources by default, can be set using the count filter key.

---

### importChemical

```
importChemical(filter: table, target: string) -> table | (nil, string)
```

Imports a mekanism chemical from the specified target. The filter can be empty to import every chemical.
One call imports 1000mB of resources by default, can be set using the count filter key.

---

### exportChemical

```
exportChemical(filter: table, target: string) -> table | (nil, string)
```

Exports a mekanism chemical to the specified target. The filter can be empty to export every chemical.
One call exports 1000Mb of resources by default, can be set using the count filter key.

---

## Energy Related Functions

### getStoredEnergy

```
getStoredEnergy() -> int
```

Returns the stored energy in the grid.

---

### getEnergyCapacity

```
getEnergyCapacity() -> int
```

Returns the maximum energy capacity of the grid

---

### getEnergyUsage

```
getEnergyUsage() -> int
```

Returns the energy usage of the grid

---

!!! note
    Currently only supported by the ME Bridge

### getAvgPowerInjection

```
getAvgPowerInjection() -> int
```

Returns the average power that is injected into the system

---

## Storage Related Functions

!!! warning
    The RS Bridge currently does not support Any external storage function, we will hopefully be able to support them when
    RS2 is out of beta.

### getMaxExternItemStorage

```
getMaxExternItemStorage() -> number
```

Returns the total amount of available external item storage in stacks.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available storage in items even with the byte system from AE2

---

### getMaxExternItemCount

```
getMaxExternItemCount() -> int
```

Returns the total amount of available external item storage in item counts.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available storage in items even with the byte system from AE2

---

### getMaxExternFluidStorage

```
getMaxExternFluidStorage() -> int
```

Returns the total amount of available external fluid storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available storage in millibuckets even with the byte system from AE2

---

### getMaxExternChemicalStorage

```
getMaxExternChemicalStorage() -> int
```

Returns the total amount of available external mekanism chemical storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available storage in millibuckets even with the byte system from AE2

---

### getMaxItemStorage

```
getMaxItemStorage() -> int
```

Returns the total amount of available internal item storage.
This function returns the available storage in items for RS and in bytes for AE2

---

### getMaxFluidStorage

```
getMaxFluidStorage() -> int
```

Returns the total amount of available internal fluid storage.
This function returns the available storage in millibuckets for RS and in bytes for AE2

---

### getMaxChemicalStorage

```
getMaxChemicalStorage() -> int
```

Returns the total amount of available internal mekanism chemical storage.
This function returns the available storage in millibuckets for RS and in bytes for AE2

---

### getUsedExternItemStorage

```
getUsedExternItemStorage() -> number
```

Returns the total amount of used external item storage in stacks.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the used storage in items even with the byte system from AE2

---

### getUsedExternItemCount

```
getUsedExternItemCount() -> int
```

Returns the total amount of used external item storage in item counts.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the used storage in items even with the byte system from AE2

---

### getUsedExternFluidStorage

```
getUsedExternFluidStorage() -> int
```

Returns the total amount of used external fluid storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the used storage in millibuckets even with the byte system from AE2

---

### getUsedExternChemicalStorage

```
getUsedExternChemicalStorage() -> int
```

Returns the total amount of used external mekanism chemical storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the used storage in millibuckets even with the byte system from AE2

---

### getUsedItemStorage

```
getUsedItemStorage() -> int
```

Returns the total amount of used internal item storage.
This function returns the used storage in items for RS and in bytes for AE2

---

### getUsedFluidStorage

```
getUsedFluidStorage() -> int
```

Returns the total amount of used internal fluid storage.
This function returns the used storage in millibuckets for RS and in bytes for AE2

---

### getUsedChemicalStorage

```
getUsedChemicalStorage() -> int
```

Returns the total amount of used internal mekanism chemical storage.
This function returns the used storage in millibuckets for RS and in bytes for AE2

---

### getAvailableExternItemStorage

```
getAvailableExternItemStorage() -> number
```

Returns the total amount of available and not used external item storage in stacks.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available and not used storage in items even with the byte system from AE2

---

### getAvailableExternItemCount

```
getAvailableExternItemCount() -> int
```

Returns the total amount of available and not used external item storage in item counts.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available and not used storage in items even with the byte system from AE2

---

### getAvailableExternFluidStorage

```
getAvailableExternFluidStorage() -> int
```

Returns the total amount of available and not used external fluid storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available and not used storage in millibuckets even with the byte system from AE2

---

### getAvailableExternChemicalStorage

```
getAvailableExternChemicalStorage() -> int
```

Returns the total amount of available and not used external mekanism chemical storage.
External storage is available storage by either RS2's external storage bus or AE2's storage bus
This function returns the available and not used storage in millibuckets even with the byte system from AE2

---

### getAvailableItemStorage

```
getAvailableItemStorage() -> int
```

Returns the total amount of available and not used internal item storage.
This function returns the available and not used storage in items for RS and in bytes for AE2

---

### getAvailableFluidStorage

```
getAvailableFluidStorage() -> int
```

Returns the total amount of available and not used internal fluid storage.
This function returns the available and not used storage in millibuckets for RS and in bytes for AE2

---

### getAvailableChemicalStorage

```
getAvailableChemicalStorage() -> int
```

Returns the total amount of available and not used internal mekanism chemical storage.
This function returns the available and not used storage in millibuckets for RS and in bytes for AE2

---

## Crafting System and functions

Since 0.8 and beta 0.7 for 1.21.1 we created a new crafting system for both the ME and RS Bridge
The functionality is mostly the same but since the RS api is currently not as extensive as the AE2 api, the RS Craft Job
may miss some functions.

The craft function now returns an object instead of a boolean. Using that object is optional.
That object contains information about the job, if it was canceled, what was requested, what items may miss if
calculation was not successful and much more.

Crafting is in both RS and AE async. If you request a feature, it calculates the recipe in the background and if that
was successful it starts the task.
To support that in a simple way on a users end, we created that custom object.

When you schedule a task, it firsts starts calculation in the background and sends an event that the item is either not
craftable or the calculation was started.
If calculation is done, there are several things that can happen. If the calculation was not successful and there were
missing items, it fires the crafting event with the message "MISSING_ITEMS".
The missing items can be retrieved using the object's function `getMissingItems`.
Depending on if you use RS or AE2, it also may return other debug messages if the calculation was not successful like
overflow or cycle detected.

If the calculation was successful, the event will fire with the message `CRAFTING_STARTED` and then starts the crafting.

There are now two ways to track the progress. the `crafting` event will fire when the crafting is done, it was canceled
or if other things might happen that affects the task.
The event also gives you an id to get the crafting object you would also get from the initial `craftX` function. Simply
use `getCraftingJob` to get the object.

The other way is to regularly check if the crafting is done or canceled by calling the objects `isDone` or `isCanceled`
function.
Using the event is more simple there.

Every function and property is described in more details below.

### Crafting Event

The new crafting event will be fired when the state of a task will change.

The name of the event is prefixed depending if you use the RS or ME Bridge.
Use `rs_crafting` for the RS Bridge and `me_crafting` for the ME Bridge.

**Values:**

1. `error: boolean` If an error occurred and the calculation or crafting was not successful
2. `id: int` The id of the craft job. Can be used to get the craft object
3. `debug_message: string` A debug message describing the current task of the task

```lua linenums="1"
local event, error, id, message = os.pullEvent("rs_crafting")
print("A crafting update occurred for Job #" .. id)
if error then
    print("There was an error while calculating or crafting the resource with the message " .. message)
else 
    print("The new state of the task is " .. message)
end
```

### craftItem

```
craftItem(filter: table) -> table | (nil, string)
```

Schedules a craft job for items. Will fire the crafting event when changes occur.
Or nil if there was an issue with parsing the filter

---

### craftFluid

```
craftFluid(filter: table) -> table | (nil, string)
```

Schedules a craft job for fluids. Will fire the crafting event when changes occur.
Or nil if there was an issue with parsing the filter

---

### craftChemical

```
craftChemical(filter: table) -> table | (nil, string)
```

Schedules a craft job for mekanism chemicals. Will fire the crafting event when changes occur.
Or nil if there was an issue with parsing the filter

---

### getCraftingTasks

```
getCraftingTasks() -> table
```

Returns every crafting task that is currently running.

---

### getCraftingTask

```
getCraftingJob(id: int) -> table | (nil, string)
```

Returns the [Crafting Job Object](#crafting-job) with the id. Nil if no object could be found

---

### cancelCraftingTasks

```
cancelCraftingTasks(filter: table) -> int
```

Cancels every crafting task where the output matches the filter

---

### getPatterns

```
getPatterns(pattern_filter: table) -> table | (nil, string)
```

Returns every pattern available to the grid or nil if there was an issue with parsing one of the filters.
The filter of this function is a bit different

You **can** specify filters for the output and input of patterns. If you don't provide any filter or just no argument at
all, it will return every pattern.

To specify an input or output filter, you need to use an `input`/`output` key in the filters table.

For example

```lua linenums="1"
-- Filter for any patterns with sticks as an output
outputFilter = {
     output = { 
        name="minecraft:stick" 
     } 
}

-- Filter for any patterns with sticks as an input
inputFilter = {
     input = { 
        name="minecraft:stick" 
     } 
}

-- Filter for any patterns with sticks as an output and planks as an input
inputFilter = {
     input = {
        name = "minecraft:oak_planks"
     },
     output = { 
        name="minecraft:stick" 
     } 
}

-- Or use the function without argument to get every pattern
patterns = bridge.getPatterns()
```

---

### isCraftable

```
isCraftable(filter: table) -> boolean
```

Returns true if there is a pattern for the provided filter or nil if there was an issue with parsing the filter.
The filter can be an item filter, a chemical filter or a fluid filter. See [filter types](../guides/filters.md#types)

---

### isCrafting

```
isCrafting(filter: table) -> boolean
```

Returns true if there is a crafting job running for the provided filter or nil if there was an issue with parsing the
filter.
The filter can be an item filter, a chemical filter or a fluid filter. See [filter types](../guides/filters.md#types)

## Objects

Every object here is inherited from common lua objects, see [LuaObjects](../guides/lua_objects.md)
Please note that due to different natures of AE2 and RS that not every object is the same.

### Item Stack

| Property    | Type    | Description                                      |
|-------------|---------|--------------------------------------------------|
| isCraftable | boolean | Whether the item is craftable (A pattern exists) |

### Fluid Stack

| Property    | Type    | Description                                      |
|-------------|---------|--------------------------------------------------|
| isCraftable | boolean | Whether the item is craftable (A pattern exists) |

### Chemical Stack

| Property    | Type    | Description                                      |
|-------------|---------|--------------------------------------------------|
| isCraftable | boolean | Whether the item is craftable (A pattern exists) |

### Storage Disk

AE2 and RS2 storage disks sadly have a bunch of different properties since AE2 works with types and bytes while RS does
not.

#### Refined Storage Disk

| Property | Type   | Description                 |
|----------|--------|-----------------------------|
| used     | number | Storage amount what is used |
| capacity | number | Total Capacity              |
| state    | string | RS Storage state[^1]        |
| type     | string | RS Storage type[^2]         |

#### Applied Energistics Disk

| Property     | Type                                         | Description                      |
|--------------|----------------------------------------------|----------------------------------|
| item         | [Item Object](../guides/lua_objects.md#item) | Disk as an Item                  |
| usedBytes    | number                                       | Used Bytes                       |
| totalBytes   | number                                       | Types capacity (Usually 63)      |
| bytes        | number                                       | Bytes capacity                   |
| bytesPerType | number                                       | Amount of bytes used by one type |
| type         | string                                       | AE2 Storage Type[^3]             |
| fuzzyMode    | string                                       | AE2 Fuzzy[^4]                    |

#### DISK Drive disk

Storage DISK Drive from AE2 Things inherit the same properties from the classic AE2 disk.

### Pattern

| Property      | Type                                                                                 | Description                                |
|---------------|--------------------------------------------------------------------------------------|--------------------------------------------|
| primaryOutput | [Item/Fluid/Chem Stack Object](#objects)                                             | Primary Output                             |
| outputs       | Array of [Item/Fluid/Chem Stack Object](#objects). </br> Or AE2 Pattern Input object | Outputs                                    |
| inputs        | Array of [Item/Fluid/Chem Stack Object](#objects)                                    | Inputs                                     |
| patternType   | string                                                                               | Pattern Type, different for AE2 and RS[^5] |
| id            | string                                                                               | Pattern ID, only for RS                    |

### AE2 Pattern Input

| Property       | Type                                              | Description                                                                              |
|----------------|---------------------------------------------------|------------------------------------------------------------------------------------------|
| primaryInput   | [Item/Fluid/Chem Stack Object](#objects)          | Primary Input.                                                                           |
| possibleInputs | Array of [Item/Fluid/Chem Stack Object](#objects) | Other possible Inputs                                                                    |
| multiplier     | number                                            | How many possible inputs are necessary to craft this pattern                             |
| remaining      | number                                            | Remaining items like buckets when a water bucket was used. Nil for non crafting patterns |

### AE2 Crafting CPU

| Property      | Type                | Description                                             |
|---------------|---------------------|---------------------------------------------------------|
| storage       | number              | Available storage in bytes                              |
| coProcessors  | number              | Available co processing unity                           |
| isBusy        | boolean             | Whether the CPU is currently performing a task          |
| craftingJob   | Crafting Job Object | The job it currently performs                           |
| name          | string              | Either "Unnamed" when not named for the name of the CPU |
| selectionMode | string              | CPU Selection mode[^6]                                  |

### Crafting Job Details

| Property   | Type                                         | Description                                                   |
|------------|----------------------------------------------|---------------------------------------------------------------|
| bridge_id  | number                                       | The ID of that task when scheduled via the bride or -1 if not |
| id         | string                                       | ID of the task                                                |
| quantity   | number                                       | Amount scheduled                                              |
| resource   | [Item/Fluid/Chem Stack Object](#objects)     | The scheduled resource                                        |
| completion | floating number between 0 and 1              | Completion in percentage                                      |
| crafted    | number                                       | Amount already crafted                                        |
| cpu        | [AE2 Crafting CPU Object](#ae2-crafting-cpu) | The crafting cpu, nil for RS                                  |

### Crafting Job

With the new crafting system, we have a complete new crafting job object. While the basic crafting job only offers some simple details, the actual job that manages the crafting offers everything that RS or AE2 would offer.
Tho these are no properties/fields, these are functions since always pulling these information would be a waste of time.

Represents a crafting job in the ME/RS system. Used for tracking crafting operations.

| Function                     | Return Type | Description                                                         |
|------------------------------|-------------|---------------------------------------------------------------------|
| getId()                      | number      | Returns the unique identifier of the crafting job                   |
| isDone()                     | boolean     | Returns whether the crafting job is completed                       |
| isCanceled()                 | boolean     | Returns whether the crafting job was canceled                       |
| isCraftingStarted()          | boolean     | Returns whether the crafting process has started                    |
| isCalculationStarted()       | boolean     | Returns whether the calculation process has started                 |
| isCalculationNotSuccessful() | boolean     | Returns whether the calculation failed                              |
| hasErrorOccurred()           | boolean     | Returns whether an error occurred during the job                    |
| getDebugMessage()            | string      | Returns a debug message with additional information about the job   |
| getRequestedItem()           | object      | Returns the requested item/fluid/chemical as an object              |
| getElapsedTime()             | number      | Returns the elapsed time since the job was created                  |
| getTotalItems()              | number      | Returns the total number of items to be crafted                     |
| getItemProgress()            | number      | Returns the current progress of crafting (how many items completed) |
| getEmittedItems()            | object      | Returns an object representing the items already emitted by the job |
| getUsedItems()               | object      | Returns an object representing the items used in crafting           |
| getMissingItems()            | object      | Returns an object representing items missing for crafting           |
| hasMultiplePaths()           | boolean     | Returns whether there are multiple crafting paths available         |
| getFinalOutput()             | object      | Returns the final output item/fluid/chemical                        |
| cancel()                     | boolean     | Cancels the crafting job and returns whether it was successful      |
| getUsedBytes()               | number      | Returns the used bytes for that job. AE2 only                       |

[^1]:
Can be NONE, INACTIVE, NORMAL, NEAR_CAPACITY, FULL.

[^2]:
Can be item, fluid, chemical, unknown (with an unknown addon).

[^3]:
Can be ae2:f, ae2:i, ae2:chemical or storage types from other addons.

[^4]:
Can be IGNORE_ALL, PERCENT_99, PERCENT_75, PERCENT_50, PERCENT_25.

[^5]:
For RS: EXTERNAL, INTERNAL. For AE2: crafting, processing, smithing, stonecutting, unknown(for unknown third party patterns).

[^6]:
Can be ANY, PLAYER_ONLY, MACHINE_ONLY.
