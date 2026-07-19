---
comments: true
---

# Smart Rail

!!! picture inline end
    ![!Image of the Smart Rail](../img/previews/smart_rail.png){ align=right style="width:100%;image-rendering:pixelated;" }

This rail is a combination of detector rail, activator rail, and powered rail.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| smart_rail      | Minecarts       | Yes        | 0.8           |

</center>

---

## Events

### cart_attached
Fires when a minecart get on a smart rail

**Values:**

1. `peripheral_name: string` The smart rail's name.
2. `carts_data: table` List of [Entity](../guides/lua_objects.md#entity) object of the carts get on the rail in the tick.

```lua linenums="1"
local event, peripheral_name, carts_data = os.pullEvent("cart_attached")
print("Some carts is attached on " .. peripheral_name)
```

### cart_detached
Fires when a minecart get off a smart rail

**Values:**

1. `peripheral_name: string` The smart rail's name.
2. `carts_id: table` List of UUID of the carts get off the rail in the tick.

```lua linenums="1"
local event, peripheral_name, carts_id = os.pullEvent("cart_detached")
print("Some carts is detached from " .. peripheral_name)
```

---

## Functions

### hasCarts
```
hasCarts() -> boolean
```

Check if any carts is currently on the rail.

---

### getCarts
```
getCarts() -> table
```

Returns the entity data of the carts currently on the rail.

---

### getState
```
getState() -> string, number
```

Returns the current operate state of the rail.  
The default state is `"STOP", 0`

---

### setState
```
setState(state: string | number) -> nil
```

Set the operate state of the rail.

Available states:

| State    | ID | Description |
| -------- | -- | ----------- |
| STOP     | 0  | Stop any cart on the rail |
| PASS     | 1  | Let any cart on the rail pass through like on a normal rail. |
| ACC_NEG  | 2  | Accelerate all carts on the rail towards negative axis direction (north and west). |
| ACC_BOTH | 3  | Accelerate any cart passing the rail like on a powered rail. |
| ACC_POS  | 4  | Accelerate all carts on the rail towards positive axis direction (south and east). |

---

### isActivating
```
isActivating() -> boolean
```

Check if the rail is acting like a powered activator rail.

---

### setActivating
```
setActivating(value: boolean) -> nil
```

Set if the rail should act like a powered activator rail.

---

## Changelog/Trivia

**0.8**  
Added the Smart Rail peripheral.
