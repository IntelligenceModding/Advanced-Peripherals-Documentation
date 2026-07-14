---
comments: true
---

# Hotkey Module

!!! picture inline end
    ![!Image of the Keyboard item](../img/previews/keyboard.png){ align=right }

The Keyboard Module can listen to the same hotkey as [the Hotkey module](./hotkey.md) that players bound in their client.  
When active, Keyboard Module will forward player's key events to Smart Glasses.  
In addition, Keyboard Module may also capture player's mouse by invoking `setCaptureMouse(true)`, and then fire corresponding events.

---

## Events

### keyboard_open

Fires when the player opened the keyboard.

**Values:** *None*

```lua linenums="1"
os.pullEvent("keyboard_open")
print('Keyboard opened!')
```

---

### keyboard_close

Fires when the player closed the keyboard.

**Values:** *None*

```lua linenums="1"
os.pullEvent("keyboard_close")
print('Keyboard closed!')
```

---

### player_interaction

Fires when a player pressed a mouse button while keyboard module is capturing mouse.  
Interactions must be registered by [`setHandlingInteraction`](#sethandlinginteraction) first.

**Values:**

1. `interaction: number` Performing interaction: `1` for attack; `2` for use; `3` for pick.
2. `block_state: table | nil` Aiming [block](../guides/lua_objects.md#block-state), if exists.
3. `entity_uuid: string | nil` Aiming entity UUID, if exists.

```lua linenums="1"
local event, interaction = os.pullEvent("player_interaction")
print('Interaction ' .. interaction .. ' is performed!')
```

---

### player_mouse_click

Fires when a player pressed a mouse button while keyboard module is capturing mouse.

**Values:**

1. `button: number` The mouse button which clicked down.

```lua linenums="1"
local event, button = os.pullEvent("player_mouse_click")
print('Mouse button ' .. button .. ' pressed!')
```

---

### player_mouse_up

Fires when the player released a mouse button while keyboard module is capturing mouse.

**Values:**

1. `button: number` The mouse button which released up.

```lua linenums="1"
local event, button = os.pullEvent("player_mouse_up")
print('Mouse button ' .. button .. ' released!')
```

---

### player_mouse_move

Fires when a player moved mouse while keyboard module is capturing mouse.

**Values:**

1. `dx: number` Horizontal mouse movement  
2. `dy: number` Vertical mouse movement

```lua linenums="1"
local event, dx, dy = os.pullEvent("player_mouse_move")
print('Mouse moving: dy=' .. dy .. ' dx=' .. dx)
```

---

### player_mouse_scroll

Fires when a player scrolled mouse while keyboard module is capturing mouse.

**Values:**

1. `dy: number` Vertical mouse scroll amount  
2. `dx: number` Horizontal mouse scroll amount

```lua linenums="1"
local event, dy, dx = os.pullEvent("player_mouse_scroll")
print('Mouse scrolling: dy=' .. dy .. ' dx=' .. dx)
```

---

## Functions

### isCapturingKeys
```
isCapturingKeys() -> boolean
```

returns `true` if the keyboard is currently open, `false` otherwise.

---

### isCapturingMouse
```
isCapturingMouse() -> boolean
```

returns `true` if the mouse is currently captured, `false` otherwise.

---

### setCaptureMouse
```
setCaptureMouse(enable: boolean) -> nil
```

set if the mouse should be captured.

---

### isHandlingInteraction
```
isHandlingInteraction(interaction: number) -> boolean
```

returns `true` if the interaction is currently being intercepted, `false` otherwise.

---

### setHandlingInteraction
```
setHandlingInteraction(interaction: number, value: boolean) -> nil
```

set if the interaction should be intercepted.  
Intercepted interaction will not perform its normal duty, [`player_interaction`](#player_interaction) event will be fired instead.

| interaction | description         |
| ----------- | --------------------|
| 1           | attack / dig block  |
| 2           | use stuffs          |
| 3           | pick block / entity |

---

## Changelog/Trivia

**0.8**  
Added Hotkey Module
