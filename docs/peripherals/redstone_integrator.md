---
comments: true
---

# Redstone Integrator

!!! picture inline end
    ![!Image of the Redstone Integrator block](../img/previews/redstone_integrator.png){ align=right }


!!! warning
    The redstone integrator got removed in 1.21.1-0.7.50b since it got superseded by the [redstone relay](https://tweaked.cc/peripheral/redstone_relay.html) from CC:T

The Redstone Integrator is able to interact with redstone.
You can use the same code you would use for a computer on a Redstone Integrator.

You may need this peripheral for cases where you need to output redstone signals on more sides than a regular computer has to offer.

<p class="picture-spacing" style="--ps:1.4rem;"></p>

---

<div class="center-table" markdown>

| Peripheral Name    | Interfaces with | Has events | Introduced in |
| ------------------ | --------------- | ---------- | ------------- |
| redstoneIntegrator | Redstone        | No         | 0.5.3b        |

</div>

---


## Functions

### getInput
```
getInput(side: string) -> boolean
```

Returns true or false depending on if the redstone at the given `side` is on.

!!! tip "Since version 0.7r"
    You can now use both relative (`right`, `left`, `front`, `back`, `top`, `bottom`) and cardinal (`north`, `south`, `east`, `west`, `up`, `down`) directions for the `side` argument.  

---

### getOutput
```
getOutput(side: string) -> boolean
```

Returns true or false depending on if the Redstone Integrator is sending a signal to the given `side`.

---

### getAnalogInput
```
getAnalogInput(side: string) -> number
```

Returns the redstone level input on the given `side`.

!!! tip
    You can also use `Analogue` instead of `Analog` (ex. `getAnalogueInput`) both work exactly the same.

---

### getAnalogOutput
```
getAnalogOutput(side: string) -> number
```

Returns the redstone level being output by the Redstone Integrator on the given `side`.

---

### setOutput
```
setOutput(side: string, powered: boolean) -> void
```

Sets the redstone level output to 0 or 15 on the given `side` depending on `powered`.

```lua linenums="1"
local integrator = peripheral.find("redstoneIntegrator")

print("Left redstone level: ".. integrator.getAnalogInput("left")) -- prints the level of the redstone at the left side.
print("Right redstone: ".. integrator.getOutput("right")) -- prints whether there is a redstone output on the right side.
integrator.setOutput("top", true) -- Sets the redstone level to 15 for the top side.
```

---

### setAnalogOutput
```
setAnalogOutput(side: string, power: number) -> void
```

Sets the redstone level output on the given `side` to the given `power` level.

---

## Changelog/Trivia

**0.5.3b**  
Added the lovely Redstone Integrator.
