---
comments: true
---

# Colony Integrator

!!! picture inline end
    ![!Image of the Colony Integrator block](../img/previews/colony_integrator.png){ align=right }

The colony integrator can interact with a colony from MineColonies.

!!! warning "Requirement"
    Requires the [MineColonies](https://www.curseforge.com/minecraft/mc-mods/minecolonies) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name  | Interfaces with | Has events | Introduced in |
| ---------------- | --------------- | ---------- | ------------- |
| colonyIntegrator | Mine Colony     | No         | 0.7r          |

</center>

---

## Functions

### getCitizens
```
getCitizens() -> table
```

Returns a list of information about every citizen in the colony.

#### Citizen Properties

| citizen                | Description                                             |
| ---------------------- | ------------------------------------------------------- |
| id: `string`           | The citizen's id                                        |
| name: `string`         | The citizen's name                                      |
| age: `string`          | The age of the citizen, either "child" or "adult"       |
| gender: `string`       | The citizen's gender, either "male" or "female"         |
| location: `table`      | The current location of the citizen (has `x`, `y`, `z`) |
| bedPos: `table`        | The position of the citizen's bed (has `x`, `y`, `z`)   |
| saturation: `number`   | The citizen's food saturation                           |
| happiness: `number`    | An indicator of how happy the citizen is                |
| health: `number?`      | The citizen's current health                            |
| maxHealth: `number?`   | The citizen's max health                                |
| armor: `number?`       | The citizen's current number of armor points            |
| toughness: `number?`   | The citizen's armor toughness                           |
| betterFood: `boolean`  | Whether the citizen needs better food                   |
| isAsleep: `boolean`    | If the citizen is currently asleep                      |
| isIdle: `boolean`      | If the citizen is currently idle                        |
| state: `string`        | A string representing the citizen's current state       |
| children: `table`      | A list of the ids of this citizen's children            |
| skills: `table`        | A table of skill names to skills where each skill has<br>a `level` and `xp` number |
| work: `table?`         | A table of info about the citizen's job                 |
| home: `table?`         | A table of info about the citizen's house               |

#### Work Properties
| work              | Description                           |
| ----------------- | ------------------------------------- |
| name: `string`    | The name of the work building         |
| job: `string`     | The name of the job                   |
| location: `table` | The work location (has `x`, `y`, `z`) |
| type: `string`    | The building type                     |
| level: `number`   | The building's level                  |

#### Home Properties
| home              | Description                           |
| ----------------- | ------------------------------------- |
| location: `table` | The home location (has `x`, `y`, `z`) |
| type: `string`    | The building type                     |
| level: `number`   | The building's level                  |

---

### getVisitors
```
getVisitors() -> table
```
Returns a list of information about all of the visitors in your colony's tavern.  
This information is the same as the `citizen` table but there is an additional `recruitCost` table.

#### `recruitCost` properties
| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| displayName: `string`  | The item's display name                 |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

---

### getBuildings
```
getBuildings() -> table
```
Returns a list of details about every building in the colony.

#### Building Properties
| building                | Description                                       |
| ----------------------- | ------------------------------------------------- |
| name: `string`          | The name of the building                          |
| location: `table`       | The buildings's location (has `x`, `y`, `z`)      |
| type: `string`          | The building type                                 |
| level: `number`         | The building's level                              |
| maxLevel: `number`      | The building's max level                          |
| style: `string`         | The building's style                              |
| storageBlocks: `number` | The number of storage blocks in the building      |
| storageSlots: `number`  | The number of storage slots                       |
| guarded: `boolean`      | If the building is currently being guarded        |
| built: `boolean`        | If the building is built or is under construction |
| isWorkingOn: `boolean`  | Whether the building is being worked on           |
| priority: `number`      | The building's construction priority              |
| structure: `table`      | A table defining the bounds of the structure      |
| citizens: `table`       | A list of citizen's `name`s and `id`s             |

#### Structure Properties
| structure          | Description                                         |
| ------------------ | --------------------------------------------------- |
| cornerA: `table`   | The first corner of the bounds (has `x`, `y`, `z`)  |
| cornerB: `table`   | The second corner of the bounds (has `x`, `y`, `z`) |
| rotation: `number` | The structure's rotation                            |
| mirror: `boolean`  | If the structure has been mirrored                  |

---

### getResearch
```
getResearch() -> table
```

Returns a table of all possible colony research as a tree where the root table contains the branch names and their respective research.

#### Properties
| research                 | Description                                |
| ------------------------ | ------------------------------------------ |
| id: `string`             | The research id                            |
| name: `string`           | The name of the research                   |
| status: `number`         | The current research status                |
| researchEffects: `table` | A list of effects provided by the research |
| children: `table?`       | A list of any child research               |
| progress: `number`       | Research progress                          |
| requirements: `table`    | List of requirements for the research      |
| cost: `table`            | The cost of the research (list of tables)  |

#### Requirement Properties
| requirememt          | Description                                    |
| -------------------- | ---------------------------------------------- |
| type: `string`       | Type of requirement.                           |
| desc: `string`       | Description of the requirement                 |
| fulfilled: `boolean` | If the requirement is already met              |


##### Building Requirement Properties
If the requirement type is `building`, it will have these additional properties:

| requirememt          | Description                                    |
| -------------------- | ---------------------------------------------- |
| building: `string`   | Name of the required building                  |
| level: `number`      | Level of the required building                |

#### Cost item Properties
| item                   | Description                             |
| ---------------------- | --------------------------------------- |
| name: `string`         | The registry name of the item           |
| count: `number`        | The amount of the item                  |
| maxStackSize: `number` | Maximum stack size for the item type    |
| displayName: `string`  | The item's display name                 |
| tags: `table`          | A list of item tags                     |
| nbt: `table`           | The item's nbt data                     |

---

### getRequests
```
getRequests() -> table
```
Returns a list of the colonies current requests.

#### Request Properties
| request            | Description                                |
| ------------------ | ------------------------------------------ |
| id: `string`       | The request's id                           |
| name: `string`     | The name of the request                    |
| desc: `string`     | A description about the request            |
| state: `string`    | The state of the request                   |
| count: `number`    | The number of the request                  |
| minCount: `number` | The minimum of the request needed          |
| target: `string`   | The request's target                       |
| items: `table`     | A list of items attached to the request    |

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

### getWorkOrders
```
getWorkOrders() -> table
```
Returns a list of active work orders in the colony.

#### Properties
| workOrder               | Description                                     |
| ----------------------- | ----------------------------------------------- |
| id: `string`            | The work order's id                             |
| priority: `number`      | The priority of the work order                  |
| workOrderType: `string` | The type of work order                          |
| changed: `boolean`      | If the work order changed                       |
| isClaimed: `boolean`    | Whether the work order has been claimed         |
| builder: `table`        | The position of the builder (has `x`, `y`, `z`) |
| buildingName: `string`  | The name of the building                        |
| type: `string`          | The type of the building                        |
| targetLevel: `number`   | The building's target level                     |

---

### getWorkOrderResources
```
getWorkOrderResources(workOrderId: number) -> table | nil
```
Returns a list of all of the required resources for a work order. Or nil if the work order does not exist.

#### Properties
| resource              | Description                                     |
| --------------------- | ----------------------------------------------- |
| item: `string`        | The registry name for the item                  |
| displayName: `string` | The display name for the item                   |
| status: `string`      | The status of this resource                     |
| needed: `number`      | How much of the resource is needed for the job  |
| available: `boolean`  | If the resource is currently available          |
| delivering: `boolean` | If the resource is currently being delivered    |

---

### getBuilderResources
```
getBuilderResources(position: table) -> table | nil
```
Returns the resources required by the given builder's hut.

The `position` table must contain:  

- x: `number`  
- y: `number`  
- z: `number`  

---

### getColonyID
```
getColonyID() -> number
```
Returns the id of the colony.

---

### getColonyName
```
getColonyName() -> string
```
Returns the name of the colony.

---

### getColonyStyle
```
getColonyStyle() -> string
```
Returns the style of the colony. For a list of different colony styles [click here](https://minecolony.fandom.com/wiki/Building_Styles).

---

### getLocation
```
getLocation() -> table
```
Returns the position of the townhall.

#### Properties

| table               | Description                                 |
| ------------------- | ------------------------------------------- |
| x: `number`         | The x coordinate                            |
| y: `number`         | The y coordinate                            |
| z: `number`         | The z coordinate                            |

---

### getHappiness
```
getHappiness() -> number
```
Returns the overall happiness of the colony.

---

### isActive
```
isActive() -> boolean
```
Returns true if the colony is active. This is true when trusted players are online.

---

### isUnderAttack
```
isUnderAttack() -> boolean
```
Returns true if the colony is currently under attack.

---

### isInColony
```
isInColony() -> boolean
```
Returns true if the block is in a colony.

```lua linenums="1"
local integrator = peripheral.find("colonyIntegrator")

if integrator.isInColony() then
    print("Block is inside a colony!")
else
    print("Not in a colony!")
end
```

---

### isWithin
```
isWithin(position: table) -> boolean
```
Returns true if the given coordinates are in a colony.

The `position` table must contain:  

- x: `number`  
- y: `number`  
- z: `number`  

---

### amountOfCitizens
```
amountOfCitizens() -> number
```
Returns the number of citizens in the colony.

---

### maxOfCitizens
```
maxOfCitizens() -> number
```
Returns the maximum number of citizens the colony can currently hold.

---

### amountOfGraves
```
amountOfGraves() -> number
```
Returns the current number of graves.

---

### amountOfConstructionSites
```
amountOfConstructionSites() -> number
```
Returns the current number of active construction sites.

---

## Examples

### Citizen Monitor

We made a script to show every citizens and their gender on a monitor.

You can view and download the script on [Github](https://github.com/Seniorendi/Lua-Projects/blob/master/Examples/colony_integrator_list.lua)
![!Image of the citizen list program](../img/colony_integrator/citizen_list.png)

### Colony Stats

And here we have a script made for a pocket computer to show statistics about a colony.

You can view and download the script on [Github](https://github.com/Seniorendi/Lua-Projects/blob/master/Examples/colony_integrator_status.lua)
![!Image of the colony info program](../img/colony_integrator/colony_info.png)

---

## Changelog/Trivia

**0.7r**  
Added the colony integrator
