---
comments: true
---

# Mana Generating Flowers

!!! success "Available in all versions"

!!! picture inline end
    ![!Images of the Flower blocks](../img/previews/botania_flowers.gif){ align=right }

Mana generating flowers from botania can generate mana for other recipes or rituals.

!!! warning "Requirement"
    Requires the [Botania](https://www.curseforge.com/minecraft/mc-mods/botania) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| manaFlower      | Mana flowers    | No         | 0.6b          |

</center>

---

## Functions

### getMana
```
getMana() -> number
```
Returns the amount of mana stored in the flower.

---

### getMaxMana
```
getMaxMana() -> number
```
Returns the maximum amount of mana that the flower can hold.

---

### isFloating
```
isFloating() -> boolean
```
Returns true if the flower is a floating flower.

---

### isOnEnchantedSoil
```
isOnEnchantedSoil() -> boolean
```
Returns true if the flower is placed on enchanted soil.

---

!!! success "Available in versions >=1.20.1-0.7.39r"

### isEmpty
```
isEmpty() -> boolean
```
Returns true if the Flower is empty.

---

!!! success "Available in versions >=1.20.1-0.7.39r"

### isFull
```
isFull() -> boolean
```
Returns true if the Flower is full.

---

## Changelog/Trivia

**1.20.1-0.7.39r**
Ported Botania integration to 1.20.1    
Added `isFull()` and `isEmpty()`

**0.7.16**  
Ported Botania integration to 1.18

**0.6b**  
Added integration for Botania
