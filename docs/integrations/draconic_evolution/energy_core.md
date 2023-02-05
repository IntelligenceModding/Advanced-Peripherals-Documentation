<h4><a href="../">Go Back</a></h4>

# Draconic Energy Core

!!! danger "Only available in versions =>1.16-0.7.4r, <1.16-0.7.7r"

!!! picture inline end
    ![Image of the Energy Pylon block](){ align=right }

The Draconic Energy Core is a multiblock structure which can store massive amounts of energy.

!!! warning "Requirement"
    Requires the [Draconic Evolution](https://www.curseforge.com/minecraft/mc-mods/draconic-evolution) mod to be installed

<!-- <p class="picture-spacing" style="--ps:1.9rem;"></p> -->

## Functions

### getEnergyStored
```
getEnergyStored() -> number
```
Returns the amount of energy stored in the energy core in FE.

---

### getMaxEnergyStored
```
getMaxEnergyStored() -> number
```
Returns the maximum amount of energy that the energy core can hold in FE.

---

### getTransferPerTick
```
getTransferPerTick() -> number
```
Returns the amount of energy being transferred in/out of the core per tick in FE.

---

### getTier
```
getTier() -> number
```
Returns the energy core's tier. A number from 1 to 8.

---

## Changelog/Trivia

**0.7.4r**  
Added Draconic Evolution integration
