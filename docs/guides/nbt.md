# NBT Data

When specifying [NBT Data](https://minecraft.fandom.com/wiki/NBT_format) for an Advanced Peripherals function there are 3 different ways that the data can be formatted:

## Hash
The item's NBT tags can be specified with a hash, using the `nbt` field.
If an item is already obtained, it's nbt hash can be viewed using the command `/advancedperipherals getHashItem`.


```lua
{
    name = "minecraft:enchanted_book",
    count = 1,
    nbt = "ae70053c97f877de546b0248b9ddf525"
}
```

---

## JSON
The NBT tags can also be specified with an SNBT string. It is a format similar to JSON.

```lua
{
    name = "minecraft:firework_rocket",
    count = 1,
    json = "{Fireworks:{Flight:1b}}"
}
```

You can convert tables into a SNBT json string using the `textutils` built-in.
```lua linenums="1"
local nbt = {Fireworks = {Flight = 1}}
-- The second argument must be 'true' to convert to SNBT
local snbt = textutils.serializeJSON(nbt, true)
```

---

## Raw
You can also specify the raw NBT tags as base64 encoded. This is not user friendly.  
The following specifies a flight duration 1 rocket:

```lua
{
    name = "minecraft:firework_rocket",
    count = 1,
    tag = "H4sIAAAAAAAAA+NiYOBi4HTLLEotzy/KLmZkYHPLyUzPKGFkYAAAp2hrGBsAAAA="
}
```

### Explanation
The encoded data is the following:

| Root tag | Name length (0) | Compound tag | Name length (9) | Name (Fireworks)           | Byte tag | Name length (6) | Name (Flight)     | Value (1) | Terminator | Terminator |
|----------|-----------------|--------------|-----------------|----------------------------|----------|-----------------|-------------------|-----------|------------|------------|
| 0A       | 00 00           | 0A           | 00 09           | 46 69 72 65 77 6F 72 6B 73 | 01       | 00 06           | 46 6C 69 67 68 74 | 01        | 00         | 00         |
