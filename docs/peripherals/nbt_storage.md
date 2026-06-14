---
comments: true
---

# NBT Storage

!!! picture inline end
    ![!Image of the NBT Storage block](../img/previews/nbt_storage.apng){ align=right }

NBT Storage is a custom block that allows reading and writing of NBT data to the block for later use.

<p class="picture-spacing" style="--ps:7.3rem;"></p>

---

<center markdown>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| nbt_storage     | NBT             | No         | 0.7r          |

</center>

---

## Functions

### load
```
load() -> table
```

Returns the NBT data stored in the block.

---

### save
```
save(data: string | table) -> boolean | nil, string
```

Writes NBT data into the block and returns true if the data is successfully written. Otherwise it returns nil and an error message.  
If the `data` is a string, it will be parsed as [SNBT format](https://minecraft.wiki/w/NBT_format#SNBT_format).

```lua linenums="1"
local storage = peripheral.find("nbt_storage")

storage.save({
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
