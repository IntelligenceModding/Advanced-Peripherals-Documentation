# Common Lua Objects

AP contains a lot of different objects based on in-game content, including Items, Item Stacks, Fluids, Entities and more.
This guide contains the most objects we have, including a description and every property with its type it can contain.

Actually trying out the new github workflow
And the PR thingy

## Item
Base ítem properties:

| Property | Type | Description |
|----------|------|-------------|
| tags | table | List of item tags |
| name | string | Registry key of the item |

## Item Stack
Represents a specific amount of an item with additional properties. Includes all Item properties plus:

| Property | Type | Description |
|----------|------|-------------|
| count | number | Amount of items in the stack |
| displayName | string | Display name of the item |
| maxStackSize | number | Maximum stack size |
| components | table | NBT component data |
| fingerprint | string | Unique identifier for the stack |
| tags | table | List of item tags |
| name | string | Registry key of the item |
| slot | number | (Optional) Slot number when in inventory |

## Fluid
Base fluid properties:

| Property | Type | Description |
|----------|------|-------------|
| tags | table | List of fluid tags |
| name | string | Registry key of the fluid |

## Fluid Stack
Represents a specific amount of fluid with additional properties. Includes all Fluid properties plus:

| Property | Type | Description |
|----------|------|-------------|
| count | number | Amount of fluid |
| displayName | string | Display name of the fluid |
| fluidType | table | FluidType properties |
| components | table | NBT component data |
| fingerprint | string | Unique identifier for the stack |

## Mekanism Chemical
Base chemical properties:

| Property | Type | Description |
|----------|------|-------------|
| tags | table | List of chemical tags |
| name | string | Registry key of the chemical |
| isGaseous | boolean | Whether the chemical is gaseous |
| radioactivity | number | Radioactivity level of the chemical |

## Mekanism Chemical Stack
Represents a specific amount of chemical with additional properties. Includes all Chemical properties plus:

| Property | Type | Description |
|----------|------|-------------|
| count | number | Amount of chemical |
| displayName | string | Display name of the chemical |
| fingerprint | string | Unique identifier for the stack |


## Entity
| Property | Type | Description |
|----------|------|-------------|
| id | number | Entity ID |
| uuid | string | Entity UUID |
| name | string | Entity name |
| tags | table | Entity tags |
| canFreeze | boolean | Whether entity can freeze |
| isGlowing | boolean | Whether entity is glowing |
| isInWall | boolean | Whether entity is in a wall |

## Living Entity
Inherits all properties from Entity, plus:

| Property | Type | Description |
|----------|------|-------------|
| health | number | Current health |
| maxHealth | number | Maximum health |
| lastDamageSource | string | Last damage source (or nil) |

## Animal
Inherits all properties from LivingEntity, plus:

| Property | Type | Description |
|----------|------|-------------|
| baby | boolean | Whether the animal is a baby |
| inLove | boolean | Whether the animal is in love state |
| aggressive | boolean | Whether the animal is aggressive |
| shareable | boolean | Whether the animal can be sheared (if applicable) |

## Position
Common block position object used for some filters and return values.

| Property | Type | Description |
|----------|------|-------------|
| x | number | X coordinate |
| y | number | Y coordinate |
| z | number | Z coordinate |

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