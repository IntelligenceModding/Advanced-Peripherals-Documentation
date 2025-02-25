---
comments: true
---

# Mana Spreader

!!! success "Available in all versions"

!!! picture inline end
    ![!Image of the Mana Spreader block](../img/previews/mana_spreader.png){ align=right }

Mana Spreaders are used to transfer mana from one source to another.

!!! warning "Requirement"
    Requires the [Botania](https://www.curseforge.com/minecraft/mc-mods/botania) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with     | Has events | Introduced in |
| --------------- | ------------------- | ---------- | ------------- |
| manaSpreader    | Mana Spreader block | No         | 0.6b          |

</center>

---

## Functions

### getMana
```
getMana() -> number
```
Returns the amount of mana stored in the spreader.

---

### getMaxMana
```
getMaxMana() -> number
```
Returns the maximum amount of mana that the spreader can hold.

---

### isEmpty
```
isEmpty() -> boolean
```
Returns true if the Mana Spreader is empty.

---

### isFull
```
isFull() -> boolean
```
Returns true if the Mana Spreader is full.

---

### getVariant
```
getVariant() -> string
```
Returns the variant of the Mana Spreader.

---

### getBounding
```
getBounding() -> table
```
Returns the coordinates of the Mana Spreader's target.

#### Properties

| table       | Description                                 |
| ----------- | ------------------------------------------- |
| x: `number` | The x coordinate                            |
| y: `number` | The y coordinate                            |
| z: `number` | The z coordinate                            |

---

!!! success "Available in versions >=1.20.1-0.7.39r"

### hasLens
```
hasLens() -> boolean
```
Returns true if the Spreader has a lens.

---

!!! success "Available in versions >=1.20.1-0.7.39r"

### getLens
```
getLens() -> table
```
Returns the current lens item as a table.

---

## Changelog/Trivia

**1.20.1-0.7.39r**  
Ported Botania integration to 1.20.1    
Added `getLens()` and `hasLens()`

**0.7.16**  
Ported Botania integration to 1.18

**0.6b**  
Added integration for Botania
