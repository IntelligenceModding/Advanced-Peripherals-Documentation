---
comments: true
---

# Block Reader

!!! picture inline end
    ![!Image of the Block Reader block](../img/previews/block_reader.apng){ align=right }

This block is able to read data about any blocks or tile entities in front of it.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| block_reader    | Blocks          | Yes        | 0.7r          |

</center>

---

## Events

### item_click
Fires when an item is used on the peripheral.  
**Values:**  
1. `peripheral_name: string` The block reader's name.  
2. `item: table` [ItemStack](../guides/lua_objects.md#item-stack) object.

```lua linenums="1"
local event, peripheral_name, item = os.pullEvent("item_click")
print("Item " .. item.name .. " is being used on " .. peripheral)
```

---

## Functions

### getBlockName
```
getBlockName() -> string | nil
```

Returns the registry name of the block (ex. `minecraft:dirt`), or `nil` if nothing is in front of the reader.

```lua linenums="1"
local reader = peripheral.find("block_reader")

print("There is a " .. read.getBlockName() .. " in front.")
```

---

### getBlockState
```
getBlockState() -> table | nil
```

Returns the block state of the block, or `nil` if nothing is in front of the reader.

```lua linenums="1"
local reader = peripheral.find("block_reader")

for k, v in pairs(reader.getBlockState()) do 
    print(k, v)
end
```

---

### getBlockData
```
getBlockData() -> table | nil
```

Returns the block data of the block if block is a tile entity.

```lua linenums="1"
local reader = peripheral.find("block_reader")

--Prints the contents of the data
for k, v in pairs(reader.getBlockData()) do 
    print(k, v)
end
```

---

!!! success "Added in version 1.19.2-0.7.33r | 1.20.1-0.7.37r"

### hasBlockEntity
```
hasBlockEntity() -> boolean | nil
```

Returns whether the block is a block entity or not

---

## Changelog/Trivia

**1.19.2-0.7.33r/1.20.1-0.7.37r**
Added `getBlockStates` and `isTileEntity`

**0.7r**  
Added the Block Reader peripheral.
