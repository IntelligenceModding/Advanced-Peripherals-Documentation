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

<center markdown>

| Peripheral Name | Interfaces with  | Has events | Introduced in |
| --------------- | ---------------- | ---------- | ------------- |
| fluid_tank      | Fluid Tank block | No         | 0.7.16        |

</center>

---

## Functions

### info
```
info() -> table
```
Returns a table with information about the Fluid Tank.

#### Properties

| info                | Description                                   |
| ------------------- | --------------------------------------------- |
| size: `number`      | The size of the tank                          |
| capacity: `number`  | The maximum amount of fluid the tank can hold |
| fluid: `table`      | The [Fluid Stack](../../guides/lua_objects.md#fluid-stack) in the tank |
| boiler: `table`     | Boiler information                            |

---

## Changelog/Trivia

**0.7.16**  
Added Create integration
