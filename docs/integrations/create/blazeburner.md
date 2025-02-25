---
comments: true
---

# Blaze Burner

!!! success "Available in all versions"

!!! picture inline end
    ![!Image of the Blaze Burner block](../img/previews/blaze_burner.png){ align=right }

A Blaze Burner uses different fuel types to heat up things above it like basins and fluid tanks.

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with    | Has events | Introduced in |
| --------------- | ------------------ | ---------- | ------------- |
| blazeBurner     | Blaze Burner block | No         | 0.7.16        |

</center>

---

## Functions

### getInfo
```
getInfo() -> table
```
Returns a table with information about the Blaze Burner.

#### Properties

| info                        | Description                                       |
| --------------------------- | ------------------------------------------------- |
| fuelType: `string`          | The type of fuel in the burner                    |
| heatLevel: `string`         | The blaze burner heat level                       |
| remainingBurnTime: `number` | The amount of burn time left for the current fuel |
| isCreative: `boolean`       | If the burner is using creative fuel              |

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
