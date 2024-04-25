# Chunky Turtle

!!! picture inline end
    ![!Image of the Compass Turtle](/../assets/images/previews/compass_turtle.png){ align=right }

The Compass Turtle allow you to know which direction is your turtle facing. The magnet power inside compass also allows you to place blocks more accurately. However, the magnetic field is not strong enough, so if you want to place block farther away, you have to burn some fuel.

<p class="picture-spacing" style="--ps:6.3rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| geoScanner      | Blocks          | No         | 0.7r          |

</center>

---

## Functions

### getFuelLevel
```
getFuelLevel() -> number
```

Returns the amount of stored fuel.

---

### getFuelMaxLevel
```
getFuelMaxLevel() -> number
```

Returns the maximum amount of possible stored fuel.

---

### getFacing
```
getFacing() -> string
```

Returns where is the turtle facing.

---

### place
```
place(options: table) -> bool | nil, string
```

Place the selected block with forward, top, and anchor direction.

#### `options` properties

| property                   | Description                                        |
| -------------------------- | -------------------------------------------------- |
| x: optional `number`       | The x offset relative to the turtle (default: `0`) |
| y: optional `number`       | The y offset relative to the turtle (default: `0`) |
| z: optional `number`       | The z offset relative to the turtle (default: `0`) |
| forward: optional `string` | The direction the block should facing (default: the turtle's forward) |
| top: optional `string`     | The direction the top of block should facing (default: top) |
| anchor: optional `string`  | The direction the block should anchor (default: `forward`) |
| text: optional `string`    | The sign's text                                    |

---

## Changelog/Trivia

**0.7.36r**
Added `place` method for accure placement.

**0.7.7r**  
Added the Compass Turtle
