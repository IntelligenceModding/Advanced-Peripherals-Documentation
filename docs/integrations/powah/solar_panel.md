# Solar Panel

!!! danger "Only available in version 1.19.2"

The Solar Panel is a block from Powah to generate power given direct exposure to the sky.

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                     | Has events | Introduced in |
| ----------------- | ----------------------------------- | ---------- | ------------- |
| solarPanel        | Every solar panel block (all tiers) | No         | N/A           |

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
Returns the quantity of stored energy inside the Solar Panel.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the Solar Panel.

---

### canSeeSky
```
canSeeSky() -> boolean
```
Returns true if the Solar Panel can directly see the sky without any block blocking inbetween.

---

## Changelog/Trivia

**1.19.2-0.7.26.r**  
Added integration for Powah