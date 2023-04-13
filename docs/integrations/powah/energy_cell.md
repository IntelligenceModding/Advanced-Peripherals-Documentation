# Energy Cell

!!! danger "Only available in version 1.19.2"

The Energy Cell is a block from Powah to receive, store and send energy.

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                     | Has events | Introduced in |
| ----------------- | ----------------------------------- | ---------- | ------------- |
| energyCell        | Every energy cell block (all tiers) | No         | N/A           |

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


## Changelog/Trivia

**1.19.2-0.7.26.r**  
Added integration for Powah
