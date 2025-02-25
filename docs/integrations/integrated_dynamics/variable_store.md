---
comments: true
---

# Variable Store

!!! danger "Only available in version 1.16"

!!! picture inline end
    ![!Image of the Variable Store block](../img/previews/variable_store.png){ align=right }

The Variable Store is a block from Integrated Dynamics that can store variables for future use.

!!! warning "Requirement"
    Requires the [Integrated Dynamics](https://www.curseforge.com/minecraft/mc-mods/integrated-dynamics) mod to be installed

<p class="picture-spacing" style="--ps:1.9rem;"></p>

---

<center>

| Peripheral Name | Interfaces with      | Has events | Introduced in |
| --------------- | -------------------- | ---------- | ------------- |
| variableStore   | Variable Store block | No         | 0.7r          |

</center>

---

## Functions

### list
```
list() -> table
```
Returns a list of information about all of the variables stored inside the Variable Store block.

#### Properties

| variable           | Description                     |
| ------------------ | ------------------------------- |
| id: `string`       | The variable's id               |
| label: `string`    | The label name for the variable |
| type: `string`     | The type of the variable        |
| dynamic: `boolean` | If the variable is dynamic      |

---

### read
```
read(slot: number) -> table | nil, string
```
Returns a table containing information about the variable at the given `slot`. Or nil and an error message.

#### Properties

| variable           | Description                                |
| ------------------ | ------------------------------------------ |
| id: `string`       | The variable's id                          |
| label: `string`    | The label name for the variable            |
| type: `string`     | The type of the variable                   |
| value: `string`    | The NBT representation of the stored value |
| dynamic: `boolean` | If the variable is dynamic                 |

---

## Changelog/Trivia

**0.7r**  
Added integration for Integrated Dynamics
