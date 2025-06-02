---
comments: true
---

# Hotkey Module

!!! picture inline end
    ![!Image of the Hotkey Module item](../img/previews/modules/hotkey_module.png){ align=right }

The Hotkey Module can listen to the hotkey that players bound in their client.  
Hotkey is configurable at player's client.

---

## Events

### glasses_key_pressed

Fires when the player pressed the hotkey.  
**Values:**
1. `keyBind: string` The hotkey the player bound to.
2. `keyPressDuration: number` The duration the hotkey was held down, in milliseconds.

```lua linenums="1"
local event, keyBind, keyPressDuration = os.pullEvent("glasses_key_pressed")
print("The hotkey " .. keyBind .. " pressed for " .. keyPressDuration .. "ms")
```

---

## Changelog/Trivia

**0.8**  
Added Hotkey Module
