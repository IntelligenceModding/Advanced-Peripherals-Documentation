# Filters

!!! success "Added in version 1.18.2-0.7.24r and 1.19.3-0.7.23b"


The tables which are added to one of our item/fluid transferring functions are called Item/Fluid Filters. The functions use these to find the item you're looking for.
These can set the item, count, slots, tags, nbt or fingerprint values.

## Syntax

### Item/Fluid Name and Tag

The item's/fluid's filter name or tag can be specified with the `name` field.
If this field is not set, the filter will try to search for items with the right nbt values specified in the `nbt` field or fingerprints.

This can be a tag or a name. To filter for tags, place a `#` in front of the name.

```lua
{
    name = "minecraft:enchanted_book" -- Will just search for an enchanted book, nbt values are ginored
}
```
```lua
{
    name = "#forge:ores/gold" -- Will search for the gold ore tag, nbt values are ignored
}
```

### Amount

The item's/fluid's filter amout can be specified with the `count` field. 
Standard values are 64 or 1000 for fluids.

```lua
{
    name = "minecraft:cobblestone",
    count = 128000 -- Will try to export 128000 cobblestone to the target inventory. It will transfer less if there is not enough space in the target inventory or if there aren't enough items in the source inventory
}
```

### NBT Values

[NBT Values](https://minecraft.fandom.com/wiki/NBT_format) are specified with the `nbt` field. The field needs to be a string which contains a json which can be parsed to a nbt tag.

```lua
{
    name = "minecraft:enchanted_book" 
    nbt="{StoredEnchantments: [{lvl: 2s, id: \"minecraft:blast_protection\"}]}"} -- Will search for an enchanted book with the blast protection enchantment level 2
}
```

Any strings inside the nbt value needs to be prefixed with a \\ 

### Slots

!!! danger "Only available for item filters"


Slots can be specified with the `toSlot` or `fromSlot` field. 
The inventory manager uses `103-100` for the armor slots helmet to boots and 36 for the offhand.

Storage systems like the rs or me bridge will ignore these fields if they are used to specify the slot of the system. Like `toSlot` if you use it for `importItem`

If the slot can't be found or if the slot can't accept this item, the item will not be transferred.

```lua
{
    toSlot = 6, -- Tries to move the item to this slot of the target inventory
    fromSlot = 36, -- Tries to remove the item from the offhand
}
```

### Fingerprints

The `fingerprint` is a MD5 hash calculated of the nbt tag, the registry name and the display name.

This can be useful if you want to only filter for one very specific item. 
Also helpful if you don't want to copy the nbt tag for an item into the filter.

A `fingerprint` can be generated with the `/advancedperipherals getHashItem` command while holding the item in your main hand.

If the `fingerpring` field is specified, the `nbt` and `name` field will be ignored.

```lua
{
    fingerprint = "227FCCBE693942047DD04AA96F735F2E" -- The hash for a protection 4 enchanted book
    count = 5 -- Try to move 5 protection 4 books to the target inventory
}
```