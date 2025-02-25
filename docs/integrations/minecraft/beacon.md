---
comments: true
---

# Beacon

!!! picture inline end
    ![!Image of the Beacon block](../img/previews/beacon.png){ align=right }

A [Beacon](https://minecraft.fandom.com/wiki/Beacon) is a block that projects a light beam skyward and can provide status effects such as Speed, Jump Boost, Haste, Regeneration, Resistance, or Strength to nearby players.

<p class="picture-spacing" style="--ps:6rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| beacon          | Beacon block    | No         | 0.6b          |

</center>

---

## Functions

### getLevel
```
getLevel() -> number
```
Returns the level of the Beacon.

---

### getPrimaryEffect
```
getPrimaryEffect() -> string
```
Returns the registry name of the beacon's primary effect.

---

### getSecondaryEffect
```
getSecondaryEffect() -> string
```
Returns the registry name of the beacon's secondary effect.

---

## Changelog/Trivia

**0.6b**  
Added integration for Minecraft
