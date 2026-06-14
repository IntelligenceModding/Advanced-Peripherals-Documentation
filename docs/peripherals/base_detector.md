---
comments: true
---

# Detectors

!!! picture inline end
    ![!Image of the Energy Detector block](../img/previews/detector.gif){ align=right }

The detectors can detect content (e.g. energy, fluid) flow and acts as a resistor. You can define the max flow rate to use it as a resistor.

!!! bug
    The Energy Detector does not work on versions below 0.4.5b.
    It is recommended that you always use the latest version.

<p class="picture-spacing" style="--ps:0.05rem;"></p>

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| energy_detector | Forge Energy    | No         | 0.4.1b        |
| fluid_detector  | Fluid           | No         | 0.8           |
| gas_detector    | Mekanism Gas    | No         | 0.8           |

</center>

---

## Functions

### getTransferRate

```
getTransferRate() -> number
```

Returns the current energy that is going through the block.

```lua linenums="1"
local detector = peripheral.find("energy_detector")

-- prints "Current transfer rate: xxx FE/t"
-- where 'xxx' is the current energy flowing through the block
print("Current transfer rate: " .. detector.getTransferRate() .. " FE/t")
```

---

### getTransferRateLimit

```
getTransferRateLimit() -> number
```

Returns the max rate limit of energy through the block which has been set using [`setTransferRateLimit`](#settransferratelimit).

---

### setTransferRateLimit

```
setTransferRateLimit(limit: number) -> nil
```

Set the max energy rate that will go through the block.

```lua linenums="1"
local detector = peripheral.find("energy_detector")

detector.setTransferRateLimit(512) -- Only 512 FE/t can go through the block
```

---

### getMaxTransferRate

```
getMaxTransferRate() -> number
```

Returns the max possible rate limit the can be set using [`setTransferRateLimit`](#settransferratelimit).

---

### getLastTransferedId

```
getLastTransferedId() -> string | nil
```

Returns the previous transferred object's ID, or `nil` if nothing was ever transferred through the detector.

---

### getReadyTransferId

```
getLastTransferedId() -> string | nil
```

Returns the ID of the object ready to transfer in the current tick, or `nil` if nothing is ready to transfer in the tick.

---

## Changelog/Trivia

The Energy Detector had some weird problems in versions before 0.4.6b
The block was able to store infinite amounts of energy or it creates an limitless amount of energy.

**0.4.6b**  
The energy detector is now bug free. _hopefully_

**0.4.5b**  
Completely changed the system of the energy detector, but the energy detector was able to drain energy without any reason.

**0.4.3b**  
Created a crafting recipe for the detector.

**0.4.2b**  
The energy detector is now able to send energy automatically.

**0.4.1b**  
Added the lovely bugged energy detector.
