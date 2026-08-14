# Common Lua Objects

AP contains a lot of different objects based on in-game content, including Items, Item Stacks, Fluids, Entities and more.
This guide contains the most objects we have, including a description and every property with its type it can contain.

## Item
Base item properties:

| Property | Type | Description |
|----------|------|-------------|
| name | string | Registry key of the item |
| tags | table | List of item tags |

## Item Stack
Represents a specific amount of an item with additional properties. Includes all Item properties plus:

| Property | Type | Description |
|----------|------|-------------|
| name | string | Registry key of the item |
| tags | table | List of item tags |
| count | number | Amount of items in the stack |
| displayName | string | Display name of the item |
| maxStackSize | number | Maximum stack size |
| prototype | table | default component data |
| components | table | component data |
| nbt | string | CC: T compatible NBT hash of component data |
| slot | number | (Optional) Slot number when in inventory |

## Fluid
Base fluid properties:

| Property | Type | Description |
|----------|------|-------------|
| name | string | Registry key of the fluid |
| tags | table | List of fluid tags |

## Fluid Stack
Represents a specific amount of fluid with additional properties. Includes all Fluid properties plus:

| Property | Type | Description |
|----------|------|-------------|
| name | string | Registry key of the fluid |
| tags | table | List of fluid tags |
| count | number | Amount of fluid |
| displayName | string | Display name of the fluid |
| fluidType | table | [FluidType properties](#fluid-type) |
| components | table | component data |
| nbt | string | CC: T compatible NBT hash of component data |

## Fluid Type
| Property | Type | Description |
|----------|------|-------------|
| viscosity | number | Fluid viscosity |
| density | number | Fluid density |
| canHydrate | boolean | Whether fluid can hydrate |
| canExtinguish | boolean | Whether fluid can extinguish |
| canDrownIn | boolean | Whether entities can drown in it |
| canSwim | boolean | Whether entities can swim in it |
| canPushEntity | boolean | Whether fluid can push entities |
| supportsBoating | boolean | Whether boats can float on it |
| canConvertToSource | boolean | Whether fluid can convert to source blocks |
| temperature | number | Fluid temperature |

## Mekanism Chemical
Base chemical properties:

| Property | Type | Description |
|----------|------|-------------|
| name | string | Registry key of the chemical |
| tags | table | List of chemical tags |
| isGaseous | boolean | Whether the chemical is gaseous |
| radioactivity | number | Radioactivity level of the chemical |

## Mekanism Chemical Stack
Represents a specific amount of chemical with additional properties. Includes all Chemical properties plus:

| Property | Type | Description |
|----------|------|-------------|
| count | number | Amount of chemical |
| displayName | string | Display name of the chemical |


## Entity
| Property | Type | Description |
|----------|------|-------------|
| id | number | Entity ID |
| uuid | string | Entity UUID |
| name | string | Entity registry name |
| customName | string? | Entity custom name |
| displayName | string | Entity default display name |
| yaw | number | Entity rotation about the Y-axis |
| pitch | number | Entity rotation about the X-axis |
| eyeHeight | number | Eye offset about feet position |
| type | string | Entity type |
| tags | table | Entity tags |
| category | string | Entity category |
| canBurn | boolean | Whether entity can burn |
| canFreeze | boolean | Whether entity can freeze |
| isGlowing | boolean | Whether entity is glowing |
| isUnderWater | boolean | Whether entity is underwater |
| isInLava | boolean | Whether entity is in lava |
| isInWall | boolean | Whether entity is in a wall |
| team | table? | Entity [team info](#team) |
| airSupply | number | Air supply left in the entity |
| maxAirSupply | number | Maximum air supply the entity may have |
| passengers | table | Passenger UUID list |

### Extra Position Info

On applicable peripherals, entity may also contains position data

| Property | Type | Description |
|----------|------|-------------|
| x | number | world position on the X-axis |
| y | number | world position on the Y-axis |
| z | number | world position on the Z-axis |
| f | number | relative position about the peripheral's front direction |
| r | number | relative position about the peripheral's right direction |
| u | number | relative position about the peripheral's up direction |
| dx | number | speed on the X-axis |
| dy | number | speed on the Y-axis |
| dz | number | speed on the Z-axis |

## Living Entity
Inherits all properties from [Entity](#entity)

| Property | Type | Description |
|----------|------|-------------|
| baby | boolean | Whether the entity is a baby |
| health | number | Current health |
| maxHealth | number | Maximum health |
| lastDamageSource | string | Last damage source (or nil) |
| effect | table | Effects on the entity |

## Mob
Inherits all properties from [Living Entity](#living-entity)

| Property | Type | Description |
|----------|------|-------------|
| aggressive | boolean | Whether the mob is in aggressive state |

## Animal
Inherits all properties from [Mob](#mob)

| Property | Type | Description |
|----------|------|-------------|
| inLove | boolean | Whether the animal is in love state |
| shareable | boolean | Whether the animal can be sheared (if applicable) |

## Player
Inherits all properties from [Living Entity](#living-entity)

| Property | Type | Description |
|----------|------|-------------|
| score | number | The player's score |
| luck | number | The luck of the player |
| handSlot | number | Selected hand slot of the player |
| inventory | table | Player's inventory |

## Block State
Represents a block and its state

| Property | Type | Description |
|----------|------|-------------|
| name | string | The registry id of the block |
| item | string \| nil | The item used to build the block |
| tags | table | The tags on the block |
| state | table | The states of the block |

## Position
Common block position object used for some filters and return values.

| Property | Type | Description |
|----------|------|-------------|
| x | number | X coordinate |
| y | number | Y coordinate |
| z | number | Z coordinate |

## Team
Entity team information

| Property | Type | Description |
|----------|------|-------------|
| name | string | Team name |
| color | number | Team color in 0xRRGGBB format |
