# Block Reader

!!! picture inline end
    ![!Image of the Block Reader block](/../assets/images/previews/block_reader.png){ align=right }

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

## Changelog/Trivia

**0.7r**  
Added the Block Reader peripheral.
