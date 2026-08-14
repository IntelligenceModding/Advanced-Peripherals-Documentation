---
comments: true
---

# Saddle Turtle

!!! picture inline end
    ![!Image of the Saddle Turtle](../img/previews/saddle_turtle.png){ align=right }

The Saddle Turtle allow you to capture an entity or a player on to the turtle.

<p class="picture-spacing" style="--ps:6.3rem;"></p>

---

## Events

### saddle_control

Fires when a player pressed/released movement key while riding on a saddle turtle.

**Values:**
1. `direction: string` The direction of player's movement key.
2. `pressed: boolean` `true` if the player pressed down the movement key, or `false` if it is released.

```lua linenums="1"
local event, direction, pressed = os.pullEvent('saddle_control')
print('Player ' .. (pressed and 'pressed' or 'released') .. ' key ' .. direction)
```

---

## Functions

---

### capture
```
capture() -> true | (nil, string)
```

Capture an entity / player in front of the turtle.

---

### release
```
release() -> true | (nil, string)
```

Release the current rider from the turtle.

---

### hasRider
```
hasRider() -> boolean
```

Check if the turtle has a rider.

---

### getRider
```
getRider(detailed: boolean) -> table | (nil, string)
```

Get the rider's information.

---

## Changelog/Trivia

**0.8**  
Added the Saddle Turtle
