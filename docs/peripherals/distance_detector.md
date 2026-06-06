---
comments: true
---

# Distance Detector

!!! picture inline end
    ![!Image of the Distance Detector block](../img/previews/distance_detector.png){ align=right }

The Distance Detector can measure the distance between the peripheral and a object.

<p class="picture-spacing" style="--ps:0.6rem;"></p>

---

<center markdown>

| Peripheral Name   | Interfaces with  | Has events | Introduced in |
| ----------------- | ---------------- | ---------- | ------------- |
| distance_detector | Block / Entity   | No         | 0.8           |

</center>

---

## Functions

### laserVisibility
```
laserVisibility() -> boolean
```

Returns if the laser is currently visible by players.

---

### setLaserVisibility
```
setLaserVisibility(value: boolean) -> nil
```

Sets if the laser should be visible by players.

---

### ignoresTransparency
```
ignoresTransparency() -> boolean
```

Returns if the laser is currently ignoring transparent blocks, such as glasses.

---

### setIgnoreTransparency
```
setIgnoreTransparency(value: boolean) -> nil
```

Sets if the laser should ignore transparent blocks.

---

### detectsEntities
```
detectsEntities() -> boolean
```

Returns if the laser is detecting entities.

---

### detectsBlocks
```
detectsBlocks() -> boolean
```

Returns if the laser is detecting blocks.

---

### detectionMode
```
detectionMode() -> string, number
```

Returns if the laser's detection mode.  
First value is string code `BLOCK`, `ENTITY`, or `BOTH`.  
Second value is corresponding number code 0, 1, or 2.

---

### setDetectionMode
```
setDetectionMode(value: string | number) -> nil
```

Sets the laser's detection mode, `value` may be either string code or number code.

---

### distance
```
distance() -> number
```

Returns the last distance between the peripheral and the first obstructing object. `-1` if nothing is detected within the max range.

---

### calculateDistance
```
calculateDistance() -> number
```

Calculates and returns the current distance between the peripheral and the first obstructing object.

---

### shouldCalculatePeriodically
```
shouldCalculatePeriodically() -> boolean
```

Returns if the laser will automatically recheck distance.

---

### setCalculatePeriodically
```
setCalculatePeriodically(value: boolean) -> nil
```

Sets if the laser should automatically recheck distance.

---

### maxRange
```
maxRange() -> number
```

Returns the max distance the laser will try to detect.

---

### setMaxRange
```
setMaxRange(range: number) -> nil
```

Sets the max distance the laser should try to detect.

---

## Changelog/Trivia

**0.8**  
Added distance detector
