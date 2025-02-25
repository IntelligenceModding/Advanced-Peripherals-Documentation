---
comments: true
---

# Basin

!!! success "Available in versions 1.18+"

!!! picture inline end
    ![!Image of the Basin block](../img/previews/basin.png){ align=right }

A Basin can hold items and fluids for many different crafting recipes. 

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| basin           | Basin block     | No         | 0.7.16        |

</center>

---

## Functions

### getInputFluids
```
getInputFluids() -> table
```
Returns a list of information about all of the fluids in the input tank of the Basin.

---

### getOutputFluids
```
getOutputFluids() -> table
```
Returns a list of information about all of the fluids in the output tank of the Basin.

---

### getFilter
```
getFilter() -> table
```
Returns the Basin's filter item.

---

### getInventory
```
getInventory() -> table
```
Returns a list of information about all of the items in the Basin.

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
