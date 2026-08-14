---
comments: true
---

# Filters

!!! success "Added in version 1.18.2-0.7.24r and 1.19.3-0.7.23b"

The tables which are added to one of our item/fluid transferring functions are called Item/Fluid Filters. The functions
use these to find the item you're looking for.
These can set the item, count, slots, tags, nbt or fingerprint values.

## Syntax

### Item/Fluid Name and Tag

The item's/fluid's filter name or tag can be specified with the `name` field.
The filter will also try to match items with the right nbt values specified in the `components`,
or `nbtHash` (see CC: T `nbt` attribute) field.

This can be a tag or a name. To filter for tags, place a `#` in front of the name.

```lua
{
    name = "minecraft:enchanted_book" -- Will just search for an enchanted book, nbt values are ginored
}
```

```lua
{
    name = "#c:ores/gold" -- Will search for the gold ore tag, nbt values are ignored
}
```

### Count

The item's/fluid's filter amount can be specified with the `count` field.
By default it will export unlimited amount.

```lua
{
    name = 'minecraft:cobblestone',
    count = 128000 -- Will try to export 128000 cobblestone to the target inventory. It will transfer less if there is not enough space in the target inventory or if there aren't enough items in the source inventory
}
```

### Data Components

The field needs to be a table or an [SNBT](https://minecraft.wiki/w/NBT_format#SNBT_format).

```lua
{
    name = 'minecraft:enchanted_book',
    -- Will search for an enchanted book with the blast protection enchantment level 2
    components = '{"minecraft:stored_enchantments": {levels: {"minecraft:blast_protection": 2}}}'
}
```

```lua
{
    name = "minecraft:enchanted_book" 
    -- Will search for an enchanted book with the aqua affinity enchantment level 1
    components = {
        ["minecraft:stored_enchantments"] = {
            levels = {
                ["minecraft:aqua_affinity"] = 1
            }
        }
    }
}
```

Other AP features also return a `components` key for items which you can directly use as a filter.

### NBT Hash

`nbtHash` is a field that provides compatibility with CC: T's `nbt` attribute.

```lua
{
    nbtHash = '' -- will export items without NBT when nbt hash is empty string
}
```

### Slots

!!! danger "Only available for item filters"

Slots can be specified with the `toSlot` or `fromSlot` field.
The inventory manager uses `103-100` for the armor slots helmet to boots and 36 for the offhand.

Storage systems like the rs or me bridge will ignore these fields if they are used to specify the slot of the system.
Like `toSlot` if you use it for `importItem`

If the slot can't be found or if the slot can't accept this item, the item will not be transferred.

```lua
{
    toSlot = 6, -- Tries to move the item to this slot of the target inventory
    fromSlot = 36, -- Tries to remove the item from the offhand
}
```
