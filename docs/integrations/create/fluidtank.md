---
comments: true
---

# Fluid Tank

!!! success "Available in versions 1.18+"

!!! picture inline end
    ![!Image of the Fluid Tank block](../img/previews/fluid_tank.png){ align=right }

A Fluid Tank is a multiblock structure which can hold fluids. With each block being able to hold 8 buckets worth.

!!! warning "Requirement"
    Requires the [Create](https://www.curseforge.com/minecraft/mc-mods/create) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with  | Has events | Introduced in |
| --------------- | ---------------- | ---------- | ------------- |
| fluidTank       | Fluid Tank block | No         | 0.7.16        |

</center>

---

## Functions

### getInfo
```
getInfo() -> table
```
Returns a table with information about the Blaze Burner.

#### Properties

| info                | Description                                    |
| ------------------- | ---------------------------------------------- |
| capacity: `number`  | The maximum amount of fluid the tank can hold  |
| amount: `number`    | The amount of fluid in the tank                |
| fluid: `string`     | The registry name for the tank's current fluid |
| isBoiler: `boolean` | If the tank is part of a boiler                |

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
