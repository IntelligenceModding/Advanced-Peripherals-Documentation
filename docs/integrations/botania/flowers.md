# Mana Generating Flowers

!!! success "Available in all versions"

!!! picture inline end
    ![!Images of the Flower blocks](/../assets/images/previews/botania_flowers.gif){ align=right }

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

## Changelog/Trivia

**0.7.16**  
Ported Botania integration to 1.18

**0.6b**  
Added integration for Botania
