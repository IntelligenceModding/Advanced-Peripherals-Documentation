---
comments: true
---

# Smart Chestplate

!!! picture inline end
    ![!Image of the Smart Chestplate item](../img/previews/smart_chest.png){ align=right }

The Smart Chestplate is an advanced chestplate that have give wearer extra programmable arms.

The functions below exists in `smartglasses` API, which require a [Smart Glasses](./smart_glasses.md) to operate.

---

## Functions

### pingSmartChest
```
pingSmartChest() -> (false, string) | (true, number)
```

check if a Smart Chestplate is equipped, and returns available Smart Hands count.

---

### smartChestList
```
smartChestList() -> table | (nil, string)
```

lists Smart Chestplate inventory.

---

### smartChestImportItem
```
smartChestImportItem(filter: table | nil) -> int | (nil, string)
```

import an item from owner's inventory into Smart Chestplate.

---

### smartChestExportItem
```
smartChestExportItem(filter: table | nil) -> int | (nil, string)
```

export an item to owner's inventory from Smart Chestplate.

---

### wrapSmartHand
```
wrapSmartHand(index: number) -> table
```

wrap a Smart Hand on Smart Chestplate.

`index` should be in range of `[1, <handsCount>]`.
If index excessed the range, it will not throw an error immediately, but may fail on later operations.

#### hand.getIndex
```
getIndex() -> number
```

get the Smart Hand's index.

#### hand.getItem
```
getItem() -> table | nil
```

returns the Smart Hand's currently holding item.

#### hand.importItem
```
importItem(filter: table) -> number | (nil, string)
```

import an item from owner's inventory into the Smart Hand.

#### hand.exportItem
```
exportItem(filter: table) -> number | (nil, string)
```

export an item to owner's inventory from the Smart Hand.

#### hand.getPos
```
getPos() -> number, number, number, number, number
```

returns the Smart Hand's current position relative to Smart Glasses.  
values are `x`, `y`, `z`, `pitch`, `yaw`

#### hand.setPos
```
setPos(x: number, y: number, z: number) -> true | (false, string)
setPos(pos: table) -> true | (false, string)
```

move the Smart Hand's to target position relative to Smart Glasses.  

`pos`:
```lua
{
    x = number,
    y = number,
    z = number,
    pitch = number,
    yaw = number,
}
```

#### hand.suck
```
suck(count: number | nil, filter: string | nil) -> number | (nil, string)
```

collect items around the Smart Hand.

#### hand.drop
```
drop(count: number | nil) -> number | (nil, string)
```

drop items from the Smart Hand.

#### hand.attack
```
attack(options: table | nil) -> true | (nil, string)
```

let Smart Hand perform attack action.

`options`:
```lua
{
    sneak = boolean, -- attack with sneaking flag
    ground = boolean, -- simulate attack on ground, required for some weapons special ability (e.g. sweeping edge)
}
```

#### hand.dig
```
dig(options: table | nil) -> true | (nil, string)
```

let Smart Hand perform dig action.

`options`:
```lua
{
    sneak = boolean, -- dig with sneaking flag
}
```

#### hand.use
```
use(options: table | nil) -> true | (nil, string)
```

let Smart Hand perform use action.

`options`:
```lua
{
    sneak = boolean, -- use with sneaking flag
}
```

---

## Changelog/Trivia

**0.8**  
Added Smart Chest
