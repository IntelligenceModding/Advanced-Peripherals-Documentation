---
comments: true
---

# Ender Cell

!!! danger "Only available in version 1.19.2"

The Ender Cell is a block from Powah to receive, store, and send energy on specific channels of the owner. You can access the energy from anywhere.

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                     | Has events | Introduced in |
| ----------------- | ----------------------------------- | ---------- | ------------- |
| enderCell         | Every Ender Cell block (all tiers)  | No         | N/A           |

</center>

---

## Functions

### getName
```
getName() -> string
```
Returns the name of the peripheral

---

### getEnergy
```
getEnergy() -> number
```
Returns the quantity of stored energy inside the cell.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the cell.

---

### getChannel()
```
getChannel() -> number
```
Returns the channel the Ender Cell is set to. A number from 1 to `getMaxChannels()`.

---

### getMaxChannels()
```
getMaxChannels() -> number
```
Returns the maximum number of channels of the Ender Cell set in the Powah config file.

---

### setChannel()
```
setChannel(channel: number) -> void
```
Sets the channel of the Ender cell to `channel`. `channel` must be a number between 1 to `getMaxChannels()`. Does not change the channel if `channel` is invalid.

---


## Changelog/Trivia

**1.19.2-0.X.XX.X**  
Added integration for Powah's Ender Cell
