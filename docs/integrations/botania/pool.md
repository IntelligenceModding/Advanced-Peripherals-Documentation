# Mana Pool

!!! success "Available in all versions"

!!! picture inline end
    ![!Image of the Mana Pool block](/../assets/images/previews/mana_pool.png){ align=right }

Mana Pools are used to store mana. They are also used to craft items.

!!! warning "Requirement"
    Requires the [Botania](https://www.curseforge.com/minecraft/mc-mods/botania) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| manaPool        | Mana Pool block | No         | 0.6b          |

</center>

---

## Functions

### getMana
```
getMana() -> number
```
Returns the amount of mana stored in the pool.

---

### getMaxMana
```
getMaxMana() -> number
```
Returns the maximum amount of mana that the pool can hold.

---

### getManaNeeded
```
getManaNeeded() -> number
```

!!! success "Added in version 0.7.4r"

Returns the amount of mana needed to fill the pool. Equivalent to `getMaxMana() - getMana()`.

---

### isEmpty
```
isEmpty() -> boolean
```
Returns true if the Mana Pool is empty.

---

### isFull
```
isFull() -> boolean
```
Returns true if the Mana Pool is full.

---

## Changelog/Trivia

**0.7.16**  
Ported Botania integration to 1.18

**0.7.4r**  
Added `getManaNeeded` to the Mana Pool integration

**0.6b**  
Added integration for Botania
