---
comments: true
---

# NBT Storage

!!! picture inline end
    ![!Image of the NBT Storage block](../img/previews/nbt_storage.png){ align=right }

NBT Storage is a custom block that allows reading and writing of NBT data to the block for later use.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| nbtStorage      | NBT             | No         | 0.7r          |

</center>

---

## Functions

### read
```
read() -> table
```

Returns the NBT data stored in the block.

---

### writeJson
```
writeJson(json: string) -> boolean | nil, string
```

Writes the json as NBT data into the block and returns true if the json is valid and the data is successfully written. Otherwise it returns nil and an error message.

---

### writeTable
```
writeTable(nbt: table) -> boolean | nil, string
```

Writes NBT data into the block and returns true if the data is successfully written. Otherwise it returns nil and an error message.

```lua linenums="1"
local storage = peripheral.find("nbtStorage")

storage.writeTable({
    specialString = "A super special string"
})

local nbt = storage.read()
-- prints "A super special string"
print(nbt.specialString)
```

---

## Changelog/Trivia

**0.7r**  
Added NBT Storage block.
