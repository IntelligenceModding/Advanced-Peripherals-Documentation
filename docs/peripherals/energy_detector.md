---
comments: true
---

# Energy Detector

!!! picture inline end
    ![!Image of the Energy Detector block](../img/previews/energy_detector.png){ align=right }

The Energy Detector can detect energy flow and acts as a resistor. You can define the max flow rate to use it as a resistor.

!!! bug
    The Energy Detector does not work on versions below 0.4.5b.
    It is recommended that you always use the latest version.

<p class="picture-spacing" style="--ps:0.05rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| energyDetector  | Forge Energy    | No         | 0.4.1b        |

</center>

---

## Functions

### getTransferRate

```
getTransferRate() -> int
```

Returns the current energy that is going through the block.

```lua linenums="1"
local detector = peripheral.find("energyDetector")

-- prints "Current transfer rate: xxx FE/t"
-- where 'xxx' is the current energy flowing through the block
print("Current transfer rate: " .. detector.getTransferRate() .. " FE/t")
```

---

### getTransferRateLimit

```
getTransferRateLimit() -> int
```

Returns the max rate limit of energy through the block which has been set using [`setTransferRateLimit`](#settransferratelimit).

---

### setTransferRateLimit

```
setTransferRateLimit(limit: int) -> void
```

Set the max energy rate that will go through the block.

```lua linenums="1"
local detector = peripheral.find("energyDetector")

detector.setTransferRateLimit(512) -- Only 512 FE/t can go through the block
```

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
