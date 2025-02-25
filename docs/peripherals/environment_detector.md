---
comments: true
---

# Environment Detector

!!! picture inline end
    ![!Image of the Environment Detector block](../img/previews/environment_detector.png){ align=right }

The Environment Detector provides current information from the environment like the current time, the current moon phase,
the light level of the block and many more.

<p class="picture-spacing" style="--ps:6rem;"></p>

---

<center>

| Peripheral Name     | Interfaces with | Has events | Introduced in |
| ------------------- | --------------- | ---------- | ------------- |
| environmentDetector | World           | No         | 0.1b          |

</center>

---

## Functions

### getBiome

```
getBiome() -> string
```

Returns the current biome the block is in.

```lua linenums="1"
local detector = peripheral.find("environmentDetector")

-- e.g. prints "Biome: minecraft:plains"
print("Biome: " .. detector.getBiome())
```

---

### getBlockLightLevel

```
getBlockLightLevel() -> number
```

Returns the block light level (0 to 15) at the detector block, this can be influenced by light sources

---

### getDayLightLevel

```
getDayLightLevel() -> number
```

Returns the day light level of the current world from 0 to 15. This is uneffected by blocks covering the peripheral.

---

### getSkyLightLevel

```
getSkyLightLevel() -> number
```

Returns the current sky light level from 0 to 15 (like a daylight sensor).

---

### getDimensionName

```
getDimensionName() -> string
```

Returns the name of the current dimension (ex. `overworld`, `the_nether` or `the_end`).

```lua linenums="1"
local detector = peripheral.find("environmentDetector")

-- e.g. prints "Dimension: the_nether"
print("Dimension: " .. detector.getDimensionName())
```

---

### getDimensionPaN

```
getDimensionPaN() -> string
```

Similar to [`getDimensionName`](#getdimensionname) it returns the name of the dimension prefixed with the provider name (ex. `minecraft:overworld`).

---

### getDimensionProvider

```
getDimensionProvider() -> string
```

Returns the provider of the dimension (ex. `minecraft`).

---

### getMoonId

```
getMoonId() -> number
```

Returns the current moon phase's id.

!!! info
    There are 8 different moon phases, see below a list of their names and ids

    `0 = Full moon`, `1 = Waning gibbous`, `2 = Third quarter`, `3 = Waning crescent`, `4 = New moon`, `5 = Waxing crescent`, `6 = First quarter`, `7 = Waxing gibbous`

### getMoonName

```
getMoonName() -> string
```

Returns the current moon phase's name.

---

### getTime

```
getTime() -> number
```

!!! warning "WIP"

Returns the daytime of the current world.

---

### getRadiation

```
getRadiation() -> table
```

!!! success "Added in version 0.6.1b"

!!! warning "Requirement"
    Requires the [Mekanism](https://www.curseforge.com/minecraft/mc-mods/mekanism) mod to be installed

Returns the current radiation level from the Mekanism mod with the radiation unit.

#### Properties

| table               | Description                             |
| ------------------- | --------------------------------------- |
| radiation: `string` | The current radiation level as a string |
| unit: `string`      | The radiation unit                      |

---

### getRadiationRaw

```
getRadiationRaw() -> number
```

!!! success "Added in version 0.6.5b"

!!! warning "Requirement"
    Requires the [Mekanism](https://www.curseforge.com/minecraft/mc-mods/mekanism) mod to be installed

Returns the current raw radiation level in Sv/h.

---

### isDimension

```
isDimension(dimension: string) -> boolean
```

Returns true if the current dimension matches the `dimension` parameter.

---

### isMoon

```
isMoon(moonPhaseId: number) -> boolean
```

Returns true if the current moon phase matches the `moonPhaseId` parameter.

---

### isRaining

```
isRaining() -> boolean
```

Returns true if it is raining.

---

### isSunny

```
isSunny() -> boolean
```

Returns true if it is sunny.

---

### isThunder

```
isThunder() -> boolean
```

Returns true if it is thundering.

---

### isSlimeChunk

```
isSlimeChunk() -> boolean
```

Returns true if the current chunk is a slime chunk.

---

### listDimensions

```
listDimensions() -> table
```

Returns a table with all of the registered dimensions for the current world, this includes modded dimensions.

!!! example
    As an example `listDimensions` might return a table like so:
    ```
    {"minecraft:overworld", "minecraft:the_nether", "minecraft:the_end", "twilightforest:twilight_forest"}
    ```

---

### scanEntities

```
scanEntities(range: number) -> table
```

Returns a table with all entities in the given range
Coordinates are relativ and not absolute

!!! example
    Example output for an entity:
    ```lua
    {
      {
        canFreeze = true,
        uuid = "380df991-f603-344c-a090-369bad2a924a",
        tags = {},
        id = 158,
        y = 0.99835407917146,
        x = 2.3657836835311,
        name = "Dev",
        isGlowing = false,
        z = 1.2416321248782,
        isInWall = false,
        maxHealth = 20,
        health = 20,
      },
    }
    ```


## Changelog/Trivia

**0.6.5b**  
Added `getRadiationRaw`

**0.6.1b**  
Added `getRadiation`

**0.3.3b**  
Added many more functions to the environment detector. The environment detector was a useless block before this update.

**0.1b**  
Added the block. It was the second feature of the mod.
