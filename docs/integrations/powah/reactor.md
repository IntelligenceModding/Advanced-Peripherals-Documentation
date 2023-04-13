# Reactor

!!! danger "Only available in version 1.19.2"

The Reactor is a block from Powah to generate power from uraninite.

!!! warning "Requirement"
    Requires the [Powah](https://www.curseforge.com/minecraft/mc-mods/powah-rearchitected) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name   | Interfaces with                                | Has events | Introduced in |
| ----------------- | ---------------------------------------------- | ---------- | ------------- |
| uraniniteReactor  | Every reactor multiblock structure (all tiers) | No         | N/A           |

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
Returns the maximum quantity of storable energy inside the Reactor.

---

### getMaxEnergy
```
getMaxEnergy() -> number
```
Returns the maximum quantity of storable energy inside the Reactor.

---

### isRunning
```
isRunning() -> boolean
```
Returns true if the Reactor is currently running.

---

### getFuel
```
getFuel() -> number
```
Returns the stored quantity fuel in percentage.

---

### getCarbon
```
getCarbon() -> number
```
Returns the stored quantity of carbon in percentage.

---

### getRedstone
```
getRedstone() -> number
```
Returns the stored quantity of redstone in percentage.

---

### getTemperature
```
getTemperature() -> number
```
Returns the current temperature of the Reactor.

---

### getInventoryUraninite
```
getInventoryUraninite() -> table
```
Returns a table containing the ItemStack infos of the item inside the uraninite slot of the Reactor.

---


### getInventoryRedstone
```
getInventoryRedstone() -> table
```
Returns a table containing the ItemStack infos of the item inside the redstone slot of the Reactor.

---


### getInventoryCarbon
```
getInventoryCarbon() -> table
```
Returns a table containing the ItemStack infos of the item inside the carbon slot of the Reactor.

---



## Changelog/Trivia

**N/A**  
Added integration for Powah
