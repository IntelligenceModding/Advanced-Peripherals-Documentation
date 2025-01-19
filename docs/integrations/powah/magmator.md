---
comments: true
---

# Magmator

!!! danger "Only available in version 1.19.2"


The Magmator is a block from Powah to generate power from a fluid heat source (lava)

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                     | Has events | Introduced in |
| ----------------- | ----------------------------------- | ---------- | ------------- |
| magmator          | Every magmator block (all tiers)    | No         | N/A           |

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
Returns the quantity of stored energy inside the Magmator.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the Magmator.

---

### isBurning
```
isBurning() -> boolean
```
Returns true if the Magmator is currently burning (generating energy from the fluid heat source).

---

### getTankCapacity
```
getTankCapacity() -> number
```
Returns the overall capacity of the Magmator tank.

---

### getFluidInTank
```
getFluidInTank() -> number
```
Returns the stored volume (mb) of fluid inside the Magmator tank.

---

## Changelog/Trivia

**1.19.2-0.7.26.r**  
Added integration for Powah
