# Redstone Integrator

!!! picture inline end
    ![!Image of the Redstone Integrator block](/../assets/images/previews/redstone_integrator.png){ align=right }

The Redstone Integrator is able to interact with redstone.
You can use the same code you would use for a computer on a Redstone Integrator.

You may need this peripheral for cases where you need to output redstone signals on more sides than a regular computer has to offer.

<p class="picture-spacing" style="--ps:1.4rem;"></p>

---

<center>

| Peripheral Name    | Interfaces with | Has events | Introduced in |
| ------------------ | --------------- | ---------- | ------------- |
| redstoneIntegrator | Redstone        | Yes        | 0.5.3b        |

</center>

---

## Events

### redstone_integrator
Fires when the redstone power surrounding the redstone integrator changes or when the peripheral is first placed.  
**Values:**  
1. `devices: table` A map which contains the updated redstone integrators' name as the key, and a list of updated sides as the value.

```lua linenums="1"
local event, devices = os.pullEvent("redstone_integrator")
for device, sides in pairs(devices) do
    for _, side in ipairs(sides) do
        local newPower = peripheral.call(device, 'getAnalogInput', side)
        print("The " .. side .. " side of integrator " .. device .. " is updated. The new input power is ".. newPower)
    end
end
```

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
