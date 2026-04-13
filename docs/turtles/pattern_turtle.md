# Pattern Grid Turtle

!!! picture inline end
![!Image of the Pattern Grid Turtle](../img/previews/chunky_turtle.png){ align=right }

The Pattern Grid turtle allows you to inspect and craft Refined Storage patterns.

<p class="picture-spacing" style="--ps:6.3rem;"></p>

---

## Functions

---

### getDetails
```
getDetails([, slot: number]) -> table | false, string
```

Gets information about a pattern in a given slot, or the currently selected slot if none is provided.

Returns information about the pattern in the same structure as is returned by [getPatterns](/../guides/storage_system_functions#getPatterns), including the pattern's input items and outputs.

---

### buildCrafting
```
buildCrafting(recipe: table[, fuzzy: boolean]) -> table | false, string
```

Writes a crafting recipe to the pattern item in the selected slot. 

The input structure is a Lua array, where the keys represent slot number (1-9) in the crafting grid, and the values are item names as strings. For example, the recipe for a stone pickaxe:
```
{
    [1] = "minecraft:cobblestone",
    [2] = "minecraft:cobblestone",
    [3] = "minecraft:cobblestone",
    [5] = "minecraft:stick",
    [8] = "minecraft:stick",
}
```
Optionally, a boolean can be passed to enable *fuzzy mode* for the pattern.

Returns the output of getDetails() on the newly built pattern, or *false* and the error as a string.

---

### buildProcessing
```
buildProcessing(recipe: table) -> table | false, string
```

Writes a processing recipe to the pattern item in the selected slot.

The input structure is a Lua table containing two arrays, one for *inputs* and the other for *outputs*. The basic format for an input/output resource is a table with its resource *name* as a string and an integer *count*; inputs can optionally include an array of *alts*, or alternate tags to match against. Item resources are counted as individual items, while fluid resources are counted in milliBuckets.
```
{
     inputs = {
         [1] = { name = "<item>", count = <int> },
         [2] = { name = "<item>", alts = { [1] = "<tag>", ... }, count = <int> },
         ...
     },
     outputs = {
         [1] = { name = "<item>", count = <int> },
         ...
     }
}
```

Returns the output of getDetails() on the newly built pattern, or *false* and the error as a string.

---

### Errors

| Error                    | Description                                                                        |
|--------------------------|------------------------------------------------------------------------------------|
| `No room in destination` | The turtle is full, and cannot put the built pattern in its inventory.             |
| `Bad recipe`             | The pattern didn't build; usually, this means your recipe is unknown to Minecraft. |
| `No pattern available`   | Your turtle doesn't have any patterns to write to.                                 
| `Not a pattern`          | You're trying to read a recipe from something that isn't a pattern.                |
|`Pattern is empty`| This pattern is blank.                                                             |
|`Couldn't parse item or fluid x`| You provided a resource name that Minecraft didn't recognize.                      |
|`Couldn't parse item in slot n`| The given slot has an unknown resource in it.                                      |
|`Recipe is malformed`| Your processing recipe is broken; did you structure the recipe table correctly?    |
|`Pattern couldn't be built`| Refined Storage wouldn't build the pattern; something is wrong.                    |


---

## Changelog/Trivia

**0.7.7r**  
Added the Pattern Grid Turtle
