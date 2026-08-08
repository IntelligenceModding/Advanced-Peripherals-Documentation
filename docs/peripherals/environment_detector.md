---
comments: true
---

# Environment Detector

!!! picture inline end
    ![!Image of the Environment Detector block](../img/previews/environment_detector.apng){ align=right }

The Environment Detector provides current information from the environment like the current time, the current moon phase,
the light level of the block and many more.

<p class="picture-spacing" style="--ps:6rem;"></p>

---

<center markdown>

| Peripheral Name      | Interfaces with | Has events | Introduced in |
| -------------------- | --------------- | ---------- | ------------- |
| environment_detector | World           | No         | 0.1b          |

</center>

---

## Functions

### getBiome

```
getBiome() -> string
```

Returns the current biome the block is in.

```lua linenums="1"
local detector = peripheral.find("environment_detector")

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

### getSkyLightLevel

```
getSkyLightLevel() -> number
```

Returns the current sky light level from 0 to 15 (like a daylight sensor).

---

### getDayLightLevel

```
getDayLightLevel() -> number
```

Returns the day light level of the current world from 0 to 15. This is uneffected by blocks covering the peripheral.

---

### getTime

```
getTime() -> number
```

!!! warning "WIP"

Returns the daytime of the current world.

---

### isSlimeChunk

```
isSlimeChunk() -> boolean
```

Returns true if the current chunk is a slime chunk.

---

### getDimension

```
getDimension() -> string
```

Returns the name of the current dimension (ex. `minecraft:overworld`, `minecraft:the_nether` or `minecraft:the_end`).

```lua linenums="1"
local detector = peripheral.find("environment_detector")

-- e.g. prints "Dimension: the_nether"
print("Dimension: " .. detector.getDimension())
```

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

### getMoon

```
getMoon() -> number, string
```

Returns the current moon phase's id and its name

!!! info
    There are 8 different moon phases, see below a list of their names and ids

    `0 = Full moon`, `1 = Waning gibbous`, `2 = Third quarter`, `3 = Waning crescent`, `4 = New moon`, `5 = Waxing crescent`, `6 = First quarter`, `7 = Waxing gibbous`

---

### isRaining

```
isRaining() -> boolean
```

Returns true if it is raining.

---

### isThunder

```
isThunder() -> boolean
```

Returns true if it is thundering.

---

### isSunny

```
isSunny() -> boolean
```

Returns true if it is sunny.

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

### scanEntities

```
scanEntities(range: number) -> table
```

Returns a table with all [entities](../guides/lua_objects.md#entity) in the given range.  
Coordinates are relative and not absolute.

---

### scanShips

```
scanShips(range: number) -> table
```

!!! warning "Requirement"
    Requires Valkyrien Skies to be installed.

Returns a table with all ships in the given range.  
Coordinates are relative and not absolute.

---

## Changelog/Trivia

**0.8**
Added vs2 integration `scanShips`, `scanShipCost`.

**0.6.5b**  
Added `getRadiationRaw`

**0.6.1b**  
Added `getRadiation`

**0.3.3b**  
Added many more functions to the environment detector. The environment detector was a useless block before this update.

**0.1b**  
Added the block. It was the second feature of the mod.
