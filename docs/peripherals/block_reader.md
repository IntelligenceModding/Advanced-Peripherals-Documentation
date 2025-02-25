---
comments: true
---

# Block Reader

!!! picture inline end
    ![!Image of the Block Reader block](../img/previews/block_reader.png){ align=right }

This block is able to read data about any blocks or tile entities in front of it.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| blockReader     | Blocks          | No         | 0.7r          |

</center>

---

## Functions

### getBlockName
```
getBlockName() -> string
```

Returns the registry name of the block (ex. `minecraft:dirt`)

```lua linenums="1"
local reader = peripheral.find("blockReader")

print("There is a " .. read.getBlockName() .. " in front.")
```

---

### getBlockData
```
getBlockData() -> table | nil
```

Returns the block data of the block if block is a tile entity.

```lua linenums="1"
local reader = peripheral.find("blockReader")

--Prints the contents of the data
for k, v in ipairs(reader.getBlockData()) do 
    print(k, v)
end
```

---

!!! success "Added in version 1.19.2-0.7.33r | 1.20.1-0.7.37r"

### getBlockStates
```
getBlockStates() -> table | nil
```

Returns the properties of a block and its state

---

!!! success "Added in version 1.19.2-0.7.33r | 1.20.1-0.7.37r"

### isTileEntity
```
isTileEntity() -> boolean | nil
```

Returns true whether the block is a tile entity or not

## Changelog/Trivia

**1.19.2-0.7.33r/1.20.1-0.7.37r**
Added `getBlockStates` and `isTileEntity`

**0.7r**  
Added the Block Reader peripheral.
