# Player Detector

!!! picture inline end
    ![!Image of the Player Detector block](/../assets/images/previews/player_detector.png){ align=right }

The Player Detector is a useful peripheral that allows you to detect players within a certain range, position and area.
You can get a list of all online players and detect when a player clicks on the block.

<p class="picture-spacing" style="--ps:4.7rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
|-----------------|-----------------|------------|---------------|
| playerDetector  | Players         | Yes        | 0.1b          |

</center>

---

## Events

### playerClick

Fires when a player clicks on the block.  
**Values:**

1. `username: string` The username of the player who clicked the block
2. `devicename: string` Th name of the peripheral like `playerDetector_4`

```lua linenums="1"
local event, username, device = os.pullEvent("playerClick")
print("The detector ".. device .." was clicked by " .. username)
```

### playerJoin

Fires when a player joins the world/a server
**Values:**

1. `username: string` The username of the player who clicked the block
2. `dimension: string` The resource id of the dimension the player is in

```lua linenums="1"
local event, username, dimension = os.pullEvent("playerJoin")
print("Player " .. username .. " joined the server in the dimension " .. dimension)
```

### playerLeave

Fires when a player leaves the world/a server
**Values:**

1. `username: string` The username of the player who clicked the block
2. `dimension: string` The resource id of the dimension the player was in

```lua linenums="1"
local event, username, dimension = os.pullEvent("playerLeave")
print("Player " .. username .. " left the server in the dimension " .. dimension)
```

### playerChangedDimension

Fires when a player clicks on the block.  
**Values:**

1. `username: string` The username of the player who clicked the block
2. `fromDim: string` The resource id of the dimension the player was in
2. `toDim: string` The resource id of the dimension the player is in

```lua linenums="1"
local event, username, fromDim, toDim = os.pullEvent("playerChangedDimension")
print("Player " .. username .. " left the dimension " .. fromDim .. " and is now in " .. toDim)
```

!!! info
    The events will fire when a player detector has been connected to a computer. You don't have to `.wrap()` or `.find()` the peripheral (unless you intend to send messages).


---

## Functions

!!! info
    The player detector supports multidimensional spying(Since 1.19.2-0.7.30r & 1.20.1-0.7.32a). This only works if the config option `playerDetMultiDimensional` is set to true and the option `playerDetMaxRange` is set to -1(infinite)

### getPlayerPos / getPlayer

```
getPlayerPos(username: string) -> table | nil
```

Returns information about the player with the `username` passed.

#### Properties

!!! success "Added more properties in version 0.7.4r"

| table                      | Description                                |
|----------------------------|--------------------------------------------|
| dimension: `string`        | The dimension the player is in             |
| eyeHeight: `number`        | The height of the player's eyes            |
| pitch: `number`            | The pitch of the player's head             |
| health: `number`           | The health of the player                   |
| maxHealth: `number`        | The max health of the player               |
| airSupply: `number`        | The air supply of the player               |
| respawnPosition: `number`  | The respawn position of the player         |
| respawnDimension: `number` | The respawn dimension of the player        |
| respawnAngle: `number`     | The respawn angle of the player in degrees |
| yaw: `number`              | The yaw of the player's head               |
| x: `number`                | The x coordinate                           |
| y: `number`                | The y coordinate                           |
| z: `number`                | The z coordinate                           |

```lua linenums="1"
local detector = peripheral.find("playerDetector")

-- Get the position of Player123 and print their coordinates
local pos = detector.getPlayerPos("Player123")
print("Position: " .. pos.x .. "," .. pos.y .. "," .. pos.z)
```

---

### getOnlinePlayers

```
getOnlinePlayers() -> table
```

!!! success "Added in version 0.7r"

Returns a list of all online players.

---

### getPlayersInRange

```
getPlayersInRange(range: number) -> table
```

Returns a list of players within the given `range` of the peripheral.

!!! note
The center of the `range` is the Player Detector peripheral and not the Computer.

---

### getPlayersInCoords

```
getPlayersInCoords(posOne: table, posTwo: table) -> table
```

!!! success "Added in version 0.7r"

Returns a list of players within the 2 positions `posOne` and `posTwo`.

The `posOne` and `posTwo` tables must contain:

- x: `number`
- y: `number`
- z: `number`

!!! note
    The area the detector going to detect is \[x1, x2), \[y1, y2), \[z1, z2).
    Which means call `getPlayersInCoords({x=x, y=y, z=z}, {x=x, y=y, z=z})` will always return nothing

---

### getPlayersInCubic

```
getPlayersInCubic(w: number, h: number, d: number) -> table
```

!!! success "Added in version 0.7r"

Returns a list of players within a cuboid centered at the peripheral.  
Where `w`, `h`, `d` correspond to the x, y, z axes and are the width, height and depth of the cuboid.

---

### isPlayerInRange

```
isPlayerInRange(range: number, username: string) -> boolean
```

Returns true if the player whose username matches the provided `username` is within the given `range` of the peripheral.

---

### isPlayerInCoords

```
isPlayerInCoords(posOne: table, posTwo: table, username: string) -> boolean
```

!!! success "Added in version 0.7r"

Returns true if the player is within the 2 positions.

The `posOne` and `posTwo` tables must contain:

- x: `number`
- y: `number`
- z: `number`

---

### isPlayerInCubic

```
isPlayerInCubic(w: number, h: number, d: number)
```

!!! success "Added in version 0.7r"

Returns true if the player is within the cuboid centered at the peripheral.  
Where `w`, `h`, `d` correspond to the x, y, z axes and are the width, height and depth of the cuboid.

---

### isPlayersInRange

```
isPlayersInRange(range: number) -> boolean
```

Returns true if there is any player in the given `range`.

---

### isPlayersInCoords

```
isPlayersInCoords(posOne: table, posTwo: table) -> boolean
```

!!! success "Added in version 0.7r"

Returns true if any player is within the 2 positions.

The `posOne` and `posTwo` tables must contain:

- x: `number`
- y: `number`
- z: `number`

---

### isPlayersInCubic

```
isPlayersInCubic(w: number, h: number, d: number)
```

!!! success "Added in version 0.7r"

Returns true if any player is within the cuboid centered at the peripheral.  
Where `w`, `h`, `d` correspond to the x, y, z axes and are the width, height and depth of the cuboid.

---

## Changelog/Trivia

In early versions the player detector was also a buggy block, like the energy detector.
We had bugs where the block used completely wrong coordinates or the range parameters did not work.

**0.7.4r**  
Added more information to the `getPlayerPos` function. (Configurable)

**0.7r**  
Added more functions to the player detector. One to define the range in every 3 axes, one to define 2 positions.
Also added `getOnlinePlayers`.

**0.4.2b**  
Added a max range config value.

**0.3b**  
Added the functions `isPlayersInRange` and `isPlayerinRange`.

**0.2.6b**  
Added the function `getPlayersInRange`.

**0.1b**  
Added the player detector, it was the third feature of the mod.
