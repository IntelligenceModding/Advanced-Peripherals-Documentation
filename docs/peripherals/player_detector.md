# Player Detector

!!! picture inline end
    ![!Image of the Player Detector block](/../assets/images/previews/player_detector.png){ align=right }

The Player Detector is a useful peripheral that allows you to detect players within a certain range, position and area. You can get a list of all online players and detect when a player clicks on the block.

<p class="picture-spacing" style="--ps:4.7rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| playerDetector  | Players         | Yes        | 0.1b          |

</center>

---

## Events

### playerClick
Fires when a player clicks on the block.  
**Values:**  
1. `username: string` The username of the player who clicked the block  
2. `detector: string` The side/name of the detector has been clicked  
```lua linenums="1"
local event, username, detector = os.pullEvent("playerClick")
print("The detector " .. detector .. " was clicked by " .. username)
```

!!! info
    The `playerClick` event will fire when a player detector has been connected to a computer. You don't have to `.wrap()` or `.find()` the peripheral (unless you intend to send messages).

---

## Functions

### getPlayerPos
```
getPlayerPos(username: string) -> table | nil
```

Returns the position of the player with the `username` passed.

#### Properties

!!! success "Added more properties in version 0.7.4r"

| table               | Description                                 |
| ------------------- | ------------------------------------------- |
| dimension: `string` | The dimension the player is in (will be the<br>same as the peripheral's dimension) |
| eyeHeight: `number` | The height of the player's eyes             |
| pitch: `number`     | The pitch of the player's head              |
| yaw: `number`       | The yaw of the player's head (ie. the<br>direction they are looking) |
| x: `number`         | The x coordinate                            |
| y: `number`         | The y coordinate                            |
| z: `number`         | The z coordinate                            |

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

Returns true if the player whose username matches the provided `username` is without the given `range` of the peripheral.

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
