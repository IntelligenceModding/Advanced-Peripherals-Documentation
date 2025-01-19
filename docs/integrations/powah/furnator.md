---
comments: true
---

# Furnator

!!! danger "Only available in version 1.19.2"

The Furnator is a block from Powah to generate power given a fuel source.

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                     | Has events | Introduced in |
| ----------------- | ----------------------------------- | ---------- | ------------- |
| furnator          | Every furnator block (all tiers)    | No         | N/A           |

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
Returns the quantity of stored energy inside the Furnator.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the Furnator.

---

### isBurning
```
isBurning() -> boolean
```
Returns true if the Furnator is currently burning (generating energy from a fuel source).

---

### getCarbon
```
getCarbon() -> number
```
Returns the percentage of stored carbon (fuel) inside the Furnator.

---

### getInventory
```
getInventory() -> table
```
Returns a table containing the ItemStack infos of the item inside the Furnator.

---

## Changelog/Trivia

**1.19.2-0.7.26.r**  
Added integration for Powah
