---
comments: true
---

# End Automata

!!! picture inline end
    ![!Image of the Husbandry Automata Upgrade](../img/previews/end_automata.png){ align=right }

End automata is a turtle with an End Mechanic Soul upgrade. This upgrade has all of the abilities of a [Weak Automata](./weak_automata.md) plus its own additional abilites:  
• Teleport between saved locations  
• Save a location as a warp point

<p class="picture-spacing" style="--ps:3.7rem;"></p>

---

<center>

| Peripheral Name | Interfaces with | Has events | Introduced in |
| --------------- | --------------- | ---------- | ------------- |
| endAutomata     | World           | No         | 0.7r          |

</center>

---

## How to craft

To create an end soul, you need to feed 10 endermans via the [feedSoul](weak_automata.md#feedsoul) function to a weak automata core.
The core needs to be placed inside the turtle into the current active slot(Usually the first one).

The turtle needs 10 endermans in total:

| Mob      | Amount |
|----------|--------|
| Enderman | 10     |

Step by Step:

- Create a weak automata turtle(A normal turtle with a weak automata core as upgrade)
- Place another weak automata core in the current active slot of the turtle
- run `weakAutomata#feedSoul()` for every enderman while the enderman is in front of the turtle

Example
```lua
core = peripheral.find("weak_automata")

successful, message = core.feedSoul()
print(successful)
print(message)
```

---

## Functions

### points
```
points() -> table | nil, string
```
Returns a list of all saved points and their names

---

### savePoint
```
savePoint(name: string) -> true | nil, string
```
This saves the turtle's current location as a warp point with the given `name` which can be teleported to at a future point in time.  
Returns true if the location is successfully saved, or nil and an error message.

---

### distanceToPoint
```
distanceToPoint(name: string) -> number | nil, string
```
Returns the distance from the turtle's current location to the location of the point using the [Manhattan distance formula](https://en.wikipedia.org/wiki/Taxicab_geometry). If the operation fails or the point does not exist then nil and an error message will be returned.

---

### getWarpCooldown
```
getWarpCooldown() -> number
```
Returns the current cooldown for warp operations.

---

### estimateWarpCost
```
estimateWarpCost(name: string) -> number | nil, string
```
Returns the fuel point cost to warp from the current location to the point with the given `name`. Or nil and an error message.

---

### warpToPoint
```
warpToPoint(name: string) -> true | nil, string
```
Teleports the turtle from the current location to the location of the point with the given `name`.  
Returns true if the turtle is successfully teleported or nil and an error message.

---

## Changelog/Trivia

**0.7r**  
Added the End Automata
