# Weak Automata

!!! picture inline end
    ![!Image of the Weak Automata Upgrade](/../assets/images/previews/weak_automata.png){ align=right }

Weak automata is a turtle with a Weak Mechanic Soul upgrade. It has several different abilities:  
• Digging blocks with tools  
• Interact with blocks with an item or empty hand  
• Collect all or specific nearby items  
• Detect nearby items  
• Detect blocks and entities in front of the turtle  
• Charge the turtle with an energy cell in the turtle's inventory  

<p class="picture-spacing" style="--ps:0.05rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| weakAutomata    | World           | No         | 0.7r          |

</center>

---

## Functions

### getFuelLevel
```
getFuelLevel() -> number
```
Returns the number of fuel points stored in the turtle.

---

### getFuelMaxLevel
```
getFuelMaxLevel() -> number
```
Returns the maximum amount of fuel points that the turtle can store.

---

### getFuelConsumptionRate
```
getFuelConsumptionRate() -> number
```
Returns the turtle's current fuel consumption rate.

---

### setFuelConsumptionRate
```
setFuelConsumptionRate(rate: number) -> true | nil, string
```
Allows you to control the fuel consumption `rate` of the turtle. See [Cooldowns and Fuel consumption](../../guides/cooldowns_and_fuel_consumption.md) to learn about how fuel consumption affects fuel cost and operation cooldowns.

Returns true if the consumption rate was successfully set, or nil and an error message.

---

### getDigCooldown
```
getDigCooldown() -> number
```
Returns the current cooldown for dig operations.

---

### getSuckCooldown
```
getSuckCooldown() -> number
```
Returns the current cooldown for item collection operations.

---

### getUseOnBlockCooldown
```
getUseOnBlockCooldown() -> number
```
Returns the current cooldown for block interaction operations.

---

### getConfiguration
```
getConfiguration() -> table
```
Returns the configuration values for this automata.

---

### lookAtBlock
```
lookAtBlock() -> table | nil, string
```
Returns a table containing information about the block infront of the turtle or if the operation fails it will return nil and an error message.

---

### lookAtEntity
```
lookAtEntity() -> table | nil, string
```
Returns a table containing information about the entity infront of the turtle or if the operation fails it will return nil and an error message.

---

### digBlock
```
digBlock() -> true | nil, string
```
Tries to dig the block that the turtle is looking at with the current item. It returns true if it successfully mines the block or nil and an error message.

---

### useOnBlock
```
useOnBlock() -> true | nil, string
```
Tries to interact with the block that the turtle is looking at with the current item. It returns true if it successfully interacts with the block or nil and an error message.

---

### scanItems
```
scanItems() -> table | nil, string
```
Returns a list of items that are around the turtle or nil and an error message if it fails.

---

### collectItems
```
collectItems([count: number]) -> true | nil, string
```
Tries to collect all items or a specific amount if `count` is given around the turtle.  
Returns true if it successfully collects items or nil and an error message.

---

### collectSpecificItem
```
collectSpecificItem(item: string[, count: number]) -> true | nil, string
```
Tries to collect all items or a specific amount if `count` is given of the given `item` type that are around the turtle.  
Returns true if it successfully collects items or nil and an error message.

---

### feedSoul
```
feedSoul() -> (true | nil), string
```
Tries to feed the entity that is in front of the turtle to the mechanic soul upgrade in the the turtle's selected slot.  
Returns true and the interaction result as a string or if it fails nil and an error message.

---

### chargeTurtle
```
chargeTurtle([fuel: number]) -> number | nil, string
```
Tries to fuel the turtle using an energy cell in the turtle's inventory. The `fuel` argument limits the amount of fuel it will try to gain.  
Returns the amount of fuel points gained or nil and an error message.

---

### placeBlock
```
placeBlock(options: table) -> bool | nil, string
```

!!! warning "Requirement"
    Requires compass to be equipped as another peripheral.

Place the selected block with forward, top, and anchor direction.

#### `options` properties

| property                   | Description                                                           |
| -------------------------- | --------------------------------------------------------------------- |
| x: optional `number`       | The x offset relative to the turtle (default: `0`)                    |
| y: optional `number`       | The y offset relative to the turtle (default: `0`)                    |
| z: optional `number`       | The z offset relative to the turtle (default: `0`)                    |
| forward: optional `string` | The direction the block should facing (default: the turtle's forward) |
| top: optional `string`     | The direction the top of block should facing (default: up)            |
| anchor: optional `string`  | The direction the block should anchor (default: `forward`)            |
| text: optional `string`    | The sign's text                                                       |

---

## Changelog/Trivia

**0.7.36r**
Added `placeBlock` method for accure placement.

**0.7r**  
Added the Weak Automata
