# Thermo Generator

!!! danger "Only available in version 1.19.2"


The Thermo Generator is block from Powah to generate power from an appropriate heat source block beneath it (magma block, lava)

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                          | Has events | Introduced in |
| ----------------- | ---------------------------------------- | ---------- | ------------- |
| thermo            | Every thermo generator block (all tiers) | No         | N/A           |

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
Returns the quantity of stored energy inside the Thermo Generator.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the Thermo Generator.

---

### getCoolantInTank
```
getCoolantInTank() -> number
```
Returns the stored quantity of coolant inside the Thermo Generator tank.

---

## Changelog/Trivia

**N/A**  
Added integration for Powah
